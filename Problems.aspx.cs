using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using Data;
using System.Collections.Generic;
using System.Threading;
using ProgrammingContest.Data;

public partial class Problems : System.Web.UI.Page
{
    private long _acceptId = -1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ContestID"] == null)
            Response.Redirect("Default.aspx");

        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
        _acceptId = pcdch.Result.GetByName("Accept").ID;

        if (Session["User"] == null)
        {
            string ip = Request.Params["REMOTE_ADDR"].ToString();
            User user = pcdch.Users.GetByIPAddress(ip);

            if (user != null)
            {
                if (pcdch.ContestPermission.GetByUserIdAndContestId(user.ID, Convert.ToInt64(Session["ContestID"].ToString())) == null)
                    user = null;
            }

            if (user == null)
                divSubmit.Visible = false;
            else
            {
                Session["User"] = user.Name.ToString();
                Session.Timeout = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["SESSION_TIMEOUT"]);
            }
        }
        else
        {
            User user = pcdch.Users.GetByName(Session["User"].ToString());

            if (pcdch.ContestPermission.GetByUserIdAndContestId(user.ID, Convert.ToInt64(Session["ContestID"].ToString())) == null)
            {
                user = null;
            }

            if (user == null)
            {
                Session["User"] = null;
                divSubmit.Visible = false;
            }
        }

        ContestSetting contestSetting = pcdch.ContestSetting.GetById(Convert.ToInt64(Session["ContestID"].ToString()));
        DateTime nowDateTime = DateTime.Now;

        if (contestSetting.IsPrivate == true)
        {
            if (Session["User"] == null)
                Response.Redirect("Rank.aspx");
        }

        if (nowDateTime >= contestSetting.StartTime && nowDateTime <= contestSetting.EndTime)
        { }
        else
            divSubmit.Visible = false;

        if (nowDateTime < contestSetting.StartTime)
            Response.Redirect("Rank.aspx");

        rptProblems.DataSource = pcdch.Problems.GetByContestId(Convert.ToInt64(Session["ContestID"].ToString()));
        rptProblems.DataBind();

        string problem = "";
        try
        {
            problem = Request.QueryString["problem"].Replace("'", string.Empty).Replace("\"", string.Empty);
        }
        catch (Exception)
        {
            problem = "";
        }

        long problemId = 0;

        if (problem != "")
            problemId = Convert.ToInt64(problem);
        else
        {
            if (pcdch.Problems.GetByContestId(Convert.ToInt64(Session["ContestID"].ToString())).Count != 0)
                problemId = pcdch.Problems.GetByContestId(Convert.ToInt64(Session["ContestID"].ToString()))[0].ID;
            else
                Response.Redirect("Rank.aspx");
        }

        LoadProblem(problemId, pcdch);

        if (Session["User"] != null)
        {
            long userId = pcdch.Users.GetByName(Session["User"].ToString()).ID;

            rptResults.DataSource = pcdch.Solution.GetByProblemIdAndUserId(problemId, userId);
            rptResults.DataBind();
            ltlUpper.Text = "Welcome " + Session["User"].ToString() + "<br/>";
            Ranks rank = GetYourRank(Session["User"].ToString(), pcdch);
            ltlUpper.Text += "Your rank : " + rank.Position + " and you solved : " + rank.Solved + " problem(s)<br />";
        }
        else
            ltlUpper.Text = "Welcome Guest" + "<br/>";
    }

    private Ranks GetYourRank(string userName, ProgrammingContestDataContextHandler pcdch)
    {
        long contestId = Convert.ToInt64(Session["ContestID"]);
        List<User> users = pcdch.Users.GetAll();
        List<Ranks> ranks = new List<Ranks>();
        long i = 1;
        long acceptId = pcdch.Result.GetByName("Accept").ID;
        long notTry = pcdch.Result.GetByName("Not Try").ID;

        foreach (User u in users)
            if (pcdch.ContestPermission.GetByUserIdAndContestId(u.ID, contestId) != null)
            {
                Ranks rank = new Ranks();
                rank.Name = u.Name;
                rank.Position = i;
                i++;
                rank.Solved = 0;
                List<Problem> pro1 = pcdch.Problems.GetByContestId(Convert.ToInt64(Session["ContestID"]));
                List<ProblemTry> ppp1 = new List<ProblemTry>();
                foreach (Problem p1 in pro1)
                {
                    ProblemTry pblm = new ProblemTry();
                    pblm.Name = p1.PNumber;
                    List<Solution> so = pcdch.Solution.GetByProblemIdAndUserId(p1.ID, u.ID);
                    pblm.NumberOfSubmission = 0;
                    pblm.ResultId = notTry;
                    if (so.Count != 0)
                    {
                        pblm.NumberOfSubmission = so.Count;
                        foreach (Solution s in so)
                        {
                            if (s.ResultId == acceptId)
                            {
                                if (pblm.ResultId != acceptId)
                                {
                                    pblm.ResultId = s.ResultId;
                                    if (rank.Solved == 0)
                                        rank.LastTimeOfAc = s.time;
                                    else if (rank.LastTimeOfAc < s.time)
                                        rank.LastTimeOfAc = s.time;
                                    rank.Solved++;
                                }
                            }
                            else if (pblm.ResultId != acceptId)
                            {
                                pblm.ResultId = s.ResultId;
                            }
                        }
                    }
                    ppp1.Add(pblm);
                }
                rank.Problem = ppp1;
                ranks.Add(rank);
            }

        Sort st = new Sort();

        ranks = st.RanksSort(ranks);

        foreach (Ranks ra21 in ranks)
            if (ra21.Name == userName)
            {
                return ra21;
            }

        return null;
    }

    private void LoadProblem(long id, ProgrammingContestDataContextHandler pcdch)
    {
        Problem pr = pcdch.Problems.GetById(id);
        ltlProblemTitle.Text = "Problem " + pr.PNumber + "<br/>" + pr.PName + "<br/>" + "Time Limit: " + pr.Time + " sec<br />";
        ltlProblemStatement.Text = pr.Statement;
        ViewState["ProblemId"] = id.ToString();
    }

    protected void rptProblems_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Problem ps = e.Item.DataItem as Problem;

            Literal name = e.Item.FindControl("ltlProblemName") as Literal;
            name.Text = ps.PName;

            HtmlAnchor ha = e.Item.FindControl("aProblem") as HtmlAnchor;
            ha.HRef = "Problems.aspx?problem=" + ps.ID.ToString();

            if (Session["User"] != null)
            {
                List<Solution> sols = ps.Solutions.Where(param => param.User.Name == Session["User"].ToString()).ToList<Solution>();

                bool solved = false;

                foreach (Solution s in sols)
                    if (s.ResultId == _acceptId)
                    {
                        solved = true;
                        break;
                    }
                Literal status = e.Item.FindControl("ltlYourStatus") as Literal;
                if (solved == true)
                    status.Text = "Solved";
                else
                    status.Text = "Not Solved";
            }
        }
    }

    protected void rptResults_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Solution sol = e.Item.DataItem as Solution;

            Literal result = e.Item.FindControl("ltlResult") as Literal;
            result.Text = sol.Result.Name + "<br/>";
            result.Text += sol.time.ToString("hh:mmm:ss") + "<br/>";
            result.Text += "RunTime : " + sol.RequireTime.ToString();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
        ContestSetting contestSetting = pcdch.ContestSetting.GetById(Convert.ToInt64(Session["ContestID"].ToString()));
        DateTime nowDateTime = DateTime.Now;

        if (nowDateTime >= contestSetting.StartTime && nowDateTime <= contestSetting.EndTime)
        {
            if (fuSubmit.FileName.ToLower().EndsWith(".exe"))
            {
                Solution solution = new Solution();
                solution.FileName = fuSubmit.FileName;
                solution.ContestId = Convert.ToInt64(Session["ContestID"].ToString());
                solution.Problem = pcdch.Problems.GetById(Convert.ToInt64(ViewState["ProblemId"].ToString()));
                solution.ProblemId = Convert.ToInt64(ViewState["ProblemId"].ToString());
                solution.time = DateTime.Now;
                solution.User = pcdch.Users.GetByName(Session["User"].ToString());
                solution.UserId = pcdch.Users.GetByName(Session["User"].ToString()).ID;
                solution.Result = pcdch.Result.GetByName("Pending");
                solution.ResultId = pcdch.Result.GetByName("Pending").ID;

                pcdch.ProgrammingContestDatabase.Solutions.InsertOnSubmit(solution);
                pcdch.ProgrammingContestDatabase.SubmitChanges();

                string path = Server.MapPath("Solution");
                path += "\\" + solution.UserId.ToString();
                DirectoryInfo df = new DirectoryInfo(path);

                if (!df.Exists)
                    df.Create();

                path += "\\" + solution.ProblemId.ToString();

                df = new DirectoryInfo(path);

                if (!df.Exists)
                    df.Create();

                path += "\\" + solution.ID.ToString();

                df = new DirectoryInfo(path);

                if (!df.Exists)
                    df.Create();

                string codePath = path + "\\" + fuCode.FileName;
                path += "\\" + solution.FileName;
                FileInfo fi = new FileInfo(path);

                if (fi.Exists)
                    fi.Delete();
                fuSubmit.SaveAs(path);
                fuCode.SaveAs(codePath);

                solution.SolutionFileName = "Solution" + "/" + solution.UserId.ToString() + "/" + solution.ProblemId.ToString() + "/" + solution.ID.ToString() + "/" + fuCode.FileName;
                pcdch.ProgrammingContestDatabase.SubmitChanges();

                Problem prob = pcdch.Problems.GetById(solution.ProblemId);

                string inputJudgeFile = Server.MapPath("JudgeSolution");
                inputJudgeFile += "\\" + prob.ID.ToString() + "\\" + prob.InputFile;
                FileInfo rrr1 = new FileInfo(inputJudgeFile);

                if (rrr1.Exists)
                {
                    fi = new FileInfo(path);
                    string contestInputFile = fi.DirectoryName + "\\" + prob.InputFile;
                    rrr1.CopyTo(contestInputFile, true);
                    string contestOutputFile = fi.DirectoryName + "\\" + prob.OutputFile;

                    string outputJudgeFile = Server.MapPath("JudgeSolution");
                    outputJudgeFile += "\\" + prob.ID.ToString() + "\\" + prob.OutputFile;

                    rrr1 = new FileInfo(outputJudgeFile);

                    if (rrr1.Exists)
                    {
                        Judgement judge = new Judgement(path, contestOutputFile, contestInputFile, outputJudgeFile, solution.ID, prob.ID);

                        JudgeManager.Instance.AddSolution(judge);
                        //Thread thread = new Thread(judge.GoToJudgement);
                        //thread.Start();

                    }
                }

                Response.Redirect(HttpContext.Current.Request.Url.ToString());
            }
            else
                ltlErrorMessage.Text = "*You have to select an exe file.";
        }
        else
            Response.Redirect("Rank.aspx");
    }
}

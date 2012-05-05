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
using Data;
using System.Collections.Generic;
using ProgrammingContest.Data;

public partial class Rank : System.Web.UI.Page
{
    private long _acceptId = -1;
    private List<Result> _allResult = new List<Result>();
    private Boolean _isCodePublished = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ContestID"] == null)
            Response.Redirect("Default.aspx");
        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
        List<Problem> problem = pcdch.Problems.GetByContestId(Convert.ToInt64(Session["ContestID"]));

        ContestSetting cs = pcdch.ContestSetting.GetById(Convert.ToInt64(Session["ContestID"]));

        if (DateTime.Now > cs.EndTime)
        {
            _isCodePublished = true;
        }
        else
            _isCodePublished = false;

        _acceptId = pcdch.Result.GetByName("Accept").ID;
        _allResult = pcdch.Result.GetAll();

        ltlProblemName.Text = "<td style=\"width:150px\"></td>";

        foreach (Problem p in problem)
        {
            ltlProblemName.Text += "<td style=\"width:150px\">" + p.PNumber + "</td>";
        }

        ltlProblemName.Text += "<td style=\"width:150px\">Total Solved</td>";

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
                                    pblm.RequireTime = s.RequireTime;

                                    if (s.SolutionFileName != null)
                                        pblm.SourceFilePath = s.SolutionFileName;

                                    if (rank.Solved == 0)
                                        rank.LastTimeOfAc = s.time;
                                    else if (rank.LastTimeOfAc < s.time)
                                        rank.LastTimeOfAc = s.time;
                                    rank.Solved++;
                                }
                                else if (s.SolutionFileName != null)
                                    pblm.SourceFilePath = s.SolutionFileName;
                            }
                            else if (pblm.ResultId != acceptId)
                            {
                                if (s.SolutionFileName != null)
                                    pblm.SourceFilePath = s.SolutionFileName;
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

        rptProblems.DataSource = st.RanksSort(ranks);
        rptProblems.DataBind();
    }

    protected void rptProblems_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Ranks rs = e.Item.DataItem as Ranks;

            Literal name = e.Item.FindControl("ltluser") as Literal;
            name.Text = "<td style=\"width:150px\">" + rs.Position.ToString() + ". " + rs.Name + "</td>";

            foreach (ProblemTry po in rs.Problem)
            {
                name.Text += "<td style=\"width:150px\">" + _allResult.Where(param => param.ID == po.ResultId).FirstOrDefault().Name + " (" + po.NumberOfSubmission + ")";

                if (po.ResultId == _acceptId)
                    name.Text += " (" + po.RequireTime + ")";

                if (_isCodePublished == true && po.SourceFilePath != null && po.SourceFilePath != "")
                {
                    name.Text += "<a href='" + po.SourceFilePath + "'>Code<a>";
                }

                name.Text += "</td>";
            }

            name.Text += "<td style=\"width:150px\">" + rs.Solved.ToString() + "</td>";
        }
    }
}

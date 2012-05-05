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
using System.IO;
using System.Threading;
using ProgrammingContest.Data;

public partial class Admin_JudgeStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
            Response.Redirect("Default.aspx");
        if (Session["Admin"].ToString() != "Yes")
            Response.Redirect("Default.aspx");
        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();

        rptSolutions.DataSource = pcdch.Solution.GetAll();
        rptSolutions.DataBind();
    }

    protected void btnJudge_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "ReJudge") ReJudge(Convert.ToInt64(e.CommandArgument));
        else if (e.CommandName == "Show") Show(Convert.ToInt64(e.CommandArgument));
        else if (e.CommandName == "Cancle") mvStatus.ActiveViewIndex = 0;
    }

    private void ReJudge(long id)
    {
        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
        Solution solution = pcdch.Solution.GetById(id);
        solution.Result = pcdch.Result.GetByName("Pending");
        solution.ResultId = pcdch.Result.GetByName("Pending").ID;

        string rejudge = "";
        string path = Server.MapPath("../Solution");
        path += "\\" + solution.UserId.ToString();
        path += "\\" + solution.ProblemId.ToString();
        path += "\\" + solution.ID.ToString();
        rejudge = path;
        path += "\\" + solution.FileName;

        Problem prob = pcdch.Problems.GetById(solution.ProblemId);

        string inputJudgeFile = Server.MapPath("../JudgeSolution");
        inputJudgeFile += "\\" + prob.ID.ToString() + "\\" + prob.InputFile;
        FileInfo rrr1 = new FileInfo(inputJudgeFile);

        pcdch.ProgrammingContestDatabase.SubmitChanges();

        if (rrr1.Exists)
        {
            FileInfo fi = new FileInfo(path);
            string contestInputFile = rejudge + "\\" + prob.InputFile;
            rrr1.CopyTo(contestInputFile, true);
            string contestOutputFile = rejudge + "\\" + prob.OutputFile;

            string outputJudgeFile = Server.MapPath("../JudgeSolution");
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

    private void Show(long id)
    {
        listbJudge.Items.Clear();
        listbSolver.Items.Clear();
        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
        Solution sol = pcdch.Solution.GetById(id);
        Problem pro = pcdch.Problems.GetById(sol.ProblemId);

        string path = Server.MapPath("../Solution");
        path += "\\" + sol.UserId.ToString();
        path += "\\" + sol.ProblemId.ToString();
        path += "\\" + sol.ID.ToString();
        path += "\\" + pro.OutputFile;

        string outputJudgeFile = Server.MapPath("../JudgeSolution");
        outputJudgeFile += "\\" + pro.ID.ToString() + "\\" + pro.OutputFile;

        if (pro.Output == null || pro.Output == "")
        {
            FileInfo fiRead = new FileInfo(outputJudgeFile);
            string input = "";

            if (fiRead.Exists)
                input = File.ReadAllText(outputJudgeFile);

            pro.Output = input;
            pcdch.ProgrammingContestDatabase.SubmitChanges();
        }

        string[] judgeOutput = pro.Output.Split('\n');
        listbJudge.Items.Clear();

        for (int i = 0; i < judgeOutput.Length; i++)
        {
            listbJudge.Items.Add(new ListItem(judgeOutput[i], i.ToString()));
        }

        //StreamReader sr = new StreamReader(outputJudgeFile);
        //int i = 0;

        //while (sr.Peek() != -1)
        //{
        //    listbJudge.Items.Add(new ListItem(sr.ReadLine(), i.ToString()));
        //    i++;
        //}

        //sr.Close();

        if (sol.Output == null)
        {
            FileInfo fiRead = new FileInfo(path);
            string input = "";

            if (fiRead.Exists)
                input = File.ReadAllText(path);

            sol.Output = input;
            pcdch.ProgrammingContestDatabase.SubmitChanges();
        }

        string[] solutionOutput = sol.Output.Split('\n');
        listbSolver.Items.Clear();

        for (int i = 0; i < solutionOutput.Length; i++)
        {
            listbSolver.Items.Add(new ListItem(solutionOutput[i], i.ToString()));
        }

        //sr = new StreamReader(path);
        //i = 0;
        //while (sr.Peek() != -1)
        //{
        //    listbSolver.Items.Add(new ListItem(sr.ReadLine(), i.ToString()));
        //    i++;
        //}

        //sr.Close();

        if (listbJudge.Items.Count > 0)
            listbJudge.SelectedIndex = 0;

        if (listbSolver.Items.Count > 0)
            listbSolver.SelectedIndex = 0;

        mvStatus.ActiveViewIndex = 1;
    }

    protected void rptSolutions_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Solution rs = e.Item.DataItem as Solution;

            Literal name = e.Item.FindControl("ltlSolution") as Literal;
            name.Text = "<td style=\"width:250px\">" + rs.time.ToString() + "</td>";
            name.Text += "<td style=\"width:50px\">" + rs.Problem.PNumber + "</td>";
            name.Text += "<td style=\"width:200px\">" + rs.User.Name + "</td>";
            name.Text += "<td style=\"width:200px\">" + rs.Result.Name + "</td>";

            LinkButton lb1 = e.Item.FindControl("lbReJudge") as LinkButton;
            lb1.CommandArgument = rs.ID.ToString();

            LinkButton lb2 = e.Item.FindControl("lbShow") as LinkButton;
            lb2.CommandArgument = rs.ID.ToString();
        }
    }
    protected void listbJudge_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = listbJudge.SelectedIndex;

        if (listbSolver.Items.Count > index)
            listbSolver.SelectedIndex = index;
        else
            listbSolver.SelectedIndex = listbSolver.Items.Count - 1;

    }
    protected void listbSolver_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = listbSolver.SelectedIndex;

        if (listbJudge.Items.Count > index)
            listbJudge.SelectedIndex = index;
        else
            listbJudge.SelectedIndex = listbJudge.Items.Count - 1;
    }
}

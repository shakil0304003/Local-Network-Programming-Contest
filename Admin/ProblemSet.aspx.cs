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
using System.IO;
using ProgrammingContest.Data;
using Data;

public partial class Admin_ProblemSet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
            Response.Redirect("Default.aspx");
        if (Session["Admin"].ToString() != "Yes")
            Response.Redirect("Default.aspx");

        if (!IsPostBack)
        {
            ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
            rptProblems.DataSource = pcdch.Problems.GetAll();
            rptProblems.DataBind();
        }
    }

    protected void btnProblems_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "Delete") Delete(Convert.ToInt64(e.CommandArgument));
        else if (e.CommandName == "Edit") Edit(Convert.ToInt64(e.CommandArgument));
        else if (e.CommandName == "Add") Add();
        else if (e.CommandName == "Cancle") Cancle();
        else if (e.CommandName == "Save") Save();
    }

    private void Save()
    {
        if (ViewState["mode"].ToString() == "Add")
        {
            ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
            Problem pro = new Problem();
            pro.PNumber = txtNumber.Text;
            pro.PName = txtName.Text;
            pro.Statement = fckEntryContent.Value;
            pro.Time = Convert.ToInt64(txtTime.Text);
            pro.ContestSetting = pcdch.ContestSetting.GetById(Convert.ToInt64(ddlSelectContest.SelectedValue));
            pro.ContestID = Convert.ToInt64(ddlSelectContest.SelectedValue);

            if (fuInput.FileName != null && fuInput.FileName != "")
            {
                pro.InputFile = fuInput.FileName;

                string inputJudgeFile = Server.MapPath("../JudgeSolution");
                inputJudgeFile += "\\" + pro.ID.ToString();

                DirectoryInfo di = new DirectoryInfo(inputJudgeFile);

                if (!di.Exists)
                    di.Create();
                inputJudgeFile += "\\" + pro.InputFile;

                FileInfo fi = new FileInfo(inputJudgeFile);

                if (fi.Exists)
                    fi.Delete();

                fuInput.SaveAs(inputJudgeFile);

                FileInfo fiRead = new FileInfo(inputJudgeFile);
                string input = "";

                if (fiRead.Exists)
                    input = File.ReadAllText(inputJudgeFile);

                pro.Input = input;
            }
            else
                pro.InputFile = " ";

            if (fuOutput.FileName != null && fuOutput.FileName != "")
            {
                pro.OutputFile = fuOutput.FileName;

                string outputJudgeFile = Server.MapPath("../JudgeSolution");
                outputJudgeFile += "\\" + pro.ID.ToString();

                DirectoryInfo di = new DirectoryInfo(outputJudgeFile);

                if (!di.Exists)
                    di.Create();
                outputJudgeFile += "\\" + pro.OutputFile;

                FileInfo fi = new FileInfo(outputJudgeFile);

                if (fi.Exists)
                    fi.Delete();

                fuOutput.SaveAs(outputJudgeFile);

                FileInfo fiRead = new FileInfo(outputJudgeFile);
                string input = "";

                if (fiRead.Exists)
                    input = File.ReadAllText(outputJudgeFile);

                pro.Output = input;
            }
            else
                pro.OutputFile = " ";

            pcdch.ProgrammingContestDatabase.Problems.InsertOnSubmit(pro);
            pcdch.ProgrammingContestDatabase.SubmitChanges();
            rptProblems.DataSource = pcdch.Problems.GetAll();
            rptProblems.DataBind();

        }
        else if (ViewState["mode"].ToString() == "Edit")
        {
            ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
            Problem pro = pcdch.Problems.GetById(Convert.ToInt64(ViewState["ID"].ToString()));
            pro.PNumber = txtNumber.Text;
            pro.PName = txtName.Text;
            pro.Statement = fckEntryContent.Value;
            pro.Time = Convert.ToInt64(txtTime.Text);
            pro.ContestSetting = pcdch.ContestSetting.GetById(Convert.ToInt64(ddlSelectContest.SelectedValue));
            pro.ContestID = Convert.ToInt64(ddlSelectContest.SelectedValue);

            if (fuInput.FileName != null && fuInput.FileName != "")
            {
                pro.InputFile = fuInput.FileName;

                string inputJudgeFile = Server.MapPath("../JudgeSolution");
                inputJudgeFile += "\\" + pro.ID.ToString();

                DirectoryInfo di = new DirectoryInfo(inputJudgeFile);

                if (!di.Exists)
                    di.Create();
                inputJudgeFile += "\\" + pro.InputFile;

                FileInfo fi = new FileInfo(inputJudgeFile);

                if (fi.Exists)
                    fi.Delete();

                fuInput.SaveAs(inputJudgeFile);

                FileInfo fiRead = new FileInfo(inputJudgeFile);
                string input = "";

                if (fiRead.Exists)
                    input = File.ReadAllText(inputJudgeFile);

                pro.Input = input;
            }

            if (fuOutput.FileName != null && fuOutput.FileName != "")
            {
                pro.OutputFile = fuOutput.FileName;

                string outputJudgeFile = Server.MapPath("../JudgeSolution");
                outputJudgeFile += "\\" + pro.ID.ToString();

                DirectoryInfo di = new DirectoryInfo(outputJudgeFile);

                if (!di.Exists)
                    di.Create();
                outputJudgeFile += "\\" + pro.OutputFile;

                FileInfo fi = new FileInfo(outputJudgeFile);

                if (fi.Exists)
                    fi.Delete();

                fuOutput.SaveAs(outputJudgeFile);

                FileInfo fiRead = new FileInfo(outputJudgeFile);
                string input = "";

                if (fiRead.Exists)
                    input = File.ReadAllText(outputJudgeFile);

                pro.Output = input;
            }

            pcdch.ProgrammingContestDatabase.SubmitChanges();
            rptProblems.DataSource = pcdch.Problems.GetAll();
            rptProblems.DataBind();
        }

        mvProblem.ActiveViewIndex = 0;
    }

    private void Cancle()
    {
        mvProblem.ActiveViewIndex = 0;
    }

    private void Add()
    {
        ViewState["mode"] = "Add";
        txtNumber.Text = "";
        txtName.Text = "";
        fckEntryContent.Value = "";
        txtTime.Text = "";
        txtInput.Text = "";
        txtOutput.Text = "";
        LoadDdlForEdit(new ProgrammingContestDataContextHandler());
        mvProblem.ActiveViewIndex = 1;
    }

    private void Delete(long id)
    {
        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
        Problem pa = pcdch.Problems.GetById(id);
        pcdch.ProgrammingContestDatabase.Problems.DeleteOnSubmit(pa);
        rptProblems.DataSource = pcdch.Problems.GetAll();
        rptProblems.DataBind();
    }

    private void Edit(long id)
    {
        ViewState["mode"] = "Edit";
        ViewState["ID"] = id.ToString();
        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
        Problem pro = pcdch.Problems.GetById(id);
        txtNumber.Text = pro.PNumber;
        txtName.Text = pro.PName;
        fckEntryContent.Value = pro.Statement;
        txtTime.Text = pro.Time.ToString();
        txtInput.Text = pro.InputFile;
        txtOutput.Text = pro.OutputFile;
        LoadDdlForEdit(pcdch);
        ddlSelectContest.SelectedValue = pro.ContestID.ToString();
        mvProblem.ActiveViewIndex = 1;
    }

    private void LoadDdlForEdit(ProgrammingContestDataContextHandler pcdch)
    {
        ddlSelectContest.Items.Clear();

        List<ContestSetting> csAll = pcdch.ContestSetting.GetAll();

        long id = 1;

        foreach (ContestSetting cs in csAll)
        {
            ddlSelectContest.Items.Add(new ListItem(cs.Name, cs.ID.ToString()));
            id = cs.ID;
        }

        ddlSelectContest.SelectedValue = id.ToString();
    }

    protected void rptProblems_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Problem rs = e.Item.DataItem as Problem;
            
            Literal name = e.Item.FindControl("ltlProblems") as Literal;
            name.Text = "<td style=\"width:250px\">" + rs.ContestSetting.Name + "</td>";
            name.Text += "<td style=\"width:250px\">" + rs.PName + "</td>";

            LinkButton lb1 = e.Item.FindControl("lbShow") as LinkButton;
            lb1.CommandArgument = rs.ID.ToString();

            LinkButton lb2 = e.Item.FindControl("lbDelete") as LinkButton;
            lb2.CommandArgument = rs.ID.ToString();
        }
    }
}

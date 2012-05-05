using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;
using ProgrammingContest.Data;

public partial class Admin_SetContestSetting : System.Web.UI.Page
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
            rptProblems.DataSource = pcdch.ContestSetting.GetAll();
            rptProblems.DataBind();
        }
    }

    protected void btnProblems_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "Edit") Edit(Convert.ToInt64(e.CommandArgument));
        else if (e.CommandName == "Add") Add();
        else if (e.CommandName == "Cancle") Cancle();
        else if (e.CommandName == "Save") Save();
    }

    private void Edit(long id)
    {
        ViewState["mode"] = "Edit";
        ViewState["ID"] = id.ToString();
        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
        ContestSetting pro = pcdch.ContestSetting.GetById(id);
        txtName.Text = pro.Name;
        txtArrangeBy.Text = pro.ArrangedBy;
        txtStartTime.Text = pro.StartTime.ToString();
        txtEndTime.Text = pro.EndTime.ToString();
        cbIsPrivate.Checked = pro.IsPrivate;
        mvProblem.ActiveViewIndex = 1;
    }

    private void Cancle()
    {
        mvProblem.ActiveViewIndex = 0;
    }

    private void Add()
    {
        ViewState["mode"] = "Add";
        txtName.Text = "";
        txtArrangeBy.Text = "";
        txtStartTime.Text = "";
        txtEndTime.Text = "";
        cbIsPrivate.Checked = false;
        mvProblem.ActiveViewIndex = 1;
    }

    private void Save()
    {
        if (ViewState["mode"].ToString() == "Add")
        {
            ContestSetting cs = new ContestSetting();
            cs.Name = txtName.Text;
            cs.ArrangedBy = txtArrangeBy.Text;
            cs.StartTime = Convert.ToDateTime(txtStartTime.Text);
            cs.EndTime = Convert.ToDateTime(txtEndTime.Text);
            cs.IsPrivate = cbIsPrivate.Checked;

            ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
            pcdch.ProgrammingContestDatabase.ContestSettings.InsertOnSubmit(cs);
            pcdch.ProgrammingContestDatabase.SubmitChanges();

            rptProblems.DataSource = pcdch.ContestSetting.GetAll();
            rptProblems.DataBind();

        }
        else if (ViewState["mode"].ToString() == "Edit")
        {
            ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
            ContestSetting cs = pcdch.ContestSetting.GetById(Convert.ToInt64(ViewState["ID"].ToString()));
            cs.Name = txtName.Text;
            cs.ArrangedBy = txtArrangeBy.Text;
            cs.StartTime = Convert.ToDateTime(txtStartTime.Text);
            cs.EndTime = Convert.ToDateTime(txtEndTime.Text);
            cs.IsPrivate = cbIsPrivate.Checked;

            pcdch.ProgrammingContestDatabase.SubmitChanges();

            rptProblems.DataSource = pcdch.ContestSetting.GetAll();
            rptProblems.DataBind();
        }

        mvProblem.ActiveViewIndex = 0;
    }

    protected void rptProblems_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            ContestSetting rs = e.Item.DataItem as ContestSetting;

            Literal name = e.Item.FindControl("ltlProblems") as Literal;
            name.Text = "<td style=\"width:250px\">" + rs.Name + "</td>";
            name.Text += "<td style=\"width:250px\">" + rs.ArrangedBy + "</td>";

            LinkButton lb1 = e.Item.FindControl("lbShow") as LinkButton;
            lb1.CommandArgument = rs.ID.ToString();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProgrammingContest.Data;
using Data;

public partial class Admin_ManageUser : System.Web.UI.Page
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
            rptProblems.DataSource = pcdch.Users.GetAllWithOutAdmin();
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

    private void Cancle()
    {
        mvProblem.ActiveViewIndex = 0;
    }

    private void Edit(long id)
    {
        ViewState["mode"] = "Edit";
        ViewState["ID"] = id.ToString();
        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
        User pro = pcdch.Users.GetById(id);
        txtName.Text = pro.Name;
        txtIPAddress.Text = pro.IPAddress;
        LoadDdlForEdit(pcdch);

        if (pcdch.ContestPermission.GetByUserIdAndContestId(pro.ID, Convert.ToInt64(ddlSelectContest.SelectedValue)) != null)
            CheckBox1.Checked = true;
        else
            CheckBox1.Checked = false;

            mvProblem.ActiveViewIndex = 1;
    }

    private void Add()
    {
        ViewState["mode"] = "Add";
        txtName.Text = "";
        txtIPAddress.Text = "";
        LoadDdlForEdit(new ProgrammingContestDataContextHandler());
        CheckBox1.Checked = false;
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

    private void Save()
    {
        if (ViewState["mode"].ToString() == "Add")
        {
            ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
            Data.User user = new Data.User();
            user.Name = txtName.Text;
            user.IPAddress = txtIPAddress.Text;
            pcdch.ProgrammingContestDatabase.Users.InsertOnSubmit(user);
            pcdch.ProgrammingContestDatabase.SubmitChanges();

            user = pcdch.Users.GetByName(txtName.Text);

            long contestId = Convert.ToInt64(ddlSelectContest.SelectedValue);

            if (CheckBox1.Checked == true)
            {
                if (pcdch.ContestPermission.GetByUserIdAndContestId(user.ID, contestId) == null)
                {
                    ContestPermission cp = new ContestPermission();
                    cp.ContestSetting = pcdch.ContestSetting.GetById(contestId);
                    cp.ContestId = contestId;
                    cp.User = user;
                    cp.UserId = user.ID;
                    pcdch.ProgrammingContestDatabase.ContestPermissions.InsertOnSubmit(cp);
                }
            }
            else
            {
                if (pcdch.ContestPermission.GetByUserIdAndContestId(user.ID, contestId) != null)
                {
                    ContestPermission cp = pcdch.ContestPermission.GetByUserIdAndContestId(user.ID, contestId);
                    pcdch.ProgrammingContestDatabase.ContestPermissions.DeleteOnSubmit(cp);
                }
            }

            pcdch.ProgrammingContestDatabase.SubmitChanges();
            rptProblems.DataSource = pcdch.Users.GetAllWithOutAdmin();
            rptProblems.DataBind();

        }
        else if (ViewState["mode"].ToString() == "Edit")
        {
            ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
            Data.User user = pcdch.Users.GetById(Convert.ToInt64(ViewState["ID"].ToString()));
            user.Name = txtName.Text;
            user.IPAddress = txtIPAddress.Text;
            pcdch.ProgrammingContestDatabase.SubmitChanges();

            user = pcdch.Users.GetByName(txtName.Text);

            long contestId = Convert.ToInt64(ddlSelectContest.SelectedValue);

            if (CheckBox1.Checked == true)
            {
                if (pcdch.ContestPermission.GetByUserIdAndContestId(user.ID, contestId) == null)
                {
                    ContestPermission cp = new ContestPermission();
                    cp.ContestSetting = pcdch.ContestSetting.GetById(contestId);
                    cp.ContestId = contestId;
                    cp.User = user;
                    cp.UserId = user.ID;
                    pcdch.ProgrammingContestDatabase.ContestPermissions.InsertOnSubmit(cp);
                }
            }
            else
            {
                if (pcdch.ContestPermission.GetByUserIdAndContestId(user.ID, contestId) != null)
                {
                    ContestPermission cp = pcdch.ContestPermission.GetByUserIdAndContestId(user.ID, contestId);
                    pcdch.ProgrammingContestDatabase.ContestPermissions.DeleteOnSubmit(cp);
                }
            }

            pcdch.ProgrammingContestDatabase.SubmitChanges();
            rptProblems.DataSource = pcdch.Users.GetAllWithOutAdmin();
            rptProblems.DataBind();
        }

        mvProblem.ActiveViewIndex = 0;
    }

    protected void rptProblems_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            User rs = e.Item.DataItem as User;

            Literal name = e.Item.FindControl("ltlProblems") as Literal;
            name.Text = "<td style=\"width:250px\">" + rs.Name + "</td>";

            LinkButton lb1 = e.Item.FindControl("lbShow") as LinkButton;
            lb1.CommandArgument = rs.ID.ToString();
        }
    }

    protected void ddlSelectContest_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ViewState["mode"].ToString() == "Add")
        {
            CheckBox1.Checked = false;
        }
        else if (ViewState["mode"].ToString() == "Edit")
        {
            long contestId = Convert.ToInt64(ddlSelectContest.SelectedValue);
            long userId = Convert.ToInt64(ViewState["ID"].ToString());
            ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
            if (pcdch.ContestPermission.GetByUserIdAndContestId(userId, contestId) == null)
                CheckBox1.Checked = false;
            else
                CheckBox1.Checked = true;
        }
    }
}
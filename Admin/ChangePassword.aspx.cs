using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;
using ProgrammingContest.Data;

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
            Response.Redirect("Default.aspx");
        if (Session["Admin"].ToString() != "Yes")
            Response.Redirect("Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();

        User user = pcdch.Users.GetByName("Admin");

        user.IPAddress = TextBox1.Text;

        pcdch.ProgrammingContestDatabase.SubmitChanges();

        Session["Admin"] = "NO";

        Response.Redirect("Default.aspx");
    }
}
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
using ProgrammingContest.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
        string pass = pcdch.Users.GetByName("Admin").IPAddress;

        if (pass == txtPassword.Text)
        {
            Session["Admin"] = "Yes";
            Session.Timeout = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["SESSION_TIMEOUT"]);
            Response.Redirect("JudgeStatus.aspx");
        }
        else
            ltlError.Text = "Wrong Password!!!";
    }
}

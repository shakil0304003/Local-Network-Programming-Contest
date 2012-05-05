using System;
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
using ProgrammingContest.Data;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler();
        rptContest.DataSource = pcdch.ContestSetting.GetAll();
        rptContest.DataBind();
    }

    protected void rptContest_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            ContestSetting cs = e.Item.DataItem as ContestSetting;

            Literal name = e.Item.FindControl("ltlName") as Literal;
            name.Text = cs.Name;

            Literal ar = e.Item.FindControl("ltlArrangedBy") as Literal;
            ar.Text = cs.ArrangedBy;

            Literal st = e.Item.FindControl("ltlStartTime") as Literal;
            st.Text = cs.StartTime.ToString();

            Literal en = e.Item.FindControl("ltlEndTime") as Literal;
            en.Text = cs.EndTime.ToString();

            LinkButton lb = e.Item.FindControl("lbStart") as LinkButton;
            lb.CommandArgument = cs.ID.ToString();
        }
    }

    protected void btnStart(object sender, CommandEventArgs e)
    {
        long id = Convert.ToInt64(e.CommandArgument.ToString());
        Session["ContestID"] = id.ToString();
        Session.Timeout = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["SESSION_TIMEOUT"]);
        Response.Redirect("Problems.aspx");
    }
}

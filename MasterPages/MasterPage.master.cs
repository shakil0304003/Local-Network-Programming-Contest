using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using Data;
using ProgrammingContest.Data;

public partial class MasterPages_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ContestID"] != null)
        {
            using (ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler())
            {
                ltlContestName.Text = pcdch.ContestSetting.GetById(Convert.ToInt64(Session["ContestID"].ToString())).Name;
            }
        }
    }
}

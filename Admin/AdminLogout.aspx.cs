using System;
using System.Web;

namespace Traffic_Violation_Detection_System.Admin
{
    public partial class AdminLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/citizen/home.aspx");
        }
    }
}

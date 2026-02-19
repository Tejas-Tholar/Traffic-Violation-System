using System;
using System.Web;

namespace Traffic_Violation_Detection_System.Admin
{
    public partial class AdminLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Clear session data
            Session.Clear();
            Session.Abandon();

            //// Remove authentication cookie (if using Forms Authentication)
            //if (Request.Cookies["ASP.NET_SessionId"] != null)
            //{
            //    Response.Cookies["ASP.NET_SessionId"].Expires = DateTime.Now.AddDays(-1);
            //}

            // Redirect to citizen home page
            Response.Redirect("~/citizen/home.aspx");
        }
    }
}

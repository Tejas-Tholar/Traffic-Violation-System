using System;

namespace Traffic_Violation_Detection_System
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            Response.Redirect("~/Home.aspx");
        }

    }
}

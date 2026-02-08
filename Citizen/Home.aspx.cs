using System;

namespace Traffic_Violation_Detection_System
{
    public partial class Home : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Citizen/Login.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}

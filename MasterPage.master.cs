using System;
using System.Web;

namespace Traffic_Violation_Detection_System
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                lnkLogin.Visible = false;
                lnkRegister.Visible = false;
                lnkLogout.Visible = true;
            }
            else
            {
                lnkLogin.Visible = true;
                lnkRegister.Visible = true;
                lnkLogout.Visible = false;
            }
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();

            Response.Redirect("~/Citizen/Login.aspx");

        }

    }
}

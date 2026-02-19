using System;

namespace Traffic_Violation_Detection_System
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                lnkLogin.Visible = true;
                lnkRegister.Visible = true;
                lnkReports.Visible = false;
                lnkReport.Visible = false;
                lnkLogout.Visible = false;
            }
            else
            {
                lnkLogin.Visible = false;
                lnkRegister.Visible = false;
                lnkReports.Visible = true;
                lnkReport.Visible = true;
                lnkLogout.Visible = true;
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();

            Response.Redirect("~/Citizen/Home.aspx");
        }

    }
}

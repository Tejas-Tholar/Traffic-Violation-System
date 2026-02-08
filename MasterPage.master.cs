using System;

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

    }
}

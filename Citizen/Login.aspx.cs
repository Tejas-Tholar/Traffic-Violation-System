using System;
using System.Data.SqlClient;
using System.Configuration;

namespace Traffic_Violation_Detection_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            string q = "SELECT Email FROM Users WHERE Email=@e AND Password=@p";

            SqlCommand cmd = new SqlCommand(q, con);

            cmd.Parameters.AddWithValue("@e", txtEmail.Text);
            cmd.Parameters.AddWithValue("@p", txtPassword.Text);

            con.Open();
            object result = cmd.ExecuteScalar();
            con.Close();

            if (result != null)
            {
                Session["UserEmail"] = txtEmail.Text;
                Response.Redirect("ReportViolation.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid login!";
            }
        }
    }
}

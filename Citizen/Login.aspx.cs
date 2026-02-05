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

            string q = "SELECT * FROM Users WHERE Email=@e AND Password=@p";
            SqlCommand cmd = new SqlCommand(q, con);

            cmd.Parameters.AddWithValue("@e", txtEmail.Text);
            cmd.Parameters.AddWithValue("@p", txtPassword.Text);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["UserID"] = dr["UserID"].ToString(); // store user id
                Session["UserName"] = dr["Name"].ToString();

                Response.Redirect("ReportViolation.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Email or Password";
            }

            con.Close();
        }
    }
}

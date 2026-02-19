using System;
using System.Data.SqlClient;
using System.Configuration;

namespace Traffic_Violation_Detection_System
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                Response.Redirect("~/Citizen/Home.aspx");
            }
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text != txtConfirm.Text)
            {
                lblMsg.Text = "Passwords do not match";
                return;
            }

            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            con.Open();

            
            string checkQuery = "SELECT COUNT(*) FROM Users WHERE Email=@e";
            SqlCommand checkCmd = new SqlCommand(checkQuery, con);
            checkCmd.Parameters.AddWithValue("@e", txtEmail.Text);

            int exists = (int)checkCmd.ExecuteScalar();

            if (exists > 0)
            {
                lblMsg.Text = "Email already registered!";
                con.Close();
                return;
            }

     
            string q = @"INSERT INTO Users(Name, Email, Password, Role)
                 VALUES(@n,@e,@p,'Citizen');
                 SELECT SCOPE_IDENTITY();";

            SqlCommand cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@n", txtName.Text);
            cmd.Parameters.AddWithValue("@e", txtEmail.Text);
            cmd.Parameters.AddWithValue("@p", txtPassword.Text);

            int newUserId = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            Session["UserID"] = newUserId;
            Response.Redirect("ReportViolation.aspx");
        }

    }
}
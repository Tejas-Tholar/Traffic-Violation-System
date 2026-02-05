using System;
using System.Data.SqlClient;
using System.Configuration;

namespace Traffic_Violation_Detection_System
{
    public partial class Register : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text != txtConfirm.Text)
            {
                lblMsg.Text = "Passwords do not match";
                return;
            }

            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            string q = "INSERT INTO Users(Name, Email, Password, Role) " +
                       "VALUES(@n,@e,@p,'Citizen')";

            SqlCommand cmd = new SqlCommand(q, con);

            cmd.Parameters.AddWithValue("@n", txtName.Text);
            cmd.Parameters.AddWithValue("@e", txtEmail.Text);
            cmd.Parameters.AddWithValue("@p", txtPassword.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblMsg.Text = "Registration Successful!";
        }
    }
}

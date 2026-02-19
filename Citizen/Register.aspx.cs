using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions; 

namespace Traffic_Violation_Detection_System
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            
            string emailPattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            if (!Regex.IsMatch(txtEmail.Text.Trim(), emailPattern))
            {
                lblMsg.Text = "Please Enter a Valid Email Address!";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (txtPassword.Text != txtConfirm.Text)
            {
                lblMsg.Text = "Passwords do not match";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string connString = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connString))
            {
                con.Open();

                string checkQuery = "SELECT COUNT(*) FROM Users WHERE Email=@e";
                using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                {
                    checkCmd.Parameters.AddWithValue("@e", txtEmail.Text.Trim());
                    int exists = (int)checkCmd.ExecuteScalar();

                    if (exists > 0)
                    {
                        lblMsg.Text = "Email already registered!";
                        lblMsg.ForeColor = System.Drawing.Color.Red;
                        return;
                    }
                }

                string insertQuery = @"INSERT INTO Users(Name, Email, Password, Role) 
                                     VALUES(@n, @e, @p, 'Citizen');
                                     SELECT SCOPE_IDENTITY();";

                using (SqlCommand cmd = new SqlCommand(insertQuery, con))
                {
                    cmd.Parameters.AddWithValue("@n", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@e", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@p", txtPassword.Text); 


                    object result = cmd.ExecuteScalar();
                    if (result != null)
                    {
                        int newUserId = Convert.ToInt32(result);
                        Session["UserID"] = newUserId;
                        Response.Redirect("ReportViolation.aspx");
                    }
                    else
                    {
                        lblMsg.Text = "Registration failed. Please try again.";
                    }
                }
            }
        }
    }
}
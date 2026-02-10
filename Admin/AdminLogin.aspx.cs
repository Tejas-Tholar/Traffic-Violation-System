using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Traffic_Violation_Detection_System.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            string q = "SELECT * FROM Admins WHERE Username=@u AND Password=@p";

            SqlCommand cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@u", txtUser.Text);
            cmd.Parameters.AddWithValue("@p", txtPass.Text);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["AdminID"] = dr["AdminID"].ToString();
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Login Citizens Are Not Allowed";
            }

            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminID"] != null)
            {
                Response.Redirect("AdminDashboard.aspx");
            }
        }
    }
}

using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Traffic_Violation_Detection_System.Admin
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadStats();

            if (Session["AdminID"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }

        }

        private void LoadStats()
        {
            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            con.Open();

            lblTotal.Text = new SqlCommand(
                "SELECT COUNT(*) FROM Reports", con).ExecuteScalar().ToString();

            lblPending.Text = new SqlCommand(
                "SELECT COUNT(*) FROM Reports WHERE Status='Pending'", con).ExecuteScalar().ToString();

            lblApproved.Text = new SqlCommand(
                "SELECT COUNT(*) FROM Reports WHERE Status='Approved'", con).ExecuteScalar().ToString();

            lblRejected.Text = new SqlCommand(
                "SELECT COUNT(*) FROM Reports WHERE Status='Rejected'", con).ExecuteScalar().ToString();

            lblFineTotal.Text = new SqlCommand(
                "SELECT ISNULL(SUM(FineAmount),0) FROM Reports WHERE Status='Approved'", con).ExecuteScalar().ToString();

            con.Close();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            LoadStats();
        }
    }
}

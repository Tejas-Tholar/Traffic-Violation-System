using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Traffic_Violation_Detection_System.Admin
{
    public partial class ViewReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadReports();

            if (Session["AdminID"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }

        }

        void LoadReports()
        {
            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            SqlDataAdapter da = new SqlDataAdapter(
                "SELECT * FROM Reports", con);

            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Citizen/Home.aspx");
        }
    }
}

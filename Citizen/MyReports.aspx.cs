using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Traffic_Violation_Detection_System.Citizen
{
    public partial class MyReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("~/Citizen/Login.aspx");
            }

            if (!IsPostBack)
                LoadReports();
        }

        void LoadReports()
        {
            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            string q = @"SELECT VehicleNo, Location, ViolationType,
                        Status, FineAmount
                 FROM Reports
                 WHERE UserID = @uid";

            SqlDataAdapter da = new SqlDataAdapter(q, con);
            da.SelectCommand.Parameters.AddWithValue("@uid", Session["UserID"]);

            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}

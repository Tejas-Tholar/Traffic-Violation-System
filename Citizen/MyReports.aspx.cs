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
            if (!IsPostBack)
                LoadReports();
        }

        void LoadReports()
        {
            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            SqlDataAdapter da = new SqlDataAdapter(
                "SELECT VehicleNo, Location, ViolationType, Status, FineAmount FROM Reports",
con); 

            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}

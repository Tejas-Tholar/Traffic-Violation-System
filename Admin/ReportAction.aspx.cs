using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Traffic_Violation_Detection_System.Admin
{
    public partial class ReportAction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadReport();

            if (Session["AdminID"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }

        }

        void LoadReport()
        {
            string id = Request.QueryString["id"];
            if (string.IsNullOrEmpty(id)) return;

            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            string q = "SELECT * FROM Reports WHERE ReportId=@id";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@id", id);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lblVehicle.Text = dr["VehicleNo"].ToString();
                lblLocation.Text = dr["Location"].ToString();
                Descrip.Text = dr["Description"].ToString();
                lblViolation.Text = dr["ViolationType"].ToString();
                imgProof.ImageUrl = "../Citizen/" + dr["ProofPath"].ToString();

            }

            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];

            if (string.IsNullOrEmpty(id))
            {
                lblMsg.Text = "Report ID missing!";
                return;
            }

            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            string q = "UPDATE Reports SET Status=@s, FineAmount=@f WHERE ReportId=@id";

            // Create command FIRST
            SqlCommand cmd = new SqlCommand(q, con);

            // Add parameters ONCE
            cmd.Parameters.AddWithValue("@s", ddlStatus.Text);
            cmd.Parameters.AddWithValue("@f", txtFine.Text);
            cmd.Parameters.AddWithValue("@id", id);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblMsg.Text = "Status Updated!";
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");

        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Citizen/Home.aspx");
        }
    }
}


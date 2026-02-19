using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Traffic_Violation_Detection_System.Admin
{
    public partial class ReportAction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminID"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadReport();
            }
        }

        void LoadReport()
        {
            string id = Request.QueryString["id"];
            if (string.IsNullOrEmpty(id)) return;

            using (SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString))
            {
                string q = "SELECT * FROM Reports WHERE ReportId=@id";

                using (SqlCommand cmd = new SqlCommand(q, con))
                {
                    cmd.Parameters.AddWithValue("@id", id);

                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        lblVehicle.Text = dr["VehicleNo"].ToString();
                        lblLocation.Text = dr["Location"].ToString();
                        Descrip.Text = dr["Description"].ToString();
                        lblViolation.Text = dr["ViolationType"].ToString();

                        string proofPath = dr["ProofPath"].ToString();
                        string fullPath = ResolveUrl("../Citizen/" + proofPath);

                        if (proofPath.EndsWith(".mp4"))
                        {
                            imgProof.Visible = false;
                            vidProof.Visible = true;
                            vidProof.Src = fullPath;
                        }
                        else
                        {
                            vidProof.Visible = false;
                            imgProof.Visible = true;
                            imgProof.ImageUrl = fullPath;
                        }
                    }
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];

            if (string.IsNullOrEmpty(id))
            {
                lblMsg.Text = "Report ID missing!";
                return;
            }

            decimal fineAmount;

            // Validate Fine Amount
            if (!decimal.TryParse(txtFine.Text, out fineAmount))
            {
                lblMsg.Text = "Enter valid fine amount.";
                return;
            }

            using (SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString))
            {
                string q = "UPDATE Reports SET Status=@s, FineAmount=@f WHERE ReportId=@id";

                using (SqlCommand cmd = new SqlCommand(q, con))
                {
                    cmd.Parameters.AddWithValue("@s", ddlStatus.Text);
                    cmd.Parameters.AddWithValue("@f", fineAmount);
                    cmd.Parameters.AddWithValue("@id", id);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            lblMsg.Text = "Status Updated Successfully!";
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();

            Response.Redirect("~/Citizen/Home.aspx");
        }
    }
}

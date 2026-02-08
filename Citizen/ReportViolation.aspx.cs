using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Traffic_Violation_Detection_System
{
    public partial class ReportViolation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Save uploaded file
            string path = "Uploads/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(path));

            // Collect selected violations
            string violations = "";
            foreach (ListItem item in cblViolation.Items)
            {
                if (item.Selected)
                    violations += item.Text + ", ";
            }

            SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

            string q = @"INSERT INTO Reports
                        (VehicleNo, Location, ViolationType,
                         Description, ProofPath, Status, UserID)
                        VALUES
                        (@v, @l, @t, @d, @p, 'Pending', @uid)";

            SqlCommand cmd = new SqlCommand(q, con);

            cmd.Parameters.AddWithValue("@v", txtVehicleNo.Text);
            cmd.Parameters.AddWithValue("@l", txtLocation.Text);
            cmd.Parameters.AddWithValue("@t", violations);
            cmd.Parameters.AddWithValue("@d", txtDescription.Text);
            cmd.Parameters.AddWithValue("@p", path);
            cmd.Parameters.AddWithValue("@uid", Session["UserID"]);


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblMsg.Text = "Report Submitted Successfully!";
        }
    }
}

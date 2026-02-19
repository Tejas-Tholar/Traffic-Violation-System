using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

namespace Traffic_Violation_Detection_System
{
    public partial class ReportViolation : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("~/Citizen/Login.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblUploadError.Text = "";
            lblMsg.Text = "";

            if (!FileUpload1.HasFile)
            {
                lblUploadError.Text = "Please upload proof file.";
                return;
            }

            string extension = Path.GetExtension(FileUpload1.FileName).ToLower();
            string contentType = FileUpload1.PostedFile.ContentType;
            int fileSize = FileUpload1.PostedFile.ContentLength;

            bool isVideo = (extension == ".mp4" && contentType == "video/mp4");
            bool isImage = (extension == ".jpg" || extension == ".jpeg" || extension == ".png");

            if (!(isVideo || isImage))
            {
                lblUploadError.Text = "Only MP4, JPG, JPEG, PNG files are allowed.";
                return;
            }

            if (fileSize > 20 * 1024 * 1024)
            {
                lblUploadError.Text = "File must be less than 20MB.";
                return;
            }

            try
            {
                
                string fileName = Guid.NewGuid().ToString() + extension;

                // ===== Create Upload Folder If Not Exists =====
                string folderPath = Server.MapPath("~/Citizen/Uploads/");

                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }

                string fullPath = Path.Combine(folderPath, fileName);

                // ===== Save File =====
                FileUpload1.SaveAs(fullPath);

                string dbPath = "Uploads/" + fileName;

                // ===== Collect Form Data =====
                string vehicleNo = txtVehicleNo.Text.Trim();
                string location = txtLocation.Text.Trim();
                string description = txtDescription.Text.Trim();

                string violations = "";
                foreach (System.Web.UI.WebControls.ListItem item in cblViolation.Items)
                {
                    if (item.Selected)
                    {
                        violations += item.Text + ", ";
                    }
                }

                violations = violations.TrimEnd(',', ' ');

                // ===== Insert Into Database =====
                using (SqlConnection con = new SqlConnection(
                    ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString))
                {
                    string query = @"INSERT INTO Reports
                                    (VehicleNo, Location, ViolationType, Description, ProofPath, Status,UserID)
                                    VALUES
                                    (@VehicleNo, @Location, @ViolationType, @Description, @ProofPath, 'Pending')";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@VehicleNo", vehicleNo);
                        cmd.Parameters.AddWithValue("@Location", location);
                        cmd.Parameters.AddWithValue("@ViolationType", violations);
                        cmd.Parameters.AddWithValue("@Description", description);
                        cmd.Parameters.AddWithValue("@ProofPath", dbPath);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                lblMsg.Text = "Report submitted successfully!";
                ClearForm();
            }
            catch (Exception ex)
            {
                lblUploadError.Text = "Error: " + ex.Message;
            }
        }

        private void ClearForm()
        {
            txtVehicleNo.Text = "";
            txtLocation.Text = "";
            txtDescription.Text = "";

            foreach (System.Web.UI.WebControls.ListItem item in cblViolation.Items)
            {
                item.Selected = false;
            }
        }
    }
}

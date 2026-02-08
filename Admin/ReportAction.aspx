<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ReportAction.aspx.cs"
    Inherits="Traffic_Violation_Detection_System.Admin.ReportAction" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report Action</title>
    <link href="<%= ResolveUrl("~/Styles/admin.css") %>" rel="stylesheet" />
</head>
<body>

    <form runat="server">

        <div class="admin-navbar">
            <div class="admin-brand">
                <span></span> Admin Panel
            </div>

            <div class="admin-links">
                <a href="AdminDashboard.aspx">Dashboard</a>
                <a href="ViewReports.aspx">View Reports</a>
                <a href="../Login.aspx" class="admin-logout">Logout</a>
            </div>
        </div>

        <div class="admin-page">

            <div class="admin-action">

                <h2>Report Action</h2>
                <p>Review report details, verify evidence, and update fine and status.</p>

                <div class="report-grid">

                    <div class="report-item">
                        <strong>Vehicle Number</strong>
                        <span><asp:Label ID="lblVehicle" runat="server"></asp:Label></span>
                    </div>

                    <div class="report-item">
                        <strong>Location</strong>
                        <span><asp:Label ID="lblLocation" runat="server"></asp:Label></span>
                    </div>

                    <div class="report-item">
                        <strong>Description</strong>
                        <span><asp:Label ID="Descrip" runat="server"></asp:Label></span>
                    </div>

                    <div class="report-item">
                        <strong>Violation Type</strong>
                        <span><asp:Label ID="lblViolation" runat="server"></asp:Label></span>
                    </div>

                </div>

                <div class="proof-box">
                    <h3 style="margin-bottom:14px;font-size:16px;font-weight:950;color:#0f172a;">Proof Image</h3>
                    <asp:Image ID="imgProof" runat="server" Width="450px" />
                </div>

                <label class="admin-label">Fine Amount</label>
                <asp:TextBox ID="txtFine" runat="server" CssClass="admin-input" Placeholder="Enter Fine Amount"></asp:TextBox>

                <label class="admin-label">Status</label>
                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="admin-dropdown">
                    <asp:ListItem>Pending</asp:ListItem>
                    <asp:ListItem>Approved</asp:ListItem>
                    <asp:ListItem>Rejected</asp:ListItem>
                </asp:DropDownList>

                <asp:Button ID="btnUpdate" runat="server"
                    CssClass="admin-btn"
                    Text="Update Status"
                    OnClick="btnUpdate_Click" />

                <asp:Label ID="lblMsg" runat="server" CssClass="admin-msg"></asp:Label>

            </div>

        </div>

    </form>

</body>
</html>

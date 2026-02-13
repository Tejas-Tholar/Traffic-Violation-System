<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ReportAction.aspx.cs"
    Inherits="Traffic_Violation_Detection_System.Admin.ReportAction" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report Action</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="<%= ResolveUrl("~/Styles/admin.css") %>" rel="stylesheet" />
</head>
<body>

    <div class="admin-bg1"></div>
    <div class="admin-bg2"></div>
    <div class="admin-bg3"></div>

    <div class="admin-navbar">

        <div class="admin-brand">
            <span></span>
            Admin Panel
        </div>

        <input type="checkbox" id="admin-toggle" class="admin-toggle" />
        <label for="admin-toggle" class="admin-hamburger">&#9776;</label>

        <div class="admin-links">
            <a href="AdminDashboard.aspx">Dashboard</a>
            <a href="ViewReports.aspx">Reports</a>
            <a href="AdminLogout.aspx" class="admin-logout">Logout</a>
        </div>

    </div>

    <form runat="server" class="admin-page">

        <div class="admin-action">

            <h2>Report Action</h2>
            <p>Verify report proof and update status with fine amount.</p>

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
                    <strong>Violation</strong>
                    <span><asp:Label ID="lblViolation" runat="server"></asp:Label></span>
                </div>

            </div>

            <div class="proof-box">
                <h3 style="margin-bottom:12px;">Proof Image</h3>
                <asp:Image ID="imgProof" runat="server" Width="300px" />
            </div>

            <label class="admin-label">Fine Amount</label>
            <asp:TextBox ID="txtFine" runat="server" CssClass="admin-input"></asp:TextBox>

            <label class="admin-label">Status</label>
            <asp:DropDownList ID="ddlStatus" runat="server" CssClass="admin-dropdown">
                <asp:ListItem>Pending</asp:ListItem>
                <asp:ListItem>Approved</asp:ListItem>
                <asp:ListItem>Rejected</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="btnUpdate" runat="server"
                Text="Update Status"
                CssClass="admin-btn"
                OnClick="btnUpdate_Click" />

            <asp:Label ID="lblMsg" runat="server" CssClass="admin-msg"></asp:Label>

        </div>

    </form>

</body>
</html>

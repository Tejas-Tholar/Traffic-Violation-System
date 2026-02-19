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

    <div class="admin-bg1" runat="server"></div>
    <div class="admin-bg2" runat="server"></div>
    <div class="admin-bg3" runat="server"></div>

    <div class="admin-navbar" runat="server">

        <div class="admin-brand" runat="server">
            <span runat="server"></span>
            Admin Panel
        </div>

        <input type="checkbox" id="Checkbox1" class="admin-toggle" runat="server" />
        <label for="admin-toggle" class="admin-hamburger" runat="server">&#9776;</label>

        <div class="admin-links" runat="server">
            <a href="AdminDashboard.aspx" runat="server">Dashboard</a>
            <a href="ViewReports.aspx" runat="server">Reports</a>
            <a href="AdminLogout.aspx" class="admin-logout" runat="server">Logout</a>
        </div>

    </div>

    <form runat="server" class="admin-page">

        <div class="admin-action" runat="server">

            <h2 runat="server">Report Action</h2>
            <p runat="server">Verify report proof and update status with fine amount.</p>

            <div class="report-grid" runat="server">

                <div class="report-item" runat="server">
                    <strong runat="server">Vehicle Number</strong>
                    <span runat="server"><asp:Label ID="lblVehicle" runat="server"></asp:Label></span>
                </div>

                <div class="report-item" runat="server">
                    <strong runat="server">Location</strong>
                    <span runat="server"><asp:Label ID="lblLocation" runat="server"></asp:Label></span>
                </div>

                <div class="report-item" runat="server">
                    <strong runat="server">Description</strong>
                    <span runat="server"><asp:Label ID="Descrip" runat="server"></asp:Label></span>
                </div>

                <div class="report-item" runat="server">
                    <strong runat="server">Violation</strong>
                    <span runat="server"><asp:Label ID="lblViolation" runat="server"></asp:Label></span>
                </div>

            </div>

            <div class="proof-box" runat="server">
                <h3 style="margin-bottom:12px;" runat="server">Proof Image</h3>
                <asp:Image ID="imgProof" runat="server" Width="300px" />
            </div>

            <label class="admin-label" runat="server">Fine Amount</label>
            <asp:TextBox ID="txtFine" runat="server" CssClass="admin-input"></asp:TextBox>

            <label class="admin-label" runat="server">Status</label>
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

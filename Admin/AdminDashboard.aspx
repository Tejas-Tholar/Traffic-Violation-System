<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Traffic_Violation_Detection_System.Admin.AdminDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
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

    <form id="form1" runat="server" class="admin-page">

        <div class="dashboard-container">

            <div class="dashboard-header">
                <h2>Dashboard Statistics</h2>
                <p>Live overview of violation reports, pending cases and fine collection.</p>
            </div>

            <div class="stats-grid">

                <div class="stat-card blue">
                    <div class="stat-title">Total Reports</div>
                    <div class="stat-value">
                        <asp:Label ID="lblTotal" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="stat-card yellow">
                    <div class="stat-title">Pending</div>
                    <div class="stat-value">
                        <asp:Label ID="lblPending" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="stat-card green">
                    <div class="stat-title">Approved</div>
                    <div class="stat-value">
                        <asp:Label ID="lblApproved" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="stat-card red">
                    <div class="stat-title">Rejected</div>
                    <div class="stat-value">
                        <asp:Label ID="lblRejected" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="stat-card full">
                    <div class="stat-title">Total Fine Collected</div>
                    <div class="stat-value">
                        ₹ <asp:Label ID="lblFineTotal" runat="server"></asp:Label>
                    </div>
                </div>

            </div>

        </div>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server"
                    Interval="10000"
                    OnTick="Timer1_Tick" />
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>

</body>
</html>

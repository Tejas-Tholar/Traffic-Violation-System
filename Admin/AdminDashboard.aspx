<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Traffic_Violation_Detection_System.Admin.AdminDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
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

    <form id="form1" runat="server" class="admin-page">

        <div class="dashboard-container" runat="server">

            <div class="dashboard-header" runat="server">
                <h2 runat="server">Dashboard Statistics</h2>
                <p runat="server">Live overview of violation reports, pending cases and fine collection.</p>
            </div>

            <div class="stats-grid" runat="server">

                <div class="stat-card blue" runat="server">
                    <div class="stat-title" runat="server">Total Reports</div>
                    <div class="stat-value" runat="server">
                        <asp:Label ID="lblTotal" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="stat-card yellow" runat="server">
                    <div class="stat-title" runat="server">Pending</div>
                    <div class="stat-value" runat="server">
                        <asp:Label ID="lblPending" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="stat-card green" runat="server">
                    <div class="stat-title" runat="server">Approved</div>
                    <div class="stat-value" runat="server">
                        <asp:Label ID="lblApproved" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="stat-card red" runat="server">
                    <div class="stat-title" runat="server">Rejected</div>
                    <div class="stat-value" runat="server">
                        <asp:Label ID="lblRejected" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="stat-card full" runat="server">
                    <div class="stat-title" runat="server">Total Fine Collected</div>
                    <div class="stat-value" runat="server">
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

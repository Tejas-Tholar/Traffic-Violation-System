<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Traffic_Violation_Detection_System.Admin.AdminDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <link href="<%= ResolveUrl("~/Styles/admin.css") %>" rel="stylesheet" />
</head>
<body>

    <div class="admin-bg1"></div>
    <div class="admin-bg2"></div>
    <div class="admin-bg3"></div>

    <form id="form1" runat="server">

        <div class="admin-navbar">
            <div class="admin-brand">
                <span></span> Traffic Control Dashboard
            </div>

            <div class="admin-links">
                <a href="AdminDashboard.aspx">Dashboard</a>
                <a href="ViewReports.aspx">View Reports</a>
                <a href="../Citizen/Home.aspx">Citizen Panel</a>
                <asp:LinkButton ID="lnkLogout" runat="server" OnClick="Logout_Click">Logout</asp:LinkButton>
            </div>
        </div>

        <div class="admin-page">

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <div class="dashboard-container">

                        <div class="dashboard-header">
                            <h2>Dashboard Statistics</h2>
                            <p>Live monitoring of reports and fine collection (Auto refresh every 10 seconds).</p>
                        </div>

                        <div class="stats-grid">

                            <div class="stat-card">
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

                            <div class="stat-card blue full">
                                <div class="stat-title">Total Fine Collected</div>
                                <div class="stat-value">
                                    ₹ <asp:Label ID="lblFineTotal" runat="server"></asp:Label>
                                </div>
                            </div>

                        </div>

                    </div>

                    <asp:Timer ID="Timer1" runat="server"
                        Interval="10000"
                        OnTick="Timer1_Tick" />

                </ContentTemplate>
            </asp:UpdatePanel>

        </div>

    </form>

</body>
</html>

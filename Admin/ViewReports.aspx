<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ViewReports.aspx.cs"
    Inherits="Traffic_Violation_Detection_System.Admin.ViewReports" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Reports</title>
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

        <div class="admin-card">

            <h2>All Violation Reports</h2>
            <p>View all citizen submitted reports and take action.</p>

            <div class="admin-table-box">

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="admin-table">
                    <Columns>
                        <asp:BoundField DataField="ReportId" HeaderText="ID" />
                        <asp:BoundField DataField="VehicleNo" HeaderText="Vehicle" />
                        <asp:BoundField DataField="Location" HeaderText="Location" />
                        <asp:BoundField DataField="ViolationType" HeaderText="Violation" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />

                        <asp:HyperLinkField
                            Text="Take Action"
                            DataNavigateUrlFields="ReportId"
                            DataNavigateUrlFormatString="ReportAction.aspx?id={0}" />
                    </Columns>
                </asp:GridView>

            </div>

        </div>

    </form>

</body>
</html>

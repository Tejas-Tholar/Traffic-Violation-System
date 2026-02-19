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

        <div class="admin-card" runat="server">

            <h2 runat="server">All Violation Reports</h2>
            <p runat="server">View all citizen submitted reports and take action.</p>

            <div class="admin-table-box" runat="server">

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

<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ViewReports.aspx.cs"
    Inherits="Traffic_Violation_Detection_System.Admin.ViewReports" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Reports</title>
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

            <div class="admin-card">

                <h2>All Violation Reports</h2>
                <p>View all submitted reports and take action for approval or rejection.</p>

                <div class="admin-table-box">

                    <asp:GridView ID="GridView1" runat="server"
                        AutoGenerateColumns="false"
                        CssClass="admin-table">

                        <Columns>

                            <asp:BoundField DataField="ReportId" HeaderText="Report ID" />
                            <asp:BoundField DataField="VehicleNo" HeaderText="Vehicle No" />
                            <asp:BoundField DataField="Location" HeaderText="Location" />
                            <asp:BoundField DataField="ViolationType" HeaderText="Violation Type" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />

                            <asp:HyperLinkField
                                Text="Take Action"
                                DataNavigateUrlFields="ReportId"
                                DataNavigateUrlFormatString="ReportAction.aspx?id={0}"
                                ControlStyle-CssClass="action-link" />

                        </Columns>

                    </asp:GridView>

                </div>

            </div>

        </div>

    </form>

</body>
</html>

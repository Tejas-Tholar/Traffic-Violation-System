<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyReports.aspx.cs" Inherits="Traffic_Violation_Detection_System.Citizen.MyReports" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Reports</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="<%= ResolveUrl("~/Styles/citizen.css") %>" rel="stylesheet" />
</head>
<body>

    <div class="citizen-bg1"></div>
    <div class="citizen-bg2"></div>
    <div class="citizen-bg3"></div>

    <form runat="server">

        <!-- NAVBAR -->
        <div class="citizen-navbar">

            <div class="citizen-brand">
                <span></span> Citizen Portal
            </div>

            <!-- HAMBURGER -->
            <input type="checkbox" id="citizen-toggle" class="citizen-toggle" />
            <label for="citizen-toggle" class="citizen-hamburger">&#9776;</label>

            <!-- LINKS -->
            <div class="citizen-links">
                <a href="Home.aspx">Home</a>
                <a href="ReportViolation.aspx">Report</a>
                <a href="MyReports.aspx">My Reports</a>
                <a href="../Citizen/Login.aspx" class="logout-link">Logout</a>
            </div>

        </div>

        <!-- PAGE CONTENT -->
        <div class="citizen-page">

            <h2 style="margin:0;font-size:30px;font-weight:950;">My Reports</h2>
            <p style="margin-top:10px;color:rgba(255,255,255,0.75);font-size:14px;">
                View all your submitted reports with current status and fine amount.
            </p>

            <div class="table-box">
                <asp:GridView ID="GridView1" runat="server"
                    AutoGenerateColumns="true"
                    CssClass="report-table"
                    HeaderStyle-CssClass="table-header"
                    RowStyle-CssClass="table-row"
                    AlternatingRowStyle-CssClass="table-alt-row">
                </asp:GridView>
            </div>

        </div>

    </form>

</body>
</html>

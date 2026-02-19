<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyReports.aspx.cs" Inherits="Traffic_Violation_Detection_System.Citizen.MyReports" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Reports</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="<%= ResolveUrl("~/Styles/citizen.css") %>" rel="stylesheet" />
</head>
<body>

    <form runat="server">

        <asp:Panel ID="bg1" runat="server" CssClass="citizen-bg1"></asp:Panel>
        <asp:Panel ID="bg2" runat="server" CssClass="citizen-bg2"></asp:Panel>
        <asp:Panel ID="bg3" runat="server" CssClass="citizen-bg3"></asp:Panel>

        <!-- NAVBAR -->
        <asp:Panel ID="navbar" runat="server" CssClass="citizen-navbar">

            <asp:Panel ID="brand" runat="server" CssClass="citizen-brand">
                <asp:Label ID="brandDot" runat="server"></asp:Label>
                Citizen Portal
            </asp:Panel>

            <!-- HAMBURGER (ASP.NET) -->
            <asp:CheckBox ID="citizenToggle" runat="server" CssClass="citizen-toggle" />

            <asp:Label ID="hamburger" runat="server" CssClass="citizen-hamburger" AssociatedControlID="citizenToggle">
                &#9776;
            </asp:Label>

            <!-- LINKS -->
            <asp:Panel ID="navLinks" runat="server" CssClass="citizen-links">

                <asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="Home.aspx" Text="Home"></asp:HyperLink>

                <asp:HyperLink ID="lnkReport" runat="server" NavigateUrl="ReportViolation.aspx" Text="Report"></asp:HyperLink>

                <asp:HyperLink ID="lnkMyReports" runat="server" NavigateUrl="MyReports.aspx" Text="My Reports"></asp:HyperLink>

                <asp:HyperLink ID="lnkLogout" runat="server" NavigateUrl="../Citizen/Login.aspx" CssClass="logout-link" Text="Logout"></asp:HyperLink>

            </asp:Panel>

        </asp:Panel>

        <!-- PAGE CONTENT -->
        <asp:Panel ID="citizenPage" runat="server" CssClass="citizen-page">

            <asp:Label ID="lblTitle" runat="server"
                Text="My Reports"
                Style="margin:0;font-size:30px;font-weight:950;display:block;">
            </asp:Label>

            <asp:Label ID="lblDesc" runat="server"
                Text="View all your submitted reports with current status and fine amount."
                Style="margin-top:10px;color:rgba(255,255,255,0.75);font-size:14px;display:block;">
            </asp:Label>

            <asp:Panel ID="tableBox" runat="server" CssClass="table-box">

                <asp:GridView ID="GridView1" runat="server"
                    AutoGenerateColumns="true"
                    CssClass="report-table"
                    HeaderStyle-CssClass="table-header"
                    RowStyle-CssClass="table-row"
                    AlternatingRowStyle-CssClass="table-alt-row">
                </asp:GridView>

            </asp:Panel>

        </asp:Panel>

    </form>

</body>
</html>

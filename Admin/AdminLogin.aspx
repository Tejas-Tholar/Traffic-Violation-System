<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Traffic_Violation_Detection_System.Admin.AdminLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="<%= ResolveUrl("~/Styles/admin.css") %>" rel="stylesheet" />
</head>

<body>

    <!-- BACKGROUND -->
    <div class="admin-bg1" runat="server"></div>
    <div class="admin-bg2" runat="server"></div>
    <div class="admin-bg3" runat="server"></div>

    <!-- NAVBAR -->
    <div class="admin-navbar" runat="server">

        <div class="admin-brand" runat="server">
            <span runat="server"></span>
            Admin Panel
        </div>

        <!-- HAMBURGER TOGGLE -->
        <input type="checkbox" id="Checkbox1" class="admin-toggle" runat="server" />
        <label for="admin-toggle" class="admin-hamburger" runat="server">&#9776;</label>

        <div class="admin-links" runat="server">
            <a href="AdminLogin.aspx" runat="server">Login</a>
        </div>

    </div>

    <!-- PAGE CONTENT -->
    <form id="form1" runat="server" class="admin-page">

        <div class="admin-login" runat="server">

            <div class="traffic-signal" runat="server">
                <div class="signal-light red" runat="server"></div>
                <div class="signal-light yellow" runat="server"></div>
                <div class="signal-light green" runat="server"></div>
            </div>

            <h2 runat="server">Admin Login</h2>
            <p runat="server">Login to manage reports and issue fines.</p>

            <label class="admin-label" runat="server">Username</label>
            <asp:TextBox ID="txtUser" runat="server" CssClass="admin-input"></asp:TextBox>

            <label class="admin-label" runat="server">Password</label>
            <asp:TextBox ID="txtPass" runat="server" CssClass="admin-input" TextMode="Password"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server" CssClass="admin-btn"
                Text="Login"
                OnClick="btnLogin_Click" />

            <asp:Label ID="lblMsg" runat="server" CssClass="admin-msg"></asp:Label>

        </div>

    </form>

</body>
</html>

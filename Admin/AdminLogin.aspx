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
    <div class="admin-bg1"></div>
    <div class="admin-bg2"></div>
    <div class="admin-bg3"></div>

    <!-- NAVBAR -->
    <div class="admin-navbar">

        <div class="admin-brand">
            <span></span>
            Admin Panel
        </div>

        <!-- HAMBURGER TOGGLE -->
        <input type="checkbox" id="admin-toggle" class="admin-toggle" />
        <label for="admin-toggle" class="admin-hamburger">&#9776;</label>

        <div class="admin-links">
            <a href="AdminLogin.aspx">Login</a>
        </div>

    </div>

    <!-- PAGE CONTENT -->
    <form id="form1" runat="server" class="admin-page">

        <div class="admin-login">

            <div class="traffic-signal">
                <div class="signal-light red"></div>
                <div class="signal-light yellow"></div>
                <div class="signal-light green"></div>
            </div>

            <h2>Admin Login</h2>
            <p>Login to manage reports and issue fines.</p>

            <label class="admin-label">Username</label>
            <asp:TextBox ID="txtUser" runat="server" CssClass="admin-input"></asp:TextBox>

            <label class="admin-label">Password</label>
            <asp:TextBox ID="txtPass" runat="server" CssClass="admin-input" TextMode="Password"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server" CssClass="admin-btn"
                Text="Login"
                OnClick="btnLogin_Click" />

            <asp:Label ID="lblMsg" runat="server" CssClass="admin-msg"></asp:Label>

        </div>

    </form>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Traffic_Violation_Detection_System.Admin.AdminLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="<%= ResolveUrl("~/Styles/admin.css") %>" rel="stylesheet" />
</head>
<body>

    <div class="admin-bg1"></div>
    <div class="admin-bg2"></div>
    <div class="admin-bg3"></div>

    <form id="form1" runat="server">

        <div class="admin-navbar">
            <div class="admin-brand">
                <span></span> Admin Panel
            </div>

            <div class="admin-links">
                <a href="../Citizen/Home.aspx">Home</a>
                <a href="AdminLogin.aspx">Admin Login</a>
            </div>
        </div>

        <div class="admin-page">

            <div class="admin-login">

                <div class="traffic-signal">
                    <div class="signal-light red"></div>
                    <div class="signal-light yellow"></div>
                    <div class="signal-light green"></div>
                </div>

                <h2>Admin Login</h2>
                <p>Login to access dashboard and manage violation reports securely.</p>

                <label class="admin-label">Username</label>
                <asp:TextBox ID="txtUser" runat="server" CssClass="admin-input" Placeholder="Enter Username"></asp:TextBox>

                <label class="admin-label">Password</label>
                <asp:TextBox ID="txtPass" runat="server" CssClass="admin-input" TextMode="Password" Placeholder="Enter Password"></asp:TextBox>

                <asp:Button ID="btnLogin" runat="server"
                    CssClass="admin-btn"
                    Text="Login"
                    OnClick="btnLogin_Click" />

                <asp:Label ID="lblMsg" runat="server" CssClass="admin-msg admin-error"></asp:Label>

            </div>

        </div>

    </form>

</body>
</html>

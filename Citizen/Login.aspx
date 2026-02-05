<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="Traffic_Violation_Detection_System.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Citizen Login</title>
</head>
<body>
<form id="form1" runat="server">

    <h2>Citizen Login</h2>

    Email:<br />
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <br /><br />

    Password:<br />
    <asp:TextBox ID="txtPassword" runat="server"
        TextMode="Password"></asp:TextBox>
    <br /><br />

    <asp:Button ID="btnLogin" runat="server"
        Text="Login"
        OnClick="btnLogin_Click" />
    <br /><br />

    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    <br /><br />

    <a href="Register.aspx">Create Account</a>

</form>
</body>
</html>

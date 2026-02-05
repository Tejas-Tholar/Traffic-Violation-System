<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs"
    Inherits="Traffic_Violation_Detection_System.Register" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Citizen Registration</title>
</head>
<body>
<form id="form1" runat="server">

    <h2>Citizen Registration</h2>

    Name:<br />
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <br /><br />

    Email:<br />
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <br /><br />

    Password:<br />
    <asp:TextBox ID="txtPassword" runat="server"
        TextMode="Password"></asp:TextBox>
    <br /><br />

    Confirm Password:<br />
    <asp:TextBox ID="txtConfirm" runat="server"
        TextMode="Password"></asp:TextBox>
    <br /><br />

    <asp:Button ID="btnRegister" runat="server"
        Text="Register"
        OnClick="btnRegister_Click" />
    <br /><br />

    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    <br /><br />

    <a href="Login.aspx">Already have account? Login</a>

</form>
</body>
</html>

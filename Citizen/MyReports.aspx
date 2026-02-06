<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyReports.aspx.cs" Inherits="Traffic_Violation_Detection_System.Citizen.MyReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
    <h2>My Reports</h2>

    <asp:GridView ID="GridView1" runat="server"
        AutoGenerateColumns="true">
    </asp:GridView>
</form>

</body>
</html>

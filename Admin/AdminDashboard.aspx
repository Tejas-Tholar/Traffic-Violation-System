<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Traffic_Violation_Detection_System.Admin.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

        <h3>Dashboard Statistics</h3>

        Total Reports:
        <asp:Label ID="lblTotal" runat="server"></asp:Label><br />

        Pending:
        <asp:Label ID="lblPending" runat="server"></asp:Label><br />

        Approved:
        <asp:Label ID="lblApproved" runat="server"></asp:Label><br />

        Rejected:
        <asp:Label ID="lblRejected" runat="server"></asp:Label><br />

        Total Fine Collected:
        <asp:Label ID="lblFineTotal" runat="server"></asp:Label><br />


        <asp:Timer ID="Timer1" runat="server"
            Interval="10000"
            OnTick="Timer1_Tick" />

    </ContentTemplate>
</asp:UpdatePanel>

    </form>
</body>
</html>

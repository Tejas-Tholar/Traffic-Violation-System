<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ReportAction.aspx.cs"
    Inherits="Traffic_Violation_Detection_System.Admin.ReportAction" %>

<form runat="server">
    <h2>Report Action</h2>

    Vehicle Number:
        <asp:Label ID="lblVehicle" runat="server"></asp:Label>
        <br /><br />

        Location:
        <asp:Label ID="lblLocation" runat="server"></asp:Label>
        <br /><br />
        
         Description:
         <asp:Label ID="Descrip" runat="server"></asp:Label>
         <br /><br />

        Violation:
        <asp:Label ID="lblViolation" runat="server"></asp:Label>
        <br /><br />

        Proof Image:<br />
        <asp:Image ID="imgProof" runat="server" Width="300px" />
        <br /><br />


    Status:
    <asp:DropDownList ID="ddlStatus" runat="server">
        <asp:ListItem>Pending</asp:ListItem>
        <asp:ListItem>Approved</asp:ListItem>
        <asp:ListItem>Rejected</asp:ListItem>
    </asp:DropDownList>

    <br /><br />

    <asp:Button ID="btnUpdate" runat="server"
        Text="Update Status"
        OnClick="btnUpdate_Click" />

    <br /><br />
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
</form>

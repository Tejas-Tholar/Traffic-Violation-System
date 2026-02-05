<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ReportViolation.aspx.cs"
    Inherits="Traffic_Violation_Detection_System.ReportViolation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Report Traffic Violation</h2>

Vehicle Number:<br />
<asp:TextBox ID="txtVehicleNo" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtVehicleNo" ErrorMessage="Proof Required"></asp:RequiredFieldValidator>
<br /><br />

Location:<br />
<asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLocation" ErrorMessage="Proof Required"></asp:RequiredFieldValidator>
<br /><br />

Violation Type:<br />
<asp:CheckBoxList ID="cblViolation" runat="server">
    <asp:ListItem>No Helmet</asp:ListItem>
    <asp:ListItem>Signal Jump</asp:ListItem>
    <asp:ListItem>Wrong Parking</asp:ListItem>
    <asp:ListItem>No Seatbelt</asp:ListItem>
    <asp:ListItem>Overspeeding</asp:ListItem>
    <asp:ListItem>Using Mobile While Driving</asp:ListItem>
    <asp:ListItem>Triple Riding</asp:ListItem>
    <asp:ListItem>Driving Without License</asp:ListItem>
    <asp:ListItem>Driving on Wrong Side</asp:ListItem>
    <asp:ListItem>Red Light Violation</asp:ListItem>
    <asp:ListItem>Illegal U‑Turn</asp:ListItem>
    <asp:ListItem>Obstructing Traffic</asp:ListItem>
    <asp:ListItem>Overloading Vehicle</asp:ListItem>
    <asp:ListItem>No Number Plate</asp:ListItem>
    <asp:ListItem>Drunk Driving</asp:ListItem>
    <asp:ListItem>Dangerous Driving</asp:ListItem>
    <asp:ListItem>Blocking Zebra Crossing</asp:ListItem>
    <asp:ListItem>Parking in No‑Parking Zone</asp:ListItem>
    <asp:ListItem>Other</asp:ListItem>
</asp:CheckBoxList>
        <br />
&nbsp;
        <br /><br />

Description:<br />
<asp:TextBox ID="txtDescription" runat="server"
    TextMode="MultiLine" Rows="4"></asp:TextBox>
<br /><br />

Upload Proof:<br />
<asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Proof Required"></asp:RequiredFieldValidator>
<br /><br />

<asp:Button ID="btnSubmit" runat="server"
    Text="Submit Report"
    OnClick="btnSubmit_Click" />

<br /><br />
<asp:Label ID="lblMsg" runat="server"></asp:Label>
    </form>
</body>
</html>

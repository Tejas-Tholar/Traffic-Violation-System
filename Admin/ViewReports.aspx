<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ViewReports.aspx.cs"
    Inherits="Traffic_Violation_Detection_System.Admin.ViewReports" %>

<form runat="server">
    <h2>All Violation Reports</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField DataField="ReportId" HeaderText="ID" />
        <asp:BoundField DataField="VehicleNo" HeaderText="Vehicle" />
        <asp:BoundField DataField="Location" HeaderText="Location" />
        <asp:BoundField DataField="ViolationType" HeaderText="Violation" />
        <asp:BoundField DataField="Status" HeaderText="Status" />

        <asp:HyperLinkField 
            Text="Take Action"
            DataNavigateUrlFields="ReportId"
            DataNavigateUrlFormatString="ReportAction.aspx?id={0}" />
    </Columns>
</asp:GridView>

</form>

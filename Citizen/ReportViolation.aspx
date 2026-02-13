<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ReportViolation.aspx.cs"
    Inherits="Traffic_Violation_Detection_System.ReportViolation" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report Violation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="<%= ResolveUrl("~/Styles/citizen.css") %>" rel="stylesheet" />
</head>
<body>

    <div class="citizen-bg1"></div>
    <div class="citizen-bg2"></div>
    <div class="citizen-bg3"></div>

    <form id="form1" runat="server">

        <!-- NAVBAR -->
        <div class="citizen-navbar">

            <div class="citizen-brand">
                <span></span> Citizen Portal
            </div>

            <!-- HAMBURGER -->
            <input type="checkbox" id="citizen-toggle" class="citizen-toggle" />
            <label for="citizen-toggle" class="citizen-hamburger">&#9776;</label>

            <!-- LINKS -->
            <div class="citizen-links">
                <a href="Home.aspx">Home</a>
                <a href="ReportViolation.aspx">Report</a>
                <a href="MyReports.aspx">My Reports</a>
                <a href="../Citizen/Login.aspx" class="logout-link">Logout</a>
            </div>

        </div>

        <!-- PAGE CONTENT -->
        <div class="citizen-page">

            <div class="report-wrapper">

                <div class="report-left">
                    <h2>Traffic Violation Report</h2>
                    <p>
                        Submit violation details with proof. Reports will be verified by admin before issuing fine.
                        This helps maintain safety and discipline on roads.
                    </p>

                    <div class="info-card">
                        <h4>Fast Verification</h4>
                        <p>Reports are reviewed quickly by authorized admin.</p>
                    </div>

                    <div class="info-card">
                        <h4>Secure System</h4>
                        <p>All uploaded proofs are stored securely for investigation.</p>
                    </div>

                    <div class="info-card">
                        <h4>Support Road Safety</h4>
                        <p>Every report contributes to reducing accidents and violations.</p>
                    </div>
                </div>

                <div class="report-form-card">

                    <h3>Submit Report</h3>
                    <p class="form-subtext">Fill all required details correctly.</p>

                    <label class="white-label">Vehicle Number</label>
                    <asp:TextBox ID="txtVehicleNo" runat="server" CssClass="white-input" Placeholder="MH00AB0000"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="txtVehicleNo"
                        CssClass="white-error"
                        ErrorMessage="Vehicle Number Required"></asp:RequiredFieldValidator>

                    <label class="white-label">Location</label>
                    <asp:TextBox ID="txtLocation" runat="server" CssClass="white-input" Placeholder="Eg: Mumbai, Bandra"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="txtLocation"
                        CssClass="white-error"
                        ErrorMessage="Location Required"></asp:RequiredFieldValidator>

                    <label class="white-label">Violation Type</label>
                    <div class="white-checkbox-box">
                        <asp:CheckBoxList ID="cblViolation" runat="server" CssClass="white-checkbox-list">
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
                            <asp:ListItem>Illegal U-Turn</asp:ListItem>
                            <asp:ListItem>Obstructing Traffic</asp:ListItem>
                            <asp:ListItem>Overloading Vehicle</asp:ListItem>
                            <asp:ListItem>No Number Plate</asp:ListItem>
                            <asp:ListItem>Drunk Driving</asp:ListItem>
                            <asp:ListItem>Dangerous Driving</asp:ListItem>
                            <asp:ListItem>Blocking Zebra Crossing</asp:ListItem>
                            <asp:ListItem>Parking in No-Parking Zone</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:CheckBoxList>
                    </div>

                    <label class="white-label">Description</label>
                    <asp:TextBox ID="txtDescription" runat="server"
                        CssClass="white-textarea"
                        TextMode="MultiLine"
                        Rows="4"
                        Placeholder="Write details about the violation..."></asp:TextBox>

                    <label class="white-label">Upload Proof</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="white-file" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="FileUpload1"
                        CssClass="white-error"
                        ErrorMessage="Proof Required"></asp:RequiredFieldValidator>

                    <asp:Button ID="btnSubmit" runat="server"
                        CssClass="white-btn"
                        Text="Submit Report"
                        OnClick="btnSubmit_Click" />

                    <asp:Label ID="lblMsg" runat="server" CssClass="white-success"></asp:Label>

                </div>

            </div>

        </div>

    </form>

</body>
</html>

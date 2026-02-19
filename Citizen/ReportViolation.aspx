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

    <form id="form1" runat="server">

        <asp:Panel ID="bg1" runat="server" CssClass="citizen-bg1"></asp:Panel>
        <asp:Panel ID="bg2" runat="server" CssClass="citizen-bg2"></asp:Panel>
        <asp:Panel ID="bg3" runat="server" CssClass="citizen-bg3"></asp:Panel>

        <asp:Panel ID="navbar" runat="server" CssClass="citizen-navbar">

            <asp:Panel ID="brand" runat="server" CssClass="citizen-brand">
                <asp:Label ID="brandDot" runat="server"></asp:Label>
                Citizen Portal
            </asp:Panel>

            <asp:CheckBox ID="citizenToggle" runat="server"
                CssClass="citizen-toggle"
                ClientIDMode="Static" />

            <asp:Label ID="hamburger" runat="server"
                CssClass="citizen-hamburger"
                AssociatedControlID="citizenToggle">
                &#9776;
            </asp:Label>

            <asp:Panel ID="citizenLinks" runat="server" CssClass="citizen-links">

                <asp:HyperLink ID="lnkHome" runat="server"
                    NavigateUrl="Home.aspx"
                    Text="Home"></asp:HyperLink>

                <asp:HyperLink ID="lnkReport" runat="server"
                    NavigateUrl="ReportViolation.aspx"
                    Text="Report"></asp:HyperLink>

                <asp:HyperLink ID="lnkMyReports" runat="server"
                    NavigateUrl="MyReports.aspx"
                    Text="My Reports"></asp:HyperLink>

                <asp:HyperLink ID="lnkLogout" runat="server"
                    NavigateUrl="../Citizen/Login.aspx"
                    CssClass="logout-link"
                    Text="Logout"></asp:HyperLink>

            </asp:Panel>

        </asp:Panel>

        <asp:Panel ID="citizenPage" runat="server" CssClass="citizen-page">

            <asp:Panel ID="reportWrapper" runat="server" CssClass="report-wrapper">

                <asp:Panel ID="reportLeft" runat="server" CssClass="report-left">

                    <asp:Label ID="lblTitle" runat="server">
                        <h2>Traffic Violation Report</h2>
                    </asp:Label>

                    <asp:Label ID="lblIntro" runat="server">
                        <p>
                            Submit violation details with proof. Reports will be verified by admin before issuing fine.
                            This helps maintain safety and discipline on roads.
                        </p>
                    </asp:Label>

                    <asp:Panel ID="infoCard1" runat="server" CssClass="info-card">
                        <asp:Label ID="lblInfoTitle1" runat="server">
                            <h4>Fast Verification</h4>
                        </asp:Label>
                        <asp:Label ID="lblInfoText1" runat="server">
                            <p>Reports are reviewed quickly by authorized admin.</p>
                        </asp:Label>
                    </asp:Panel>

                    <asp:Panel ID="infoCard2" runat="server" CssClass="info-card">
                        <asp:Label ID="lblInfoTitle2" runat="server">
                            <h4>Secure System</h4>
                        </asp:Label>
                        <asp:Label ID="lblInfoText2" runat="server">
                            <p>All uploaded proofs are stored securely for investigation.</p>
                        </asp:Label>
                    </asp:Panel>

                    <asp:Panel ID="infoCard3" runat="server" CssClass="info-card">
                        <asp:Label ID="lblInfoTitle3" runat="server">
                            <h4>Support Road Safety</h4>
                        </asp:Label>
                        <asp:Label ID="lblInfoText3" runat="server">
                            <p>Every report contributes to reducing accidents and violations.</p>
                        </asp:Label>
                    </asp:Panel>

                </asp:Panel>

                <asp:Panel ID="reportFormCard" runat="server" CssClass="report-form-card">

                    <asp:Label ID="lblSubmitTitle" runat="server">
                        <h3>Submit Report</h3>
                    </asp:Label>

                    <asp:Label ID="lblSubText" runat="server" CssClass="form-subtext"
                        Text="Fill all required details correctly.">
                    </asp:Label>

                    <asp:Label ID="lblVehicle" runat="server" CssClass="white-label" Text="Vehicle Number"></asp:Label>

                    <asp:TextBox ID="txtVehicleNo" runat="server"
                        CssClass="white-input"
                        Placeholder="MH00AB0000"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="txtVehicleNo"
                        CssClass="white-error"
                        ErrorMessage="Vehicle Number Required"></asp:RequiredFieldValidator>


                    <asp:Label ID="lblLocation" runat="server" CssClass="white-label" Text="Location"></asp:Label>

                    <asp:TextBox ID="txtLocation" runat="server"
                        CssClass="white-input"
                        Placeholder="Eg: Mumbai, Bandra"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="txtLocation"
                        CssClass="white-error"
                        ErrorMessage="Location Required"></asp:RequiredFieldValidator>


                    <asp:Label ID="lblViolationType" runat="server" CssClass="white-label" Text="Violation Type"></asp:Label>

                    <asp:Panel ID="checkboxBox" runat="server" CssClass="white-checkbox-box">
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
                    </asp:Panel>


                    <asp:Label ID="lblDescription" runat="server" CssClass="white-label" Text="Description"></asp:Label>

                    <asp:TextBox ID="txtDescription" runat="server"
                        CssClass="white-textarea"
                        TextMode="MultiLine"
                        Rows="4"
                        Placeholder="Write details about the violation..."></asp:TextBox>


                    <asp:Label ID="lblProof" runat="server" CssClass="white-label" Text="Upload Proof"></asp:Label>

                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="white-file" />
                    <asp:Label ID="lblUploadError" runat="server" ForeColor="Red"></asp:Label>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="FileUpload1"
                        CssClass="white-error"
                        ErrorMessage="Proof Required"></asp:RequiredFieldValidator>


                    <asp:Button ID="btnSubmit" runat="server"
                        CssClass="white-btn"
                        Text="Submit Report"
                        OnClick="btnSubmit_Click" />

                    <asp:Label ID="lblMsg" runat="server" CssClass="white-success"></asp:Label>

                </asp:Panel>

            </asp:Panel>

        </asp:Panel>

    </form>

</body>
</html>

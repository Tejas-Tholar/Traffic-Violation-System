<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Traffic_Violation_Detection_System.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Traffic Violation System
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="home-main">

        <div class="home-content">

            <h1>Traffic Violation System</h1>

            <p class="home-desc">
                A web-based traffic monitoring portal that allows users to report violations,
                upload evidence, and track the verification and fine issuance process securely.
            </p>

            <div class="home-features">

                <div class="feature-box">
                    <h3>Report Violations</h3>
                    <p>Submit vehicle number, violation type, and location details in one report.</p>
                </div>

                <div class="feature-box">
                    <h3>Upload Evidence</h3>
                    <p>Attach photo proof to make the complaint valid and reliable.</p>
                </div>

                <div class="feature-box">
                    <h3>Track Status</h3>
                    <p>Check whether the violation report is pending, verified, or fine issued.</p>
                </div>

                <div class="feature-box">
                    <h3>Fine Issuance</h3>
                    <p>Authorities can issue fines based on violation type and predefined rules.</p>
                </div>

            </div>

        </div>

        <div class="home-popup-card">

            <h2>Portal Access</h2>
            <p>Login or Register to continue</p>

            <asp:Button ID="btnLogin" runat="server" CssClass="btn-main" Text="Login" OnClick="btnLogin_Click" />

            <asp:Button ID="btnRegister" runat="server" CssClass="btn-secondary" Text="Register" OnClick="btnRegister_Click" />

        </div>

    </div>

</asp:Content>

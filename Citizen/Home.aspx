<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Traffic_Violation_Detection_System.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Traffic Violation System
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="home-hero" style="min-height:calc(100vh - 80px); align-items:center;">

        <div class="home-left" style="width:100%;">

            <div class="home-badge">
                <span></span>
                Smart Road Safety Portal
            </div>

            <h1>
                Traffic Violation <strong>Detection System</strong>
            </h1>

            <p class="home-desc">
                A secure web-based portal where users can report traffic violations, upload evidence,
                and help authorities verify incidents for fine generation. This system improves transparency,
                accountability, and safety on roads by enabling faster reporting and monitoring.
            </p>

            <div class="home-features">

                <div class="feature-box">
                    <h3>Violation Reporting</h3>
                    <p>Submit complete violation reports with vehicle number, location, and violation type.</p>
                </div>

                <div class="feature-box">
                    <h3>Proof Upload</h3>
                    <p>Upload photo evidence to make reports more reliable and verifiable.</p>
                </div>

                <div class="feature-box">
                    <h3>Status Monitoring</h3>
                    <p>Reports are tracked through Pending, Approved, or Rejected verification process.</p>
                </div>

                <div class="feature-box">
                    <h3>Fine Management</h3>
                    <p>Admin can issue fines based on violation rules, report type, and verification status.</p>
                </div>

            </div>

        </div>

    </div>

</asp:Content>

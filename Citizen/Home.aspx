<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Traffic_Violation_Detection_System.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Traffic Violation System
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div runat="server" class="home-hero" style="min-height:calc(100vh - 80px); align-items:center;">

        <div runat="server" class="home-left" style="width:100%;">

            <div runat="server" class="home-badge">
                <span runat="server"></span>
                Smart Road Safety Portal
            </div>

            <h1 runat="server">
                Traffic Violation <strong runat="server">Detection System</strong>
            </h1>

            <p runat="server" class="home-desc">
                A secure web-based portal where users can report traffic violations, upload evidence,
                and help authorities verify incidents for fine generation. This system improves transparency,
                accountability, and safety on roads by enabling faster reporting and monitoring.
            </p>

            <div runat="server" class="home-features">

                <div runat="server" class="feature-box">
                    <h3 runat="server">Violation Reporting</h3>
                    <p runat="server">Submit complete violation reports with vehicle number, location, and violation type.</p>
                </div>

                <div runat="server" class="feature-box">
                    <h3 runat="server">Proof Upload</h3>
                    <p runat="server">Upload photo evidence to make reports more reliable and verifiable.</p>
                </div>

                <div runat="server" class="feature-box">
                    <h3 runat="server">Status Monitoring</h3>
                    <p runat="server">Reports are tracked through Pending, Approved, or Rejected verification process.</p>
                </div>

                <div runat="server" class="feature-box">
                    <h3 runat="server">Fine Management</h3>
                    <p runat="server">Admin can issue fines based on violation rules, report type, and verification status.</p>
                </div>

            </div>

        </div>

    </div>

</asp:Content>

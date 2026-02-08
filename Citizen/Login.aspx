<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Traffic_Violation_Detection_System.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-container">

        <div class="auth-card">

            <h2>Login</h2>
            <p>Please login to continue</p>

            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box" Placeholder="Enter Email"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Enter Password"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server" CssClass="btn-main" Text="Login" OnClick="btnLogin_Click" />

            <asp:Label ID="lblMsg" runat="server" CssClass="message"></asp:Label>

            <div class="link-text">
                Don't have an account?
                <a href="Register.aspx">Register</a>
            </div>

        </div>

    </div>

</asp:Content>

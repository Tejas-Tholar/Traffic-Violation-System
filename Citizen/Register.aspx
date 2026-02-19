<%@ Page Title="Register" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Traffic_Violation_Detection_System.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Register
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-container">

        <div class="auth-card">

            <h2>Create Account</h2>
            <p>Register to report traffic violations securely.</p>

            <asp:TextBox ID="txtName" runat="server" CssClass="input-box" Placeholder="Full Name"></asp:TextBox>

            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box" Placeholder="Email Address"></asp:TextBox>

            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter Email Correctly!"></asp:CustomValidator>

            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Password"></asp:TextBox>

            <asp:TextBox ID="txtConfirm" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Confirm Password"></asp:TextBox>

            <asp:Button ID="btnRegister" runat="server" CssClass="btn-main" Text="Register" OnClick="btnRegister_Click" />

            <asp:Label ID="lblMsg" runat="server" CssClass="message"></asp:Label>

            <div class="link-text">
                Already have an account?
                <a href="Login.aspx">Login</a>
            </div>

        </div>

    </div>

</asp:Content>

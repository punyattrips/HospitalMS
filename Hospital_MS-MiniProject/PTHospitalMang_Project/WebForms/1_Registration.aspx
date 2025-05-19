<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/HomeWebTitle.Master" AutoEventWireup="true" CodeBehind="1_Registration.aspx.cs" Inherits="PTHospitalMang_Project.WebForms._1_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>

    <!--------------------- CSS Document --------------------->
    <link rel="stylesheet" href="../CSStyle/1_Registration.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--------------------- Form Registration --------------------->
    <center>
        <div class="container">
            <h1>Registration form</h1>
            <div class="contact-box">

                <!--------------------- Labels and TextAreas --------------------->
                <div class="input-row">
                    <div class="input-group">
                        <label>Name </label>
                        <asp:TextBox ID="txtName" runat="server" placeholder="Example: Raju Kumar"></asp:TextBox>
                    </div>
                    <div class="input-group">
                        <label>Email </label>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Example: rajukumar@yahoo.com"></asp:TextBox>
                    </div>
                    <div class="input-group">
                        <label>Username </label>
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Example: rajukr2001"></asp:TextBox>
                    </div>
                    <div class="input-group">
                        <label>Password </label>
                        <asp:TextBox type="password" ID="txtPwd" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-group">
                        <label>Confirm Password </label>
                        <asp:TextBox type="password" ID="txtCoPwd" runat="server" EnableViewState="False"></asp:TextBox>
                    </div>
                </div>

                <!--------------------- Buttons & Links (Click) --------------------->
                <div class="btnSignIn">
                    <asp:Button ID="btnReSignIn" runat="server" CssClass="btnSignIn" Text="Register" OnClick="btnReSignIn_Click" />
                    <br />
                </div>
                <div class="signin_link">
                    You are already registered?  
                        <asp:LinkButton ID="lkbtnSignUp" runat="server" CssClass="signin_link" Font-Bold="True" Font-Underline="True" ForeColor="#33CCFF" OnClick="lkbtnSignUp_Click">Sign In</asp:LinkButton>
                </div>
            </div>
        </div>
    </center>
    <!--------------------- ///// END \\\\\ --------------------->
</asp:Content>

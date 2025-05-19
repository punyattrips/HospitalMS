<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/HomeWebTitle.Master" AutoEventWireup="true" CodeBehind="1_Login.aspx.cs" Inherits="PTHospitalMang_Project.WebForms._1_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>

    <!--------------------- CSS Document --------------------->
    <link rel="stylesheet" href="../CSStyle/1_Login.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--------------------- Form Login --------------------->
    <center>
        <br />
        <div class="center">

            <!--------------------- Ad Rotator on login --------------------->
            <div class="img_adrotator">
                <asp:AdRotator ID="adrt_MedicalImg" runat="server" AdvertisementFile="~/XMLLogin.xml" CssClass="img_adrotator" />
            </div>
            <h1>Login</h1>

            <!--------------------- Labels and TextAreas --------------------->
            <div class="txt_field">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <span></span>
                <label>Username</label>
            </div>
            <div class="txt_field">
                <asp:TextBox type="password" ID="txtPassword" runat="server"></asp:TextBox>
                <span></span>
                <label>Password</label>
            </div>

            <!--------------------- Buttons and Links (Click) --------------------->
            <div class="pass">
                <asp:LinkButton ID="lkbtnForget_Pwd" runat="server" CssClass="pass">Forget Password?</asp:LinkButton>
            </div>
            <asp:Button type="submit" ID="btnLogin" runat="server" Text="Login" CssClass="signup_link" Height="47px" Width="162px" OnClick="btnLogin_Click" />
            <div class="signup_link">
                Don't have an account?
                <asp:LinkButton ID="lkbtnSignUp" runat="server" CssClass="signup_link" OnClick="lkbtnSignUp_Click">Sign Up</asp:LinkButton>
            </div>
        </div>
    </center>
    <!--------------------- ///// END \\\\\ --------------------->
</asp:Content>

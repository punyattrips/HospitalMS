<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/HomeWebTitle.Master" AutoEventWireup="true" CodeBehind="2_HomePage.aspx.cs" Inherits="PTHospitalMang_Project.WebForms._2_HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>

    <!--------------------- CSS Document --------------------->
    <link rel="stylesheet" href="../CSStyle/2_HomePage.css">   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="home">
        <!--------------------- Navigation Bar --------------------->
        <nav>
            <!--------------------- Logo --------------------->
            <img src="../Imgs/hosp_clip_logo.png" alt="Hosital Logo" class="hosp-logo">
            <a href="#" class="logo"> Handy <span class="portf">Hospital</span></a>

            <!--------------------- Menu --------------------->
            <ul>
                <li> <a href="#home" class="active"> Home </a> </li>
                <li> <a href="3_PatientAdm_Reg.aspx" class="active"> Patients Admission </a> </li>
                <li> <a href="4_DrInfoDetails.aspx" class="active"> Doctors Detail </a></li>
                <li> <a href="5_Patient_BillForm.aspx" class="active"> Patients Billing </a> </li>
                <li> <a href="#" class="active"> Records </a> </li>
                <li> <a href="#" class="active"> Reports </a> </li>
            </ul>
        </nav>
    </section>
    <!--------------------- ///// END \\\\\ --------------------->
</asp:Content>

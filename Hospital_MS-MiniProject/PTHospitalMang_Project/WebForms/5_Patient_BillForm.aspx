<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/HomeWebTitle.Master" AutoEventWireup="true" CodeBehind="5_Patient_BillForm.aspx.cs" Inherits="PTHospitalMang_Project.WebForms._5_Patient_BillForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <!--------------------- Choose types of patients --------------------->
        Patient Billing :
            <asp:DropDownList ID="dplistPA" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dplistPA_SelectedIndexChanged">
                <asp:ListItem Value="inpati_bill_tb">In-Patient</asp:ListItem>
                <asp:ListItem Value="outpati_bill_tb">Out-Patient</asp:ListItem>
            </asp:DropDownList>
        <!--------------------- Patient Billing Form --------------------->
        <table>
            <thead>
                <tr>
                    <th colspan="3">Patient Billing</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Bill Number : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtBillNo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>MRD Number : </td>
                    <td colspan="2">
                        <asp:DropDownList ID="dpdMRNo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dpdMRNo_SelectedIndexChanged" AppendDataBoundItems="True"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Patient Name : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtPName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Doctor Name : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDrName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Date of ADM : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDtADM" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Date of Discharge : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDtDisch" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Room Rent : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtRmRent" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Lab Test Fees : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtLabFee" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Consultation Fee : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtConsFee" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Net Payment : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtNetPay" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnViewBls" runat="server" Text="View Bills" OnClick="btnViewBls_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnSaveBl" runat="server" Text="Save Bill" OnClick="btnSaveBl_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
                    </td>
                </tr>
            </tbody>
        </table>
    </center>
    <!--------------------- ///// END \\\\\ --------------------->
</asp:Content>

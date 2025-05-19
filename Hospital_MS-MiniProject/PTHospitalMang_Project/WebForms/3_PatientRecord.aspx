<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/HomeWebTitle.Master" AutoEventWireup="true" CodeBehind="3_PatientRecord.aspx.cs" Inherits="PTHospitalMang_Project.WebForms._3_PatientRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--------------------- Choose types of patients --------------------->
    Patient Admission :
            <asp:DropDownList ID="dplistPA" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dplistPA_SelectedIndexChanged">
                <asp:ListItem Value="inpatient_adm_tb">In-Patient</asp:ListItem>
                <asp:ListItem Value="outpatient_adm_tb">Out-Patient</asp:ListItem>
            </asp:DropDownList>
    <br />

    <!--------------------- Search to find data from the table of the database --------------------->
    <asp:Label ID="lblSearch" runat="server" Text="Search : "></asp:Label>
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Find" />

    <!--------------------- Data Grid View Output --------------------->
    <asp:GridView ID="gviewPatiRecord" runat="server" Height="456px" CssClass="auto-style1" Width="1426px" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="mrn_no" HeaderText="MRN Number" />
            <asp:ImageField DataImageUrlField="proppath" HeaderText="Profile Picture">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="gender" HeaderText="Gender" />
            <asp:BoundField DataField="dob" HeaderText="DOB" />
            <asp:BoundField DataField="referral" HeaderText="Referral" />
            <asp:BoundField DataField="concession" HeaderText="Concession" />
            <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="district" HeaderText="District" />
            <asp:BoundField DataField="state" HeaderText="State" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <!--------------------- ///// END \\\\\ --------------------->
</asp:Content>

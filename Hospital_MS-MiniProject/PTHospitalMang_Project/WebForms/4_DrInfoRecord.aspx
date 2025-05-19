<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/HomeWebTitle.Master" AutoEventWireup="true" CodeBehind="4_DrInfoRecord.aspx.cs" Inherits="PTHospitalMang_Project.WebForms._4_DrInfoRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--------------------- Search to find data from the table of the database --------------------->
    Doctor Personal Details :
    <br />
    <asp:Label ID="lblSearch" runat="server" Text="Search : "></asp:Label>
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Find" OnClick="btnSearch_Click" />

    <!--------------------- Data Grid View Output --------------------->
    <asp:GridView ID="gviewPatiRecord" runat="server" Height="456px" CssClass="auto-style1" Width="1426px" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="dr_id" HeaderText="Doctor Number" />
            <asp:ImageField DataImageUrlField="dr_proppath" HeaderText="Profile Picture">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="dr_name" HeaderText="Name" />
            <asp:BoundField DataField="dr_gender" HeaderText="Gender" />
            <asp:BoundField DataField="dr_dob" HeaderText="Date of Birth" />
            <asp:BoundField DataField="dr_relation" HeaderText="Relationship" />
            <asp:BoundField DataField="dr_dtjoin" HeaderText="Date of Joining" />
            <asp:BoundField DataField="dr_dtconfi" HeaderText="Date of Confirmation" />
            <asp:BoundField DataField="dr_depart" HeaderText="Department" />
            <asp:BoundField DataField="dr_reasonconfi" HeaderText="Reason of Confirmation" />
            <asp:BoundField DataField="dr_salry" HeaderText="Salary" />
            <asp:BoundField DataField="dr_address" HeaderText="Address" />
            <asp:BoundField DataField="dr_cty_vllg" HeaderText="City/Village" />
            <asp:BoundField DataField="dr_district" HeaderText="District" />
            <asp:BoundField DataField="dr_state" HeaderText="State" />
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

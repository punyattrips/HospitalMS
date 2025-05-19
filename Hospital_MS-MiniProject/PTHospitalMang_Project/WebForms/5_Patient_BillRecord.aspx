<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/HomeWebTitle.Master" AutoEventWireup="true" CodeBehind="5_Patient_BillRecord.aspx.cs" Inherits="PTHospitalMang_Project.WebForms._5_Patient_BillRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Patient Billing Records :
    <br />
    Patient Admission :
    <asp:DropDownList ID="dplistPA" runat="server" AutoPostBack="True">
        <asp:ListItem Value="inpati_bill_tb">In-Patient</asp:ListItem>
        <asp:ListItem Value="outpati_bill_tb">Out-Patient</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="lblSearch" runat="server" Text="Search : "></asp:Label>
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Find" />
    <asp:GridView ID="gviewPatiRecord" runat="server" Height="456px" Width="1426px" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="bill_no" HeaderText="Bill ID" />
            <asp:BoundField DataField="mrn" HeaderText="MRN ID" />
            <asp:BoundField DataField="pname" HeaderText="Name" />
            <asp:BoundField DataField="drname" HeaderText="Doctor Name" />
            <asp:BoundField DataField="dtadm" HeaderText="Date of ADM" />
            <asp:BoundField DataField="dtdisch" HeaderText="Date of Discharge" />
            <asp:BoundField DataField="rmrent" HeaderText="Room Rent" />
            <asp:BoundField DataField="lbtestfee" HeaderText="Lab Test Fee" />
            <asp:BoundField DataField="consfee" HeaderText="Consultation Fee" />
            <asp:BoundField DataField="netpay" HeaderText="Net Payment" />
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
</asp:Content>

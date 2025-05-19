<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/HomeWebTitle.Master" AutoEventWireup="true" CodeBehind="4_DrInfoDetails.aspx.cs" Inherits="PTHospitalMang_Project.WebForms._4_DrInfoDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--------------------- Doctor Details Form --------------------->
    <center>
        <table>
            <thead>
                <tr>
                    <th colspan="3">Doctor Personal Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Doctor ID : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDrNo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Name : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDrName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Gender : </td>
                    <td colspan="2">
                        <asp:DropDownList ID="dpdGender" runat="server">
                            <asp:ListItem Value="Male"></asp:ListItem>
                            <asp:ListItem Value="Female"></asp:ListItem>
                            <asp:ListItem Value="Other"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Date of Birth : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Relationship : </td>
                    <td colspan="2">
                        <asp:DropDownList ID="dpdRelationship" runat="server">
                            <asp:ListItem Value="Married"></asp:ListItem>
                            <asp:ListItem Value="Widowed"></asp:ListItem>
                            <asp:ListItem Value="Single"></asp:ListItem>
                            <asp:ListItem Value="Other"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Date of Joining : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDtJoining" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Date of Confirmation : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDtConfirm" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Department : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDept" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Reason for Confirmation : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtReasonConf" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Salary : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtSal" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Address : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>City/Village : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtCty_Vllg" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>District : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtDist" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>State : </td>
                    <td colspan="2">
                        <asp:DropDownList ID="dplistState" runat="server">
                            <asp:ListItem Value="Andhra Pradesh"></asp:ListItem>
                            <asp:ListItem Value="Arunachal Pradesh"></asp:ListItem>
                            <asp:ListItem Value="Assam"></asp:ListItem>
                            <asp:ListItem Value="Bihar"></asp:ListItem>
                            <asp:ListItem Value="Chhattisgarh"></asp:ListItem>
                            <asp:ListItem Value="Goa"></asp:ListItem>
                            <asp:ListItem Value="Gujarat"></asp:ListItem>
                            <asp:ListItem Value="Haryana"></asp:ListItem>
                            <asp:ListItem Value="Himachal Pradesh"></asp:ListItem>
                            <asp:ListItem Value="Jharkhand"></asp:ListItem>
                            <asp:ListItem Value="Karnataka"></asp:ListItem>
                            <asp:ListItem Value="Kerala"></asp:ListItem>
                            <asp:ListItem Value="Madhya Pradesh"></asp:ListItem>
                            <asp:ListItem Value="Maharashtra"></asp:ListItem>
                            <asp:ListItem Value="Manipur"></asp:ListItem>
                            <asp:ListItem Value="Meghalaya"></asp:ListItem>
                            <asp:ListItem Value="Mizoram"></asp:ListItem>
                            <asp:ListItem Value="Nagaland"></asp:ListItem>
                            <asp:ListItem Value="Odisha"></asp:ListItem>
                            <asp:ListItem Value="Punjab"></asp:ListItem>
                            <asp:ListItem Value="Rajasthan"></asp:ListItem>
                            <asp:ListItem Value="Sikkim"></asp:ListItem>
                            <asp:ListItem Value="Tamil Nadu"></asp:ListItem>
                            <asp:ListItem Value="Telangana"></asp:ListItem>
                            <asp:ListItem Value="Tripura"></asp:ListItem>
                            <asp:ListItem Value="Uttar Pradesh"></asp:ListItem>
                            <asp:ListItem Value="Uttarakhand"></asp:ListItem>
                            <asp:ListItem Value="West Bengal"></asp:ListItem>
                            <asp:ListItem Value="Andaman and Nicobar Islands"></asp:ListItem>
                            <asp:ListItem Value="Chandigarh"></asp:ListItem>
                            <asp:ListItem Value="Dadra &amp; Nagar Haveli and Daman &amp; Diu"></asp:ListItem>
                            <asp:ListItem Value="Delhi"></asp:ListItem>
                            <asp:ListItem Value="Jammu and Kashmir"></asp:ListItem>
                            <asp:ListItem Value="Lakshadweep"></asp:ListItem>
                            <asp:ListItem Value="Ladakh"></asp:ListItem>
                            <asp:ListItem Value="Puducherry"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Profile Pic : </td>
                    <td colspan="2">
                        <asp:FileUpload ID="fuProPic" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnViewRecord" runat="server" Text="View Record" OnClick="btnViewRecord_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnModify" runat="server" Text="Modify" OnClick="btnModify_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
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

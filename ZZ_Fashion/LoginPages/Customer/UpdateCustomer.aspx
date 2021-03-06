﻿<%@ Page Title="" Language="C#" MasterPageFile="~/LoginPages/Customer/Customer.master" AutoEventWireup="true" CodeBehind="UpdateCustomer.aspx.cs" Inherits="ZZ_Fashion.LoginPages.Customer.UpdateCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table cellpadding="0" cellspacing="0" class="nav-justified" style="height: 550px">
        <tr>
            <td style="width: 282px; height: 81px; font-size: x-large;"><strong>Profile</strong></td>
            <td style="height: 81px"></td>
        </tr>
        <tr>
            <td style="width: 282px; height: 55px">Name:</td>
            <td style="height: 55px">
                <asp:Label ID="NameLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 282px; height: 55px">Gender:</td>
            <td style="height: 55px">
                <asp:Label ID="Gender" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 282px; height: 55px">Birth Date:</td>
            <td style="height: 55px">
                <asp:Label ID="BirthDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 282px; height: 70px">Email Address:</td>
            <td style="height: 70px">
                <asp:TextBox ID="EmailAddr" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RegularExpressionValidator ID="ValidEmail" runat="server" ControlToValidate="EmailAddr" Display="Dynamic" ErrorMessage="Please Enter Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:CustomValidator ID="UniqueEmail" runat="server" Display="Dynamic" ErrorMessage="Please Enter a Unique Email address" ForeColor="Red" OnServerValidate="UniqueEmail_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 282px; height: 73px">Password:</td>
            <td style="height: 73px">
                <asp:Button ID="ChangePass" runat="server" OnClick="ChangePass_Click" Text="Change Password" />
            </td>
        </tr>
        <tr>
            <td style="width: 282px; height: 69px">Phone Number:</td>
            <td style="height: 69px">
                <asp:TextBox ID="PhoneNum" runat="server" TextMode="Phone"></asp:TextBox>
                <asp:CustomValidator ID="ValidPhoneNum" runat="server" ControlToValidate="PhoneNum" Display="Dynamic" ErrorMessage="Please Enter Valid Phone Number" ForeColor="Red" OnServerValidate="ValidPhoneNum_ServerValidate"></asp:CustomValidator>
                <asp:CustomValidator ID="UniquePhoneNum" runat="server" Display="Dynamic" ErrorMessage="Please Enter a Unique Phone Number" ForeColor="Red" OnServerValidate="UniquePhoneNum_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 282px; height: 61px">Residential address: </td>
            <td style="height: 61px">
                <asp:TextBox ID="ResidentialAddr" runat="server" Height="26px" Width="325px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 282px; height: 67px;">Country: </td>
            <td style="height: 67px">
                <asp:Label ID="Country" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 282px; height: 56px;">&nbsp;</td>
            <td style="height: 56px">
                <asp:Button ID="SaveChanges" runat="server" Text="Save Changes" OnClick="SaveChanges_Click" />
                <asp:Label ID="Message" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

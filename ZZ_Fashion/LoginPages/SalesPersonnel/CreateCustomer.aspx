﻿<%@ Page Title="" Language="C#" MasterPageFile="~/LoginPages/SalesPersonnel/SalesPersonnel.master" AutoEventWireup="true" CodeBehind="CreateCustomer.aspx.cs" Inherits="ZZ_Fashion.LoginPages.SalesPersonnel.CreateCustomer" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 134px">&nbsp;</td>
            <td>CREATE CUSTOMER</td>
        </tr>
        <tr>
            <td style="width: 134px">Membership ID:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="ID" runat="server">M00000001</asp:TextBox>
                <asp:CustomValidator ID="cvError" runat="server" ControlToValidate="ID" ErrorMessage="MemberID Already Existed!" OnServerValidate="cvError_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 134px">Name:</td>
            <td>
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqName" runat="server" Display="Dynamic" ErrorMessage="REQUIRED FIELD" ControlToValidate="Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 134px; height: 47px;">Gender:</td>
            <td style="height: 47px">
                <asp:RadioButton ID="M" runat="server" GroupName="Gender" OnCheckedChanged="M_CheckedChanged" Text="Male" />
                <asp:RadioButton ID="F" runat="server" GroupName="Gender" Text="Female" />
            </td>
        </tr>
        <tr>
            <td style="width: 134px; height: 61px;">Date of birth:</td>
            <td style="height: 61px">
                <asp:TextBox ID="DOBtext" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqDOB" runat="server" Display="Dynamic" ErrorMessage="REQUIRED FIELD" ControlToValidate="DOBtext"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 134px">Email Address:</td>
            <td>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="Invalid Email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="reqEmail" runat="server" Display="Dynamic" ErrorMessage="REQUIRED FIELD" ControlToValidate="Email"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 134px">Phone Number:</td>
            <td>
                <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqPhone" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ControlToValidate="Phone">REQUIRED FIELD</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 24px; width: 134px">Residential Address</td>
            <td style="height: 24px">
                <asp:TextBox ID="Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqAddress" runat="server" Display="Dynamic" ErrorMessage="REQUIRED FIELD" ControlToValidate="Address"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 24px; width: 134px">Country</td>
            <td style="height: 24px">
                <asp:DropDownList ID="ddlCountry" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 134px">&nbsp;</td>
            <td>
                <asp:Button ID="Add" runat="server" Text="ADD" OnClick="Add_Click" />
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

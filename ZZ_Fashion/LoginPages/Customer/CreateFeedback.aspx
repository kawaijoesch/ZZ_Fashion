﻿<%@ Page Title="" Language="C#" MasterPageFile="~/LoginPages/Customer/Customer.master" AutoEventWireup="true" CodeBehind="CreateFeedback.aspx.cs" Inherits="ZZ_Fashion.LoginPages.Customer.CreateFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 192px; height: 81px; font-size: x-large;"><strong>Feedback</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 192px; height: 62px;">Title of Feedback</td>
            <td style="height: 62px">
                <asp:TextBox ID="TitleFeedBack" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 192px; height: 100px;">Message:</td>
            <td style="height: 100px">
                <asp:TextBox ID="FeedBackMsg" runat="server" Height="124px" TextMode="MultiLine" Width="552px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 192px; height: 74px;"></td>
            <td style="height: 74px">
                <asp:FileUpload ID="UploadFeedbackPhoto" runat="server" />
                <br />
                <asp:Image ID="FeedbackImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 192px; height: 51px;"></td>
            <td style="height: 51px">
                <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
                <asp:Label ID="Message" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

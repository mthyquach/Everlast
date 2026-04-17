<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TrackingPage.aspx.cs" Inherits="Everlast.TrackingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            font-size: 20px;
        }
        .auto-style9 {
            font-size: 20px;
        }
        .auto-style11 {
            text-align: center;
            font-size: 20px;
            text-decoration: none;
        }
        .auto-style12 {
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><strong>EVERLAST</strong></h1>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style11" NavigateUrl="~/HomePage.aspx" style="font-size: 20px">Home</asp:HyperLink>
        <span class="auto-style8">&nbsp;|</span><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerForm.aspx" CssClass="auto-style3" style="font-size: 20px; text-decoration: none">Customer Form</asp:HyperLink>
        <span class="auto-style8">&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DesignSessionInfo.aspx" CssClass="auto-style3" style="font-size: 20px; text-decoration: none">Design Session</asp:HyperLink>
        <span class="auto-style8">&nbsp;|
        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style12" NavigateUrl="~/RingDesign.aspx">Ring Design</asp:HyperLink>
&nbsp;| </span><strong>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MyAccount.aspx" CssClass="auto-style3" style="font-size: 20px; text-decoration: none">My Account</asp:HyperLink>
        </strong><span class="auto-style9"><strong>&nbsp;&nbsp;</strong></span></p>
    <p>
        &nbsp;</p>
</asp:Content>

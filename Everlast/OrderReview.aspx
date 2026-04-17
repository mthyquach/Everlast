<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderReview.aspx.cs" Inherits="Everlast.OrderReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            font-size: 20px;
        }
        .auto-style9 {
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <strong>EVERLAST</strong></h1>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style11" NavigateUrl="~/HomePage.aspx" style="text-decoration: none; font-size: 20px">Home</asp:HyperLink>
        <span class="auto-style8">&nbsp;|</span><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerForm.aspx" CssClass="auto-style3" style="font-size: 20px; text-decoration: none">Customer Form</asp:HyperLink>
        <span class="auto-style8">&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DesignSessionInfo.aspx" CssClass="auto-style3" style="font-size: 20px; text-decoration: none">Design Session</asp:HyperLink>
        <span class="auto-style8">&nbsp;|
    <strong>Ring Design</strong>&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MyAccount.aspx" CssClass="auto-style3" style="font-size: 20px; text-decoration: none">My Account</asp:HyperLink>
        <span class="auto-style9">&nbsp;&nbsp;</span></p>
    <p>
        &nbsp;</p>
    </asp:Content>

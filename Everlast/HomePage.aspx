<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Everlast.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <strong>EVERLAST</strong></h1>
    <p>
    Home |<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerForm.aspx">Customer Form</asp:HyperLink>
&nbsp;|
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DesignSessionInfo.aspx">Design Session</asp:HyperLink>
&nbsp;|
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RingDesign.aspx">Ring Design</asp:HyperLink>
&nbsp;|
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MyAccount.aspx">My Account</asp:HyperLink>
&nbsp;</p>
    <p>
        &nbsp;</p>
    <h3>
        Design the Rings that Tell Your Story</h3>
    <p>
        <asp:Image ID="Image1" runat="server" CssClass="auto-style1" />
    </p>
    <p class="auto-style1">
        At Everlast, we believe an engagement ring should be more than a symbol - it should be a story. Every ring we create is handcrafted with intention, blending modern design with timeless romance to capture the moment your forever begings. Using ethically sourced, GIA-certified diamonds and artisan craftmanship, we transform your vision into a piece that is unqiuely yours. This is where love becomes art, and your story becomes Everlast.</p>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RingComponents.aspx.cs" Inherits="Everlast.RingComponents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            font-size: 20px;
        }
        .auto-style12 {
            width: 95%;
            margin: auto;
            background-color: #f7f2f0;
            border: 1px solid #d8caca;
            padding: 20px;
            margin-top: 20px;
        }
        .auto-style13 {
            width: 260px;
            font-size: 18px;
            padding: 8px;
        }
        .auto-style14 {
            font-size: 18px;
            font-weight: bold;
            width: 220px;
            display: inline-block;
        }
        .auto-style15 {
            margin-bottom: 18px;
        }
        .auto-style16 {
            background-color: #b57c7c;
            color: white;
            font-size: 18px;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        .auto-style18 {
            font-size: 28px;
            font-weight: bold;
            color: #b57c7c;
        }
        .auto-style19 {
            font-size: 22px;
            color: #666666;
        }
        .auto-style20 {
            font-size: 18px;
            color: #555555;
            margin-bottom: 25px;
        }
        .auto-style21 {
            width: 787px;
            height: 507px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1><strong>EVERLAST</strong></h1>

    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/HomePage.aspx" style="text-decoration: none; font-size: 20px">Home</asp:HyperLink>
        <span class="auto-style8">&nbsp;|</span>

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerForm.aspx" style="font-size: 20px; text-decoration: none">Customer Form</asp:HyperLink>
        <span class="auto-style8">&nbsp;|</span>

        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DesignSessionInfo.aspx" style="font-size: 20px; text-decoration: none">Design Session</asp:HyperLink>
        <span class="auto-style8">&nbsp;|</span>

        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RingDesign.aspx" style="font-size: 20px; text-decoration: none">Ring Design</asp:HyperLink>
        <span class="auto-style8">&nbsp;| <strong>Ring Add-Ons</strong> |</span>

        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MyAccount.aspx" style="font-size: 20px; text-decoration: none">My Account</asp:HyperLink>
    </p>

    <p class="auto-style18">Ring Add-Ons</p>
    <p class="auto-style18">
        <img alt="" class="auto-style21" src="image/Engraving.JPG" /></p>

    <p class="auto-style19">Add the final details to personalize your ring.</p>

    <div class="auto-style12">

        <p class="auto-style20">
            Complete your custom ring with optional extras and special requests.
        </p>

        <div class="auto-style15">
            <span class="auto-style14">Engraving:</span>
            <asp:TextBox ID="txtEngraving" runat="server" CssClass="auto-style13"></asp:TextBox>
        </div>

        <div class="auto-style15">
            <span class="auto-style14">Add-Ons:</span>
            <asp:DropDownList ID="ddlAddOns" runat="server" CssClass="auto-style13">
                <asp:ListItem>None</asp:ListItem>
                <asp:ListItem>Cleaning Kit</asp:ListItem>
                <asp:ListItem>Warranty Package</asp:ListItem>
                <asp:ListItem>Gift Wrapping</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="auto-style15">
            <span class="auto-style14">Side Stones:</span>
            <asp:DropDownList ID="ddlSideStones" runat="server" CssClass="auto-style13">
                <asp:ListItem>None</asp:ListItem>
                <asp:ListItem>Diamond</asp:ListItem>
                <asp:ListItem>Sapphire</asp:ListItem>
                <asp:ListItem>Ruby</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="auto-style15">
            <span class="auto-style14">Ring Box:</span>
            <asp:DropDownList ID="ddlRingBox" runat="server" CssClass="auto-style13">
                <asp:ListItem>Standard Box</asp:ListItem>
                <asp:ListItem>Luxury Velvet Box</asp:ListItem>
                <asp:ListItem>LED Light Box</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="auto-style15">
            <span class="auto-style14">Special Request:</span>
            <asp:TextBox ID="txtSpecialRequest" runat="server" CssClass="auto-style13" TextMode="MultiLine" Rows="4"></asp:TextBox>
        </div>

        <div class="auto-style15">
            <asp:Button ID="btnContinueToShipping" runat="server"
                Text="Continue to Shipping &amp; Payment"
                CssClass="auto-style16"
                OnClick="btnContinueToShipping_Click" />
        </div>

    </div>

</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RingDesign.aspx.cs" Inherits="Everlast.RingDesign" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            font-size: 20px;
        }
        .auto-style9 {
            font-size: 20px;
        }
        .auto-style10 {
            width: 1009px;
            height: 523px;
        }
    .auto-style12 {
            width: 1109px;
            background-color: #f7f2f0;
            border: 1px solid #d8caca;
            padding: 20px;
            margin-top: 20px;
        }
        .auto-style13 {
            width: 250px;
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
        }
        .auto-style17 {
            width: 1109px;
            background-color: #fffdfc;
            border: 1px solid #d8caca;
            padding: 20px;
            margin-top: 20px;
            font-size: 20px;
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
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><strong>EVERLAST</strong></h1>
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
        <span class="auto-style9">&nbsp;&nbsp;</span>
    </p>

    <p class="auto-style18">
        Design Your Ring
    </p>

    <img alt="" class="auto-style10" src="image/ring%20design%20header.JPG" />

    <p class="auto-style19">
        Create a ring that tells your story.
    </p>

    <div class="auto-style12">

        <div class="auto-style15">
            <span class="auto-style14">Ring Style:</span>
            <asp:DropDownList ID="ddlStyle" runat="server" CssClass="auto-style13" OnSelectedIndexChanged="ddlStyle_SelectedIndexChanged">
                <asp:ListItem>Solitaire</asp:ListItem>
                <asp:ListItem>Halo</asp:ListItem>
                <asp:ListItem>Vintage</asp:ListItem>
                <asp:ListItem>Three-Stone</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="auto-style15">
            <span class="auto-style14">Metal Type:</span>
            <asp:DropDownList ID="ddlMetal" runat="server" CssClass="auto-style13">
                <asp:ListItem>White Gold</asp:ListItem>
                <asp:ListItem>Yellow Gold</asp:ListItem>
                <asp:ListItem>Rose Gold</asp:ListItem>
                <asp:ListItem>Platinum</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="auto-style15">
            <span class="auto-style14">Stone Type:</span>
            <asp:DropDownList ID="ddlStone" runat="server" CssClass="auto-style13">
                <asp:ListItem>Diamond</asp:ListItem>
                <asp:ListItem>Ruby</asp:ListItem>
                <asp:ListItem>Sapphire</asp:ListItem>
                <asp:ListItem>Emerald</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="auto-style15">
            <span class="auto-style14">Ring Size:</span>
            <asp:DropDownList ID="ddlSize" runat="server" CssClass="auto-style13" OnSelectedIndexChanged="ddlSize_SelectedIndexChanged">
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="auto-style15">
            <span class="auto-style14">Engraving:</span>
            <asp:TextBox ID="txtEngraving" runat="server" CssClass="auto-style13"></asp:TextBox>
        </div>

        <div class="auto-style15">
            <asp:Button ID="btnShowDesign" runat="server" Text="Show My Design" CssClass="auto-style16" OnClick="btnShowDesign_Click" />
        </div>

    </div>

    <div class="auto-style17">
        <strong>Your Design Summary:</strong><br /><br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </div>

    <div style="text-align:center; margin-top:20px;">
        <asp:Button ID="btnProceed" runat="server"
            Text="Proceed to Shipping &amp; Payment"
            CssClass="auto-style16"
            OnClick="btnProceed_Click" />
    </div>
</asp:Content>
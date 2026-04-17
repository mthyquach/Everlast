<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Everlast.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    .auto-style3 {
            text-decoration: none;
            font-size: 20px;
        }
    
        .everlast-footer {
            width: 820px;
            margin: 0 auto;
            overflow: hidden;
            color: #7a7a7a;
            font-size: 14px;
        }

        .footer-logo {
            float: left;
            width: 160px;
            height: 48px;
            border: 1px solid #bfbfbf;
            text-align: center;
            line-height: 48px;
            font-size: 16px;
            color: #767676;
            margin-top: 12px;
        }

        .footer-col {
            float: left;
            margin-left: 70px;
            line-height: 2;
        }

        .footer-col-title {
            font-weight: 500;
            margin-bottom: 4px;
        }

        .clear {
            clear: both;
        }
        .auto-style4 {
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <strong>EVERLAST</strong></h1>
    <p>
        <strong><span class="auto-style4">Home</span></strong><span class="auto-style4"> |</span><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerForm.aspx" CssClass="auto-style3">Customer Form</asp:HyperLink>
        <span class="auto-style4">&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DesignSessionInfo.aspx" CssClass="auto-style3">Design Session</asp:HyperLink>
        <span class="auto-style4">&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RingDesign.aspx" CssClass="auto-style3">Ring Design</asp:HyperLink>
        <span class="auto-style4">&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MyAccount.aspx" CssClass="auto-style3">My Account</asp:HyperLink>
&nbsp;</p>
    <p>
        &nbsp;</p>
    <h2>
        Design the Rings that Tell Your Story</h2>
    <p>
        <asp:Image ID="Image1" runat="server" CssClass="auto-style1" ImageUrl="~/image/ring.jpg" />
    </p>
    <p class="auto-style1">
        At Everlast, we believe an engagement ring should be more than a symbol - it should be a story. Every ring we create is handcrafted with intention, blending modern design with timeless romance to capture the moment your forever begings. Using ethically sourced, GIA-certified diamonds and artisan craftmanship, we transform your vision into a piece that is unqiuely yours. This is where love becomes art, and your story becomes Everlast.</p>
<p class="auto-style1">
        <asp:Button ID="btnRing" runat="server" OnClick="btnRing_Click" Text="Start Designing Your Ring" BackColor="White" BorderColor="RosyBrown" BorderStyle="Double" style="font-size: medium" />
</p>

        <div class="everlast-footer">
            <div class="footer-logo">Everlast</div>

            <div class="footer-col">
                <div class="footer-col-title">Customer Service</div>
                <div>Shipping &amp; Return</div>
                <div>Warranty</div>
                <div>Financing options</div>
            </div>

            <div class="footer-col">
                <div class="footer-col-title">FAQs</div>
                <div>About Everlast</div>
                <div>Contact</div>
                <div>Social Media</div>
            </div>

            <div class="clear"></div>
        </div>
    </asp:Content>


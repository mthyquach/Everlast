<%@ Page Title="Design Session Information" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="DesignSessionInfo.aspx.cs" Inherits="Everlast.DesignSessionInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .everlast-page {
            width: 1000px;
            margin: 0 auto;
            padding: 20px 0 40px 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #6a6a6a;
        }

        .everlast-title {
            text-align: center;
            font-size: 20px;
            font-weight: 400;
            color: #6f6f6f;
            margin: 18px 0 12px 0;
        }

        .everlast-divider {
            border: none;
            border-top: 1px solid #dddddd;
            margin: 0 25px 25px 25px;
        }

        .info-wrap {
            width: 500px;
            margin: 45px auto 100px auto;
            font-size: 16px;
            color: #6e6e6e;
        }

        .info-row {
            margin-bottom: 16px;
        }

        .value-line {
            display: inline-block;
            min-width: 230px;
            border-bottom: 1px solid #9a9a9a;
            padding-bottom: 3px;
            color: #555;
        }

        .indented {
            margin-left: 30px;
        }

        .button-row {
            width: 500px;
            margin: 45px auto 120px auto;
            text-align: center;
        }

        .action-btn {
            width: 155px;
            height: 40px;
            border: 1px solid #d2d2d2;
            background-color: white;
            color: #6b6b6b;
            font-size: 14px;
            cursor: pointer;
            margin: 0 35px;
        }

        .message-label {
            display: block;
            text-align: center;
            margin-top: 14px;
            color: #b00020;
            font-size: 14px;
        }

        .footer-divider {
            border: none;
            border-top: 1px solid #dddddd;
            margin: 22px 25px 25px 25px;
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
        .auto-style2 {
            text-decoration: none;
        }
        .auto-style5 {
            font-size: 20px;
        }
    </style>

    <div class="everlast-page">
        <div class="everlast-title">
            <h1>EVERLAST</h1>
            <p>
                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style2" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
                <span class="auto-style5">&nbsp;|
                <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style2" NavigateUrl="~/CustomerForm.aspx">Customer Form</asp:HyperLink>
&nbsp;|
    <strong>Design Session</strong>&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RingDesign.aspx" style="text-decoration: none">Ring Design</asp:HyperLink>
&nbsp;|
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MyAccount.aspx" style="text-decoration: none">My Account</asp:HyperLink>
&nbsp;<strong><br />
                </strong>
            </p>
        </div>
        <hr class="everlast-divider" />

        <div class="info-wrap">
            <div class="info-row">
                Customer Name:
                <span class="value-line"><asp:Label ID="lblCustomerName" runat="server" /></span>
            </div>

            <div class="info-row">
                Assigned Team:
                <span class="value-line"><asp:Label ID="lblAssignedTeam" runat="server" /></span>
            </div>

            <div class="info-row indented">
                Designer:
                <span class="value-line"><asp:Label ID="lblDesigner" runat="server" /></span>
            </div>

            <div class="info-row indented">
                Consultant:
                <span class="value-line"><asp:Label ID="lblConsultant" runat="server" /></span>
            </div>
        </div>

        <div class="button-row">
            <asp:Button ID="btnChatBox" runat="server" Text="Chat Box" CssClass="action-btn" OnClick="btnChatBox_Click" />
            <asp:Button ID="btnStartDesign" runat="server" Text="Start Design" CssClass="action-btn" OnClick="btnStartDesign_Click" />
            <asp:Label ID="lblDesignMessage" runat="server" CssClass="message-label" />
        </div>

        <hr class="footer-divider" />

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
    </div>

</asp:Content>
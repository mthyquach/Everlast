<%@ Page Title="Customer Form" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="CustomerForm.aspx.cs" Inherits="Everlast.CustomerForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="everlast-page">
        <div class="everlast-title">    <h1>
        <strong>EVERLAST</strong></h1>
            <p>
                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style4" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
                <span class="auto-style2">&nbsp;| <strong>Customer Form</strong>&nbsp;|
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DesignSessionInfo.aspx" CssClass="auto-style3">Design Session</asp:HyperLink>
&nbsp;|
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RingDesign.aspx" CssClass="auto-style3">Ring Design</asp:HyperLink>
&nbsp;|
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MyAccount.aspx" CssClass="auto-style3">My Account</asp:HyperLink>
                </span>
            </p>
        </div>
        <hr class="everlast-divider" />
        <div class="everlast-subtitle">
            <h2>Customer Form</h2>
        </div>

        <div class="form-wrap">
            <div class="section-heading">1. About the Couple</div>

            <div class="question-row">
                Your Name:
                <asp:TextBox ID="txtYourName" runat="server" CssClass="inline-box short-box" />
            </div>

            <div class="question-row">
                Partner’s Name:
                <asp:TextBox ID="txtPartnerName" runat="server" CssClass="inline-box short-box" />
            </div>

            <div class="question-row">
                How long have you’ve been together:
                <asp:TextBox ID="txtHowLongTogether" runat="server" CssClass="inline-box medium-box" />
            </div>

            <div class="question-row">
                How you met:
                <asp:TextBox ID="txtHowYouMet" runat="server" CssClass="inline-box short-box" />
            </div>

            <div class="question-row">
                A moment that defines your relationship:
                <asp:TextBox ID="txtRelationshipMoment" runat="server" CssClass="inline-box medium-box" />
            </div>

            <div class="section-heading">2. The Proposal Vision</div>

            <div class="question-row">
                Do you have a proposal planned? [Yes/Not yet]
                <asp:DropDownList ID="ddlProposalPlanned" runat="server" CssClass="inline-box short-box">
                    <asp:ListItem Text="" Value="" />
                    <asp:ListItem Text="Yes" Value="Yes" />
                    <asp:ListItem Text="Not yet" Value="Not yet" />
                </asp:DropDownList>
            </div>

            <div class="question-row">
                If yes, tell us about it:
                <asp:TextBox ID="txtProposalDetails" runat="server" CssClass="inline-box long-box" />
            </div>

            <div class="question-row">
                What feeling do you want the moment to have?
                <asp:TextBox ID="txtProposalFeeling" runat="server" CssClass="inline-box medium-box" />
            </div>

            <div class="section-heading">3. Their Style &amp; Personality</div>

            <div class="question-row">
                How would you describe your partner’s style?
                <asp:TextBox ID="txtPartnerStyle" runat="server" CssClass="inline-box short-box" />
            </div>

            <div class="question-row">
                What jewelry do they usually wear?
                <asp:TextBox ID="txtJewelryWear" runat="server" CssClass="inline-box short-box" />
            </div>

            <div class="question-row">
                Any design elements they love or dislike?
                <asp:TextBox ID="txtDesignLikesDislikes" runat="server" CssClass="inline-box short-box" />
            </div>

            <div class="section-heading">4. The Meaning Behind the Ring</div>

            <div class="question-row">
                What does the ring represent for you? [short paragraph]
                <br />
                <asp:TextBox ID="txtRingMeaning" runat="server" TextMode="MultiLine" CssClass="multi-box" />
            </div>

            <div class="question-row">
                Is there a special meaning or symbol you want incorporated?
                <asp:TextBox ID="txtSpecialMeaning" runat="server" CssClass="inline-box short-box" />
            </div>

            <div class="question-row">
                Any words or phrases that capture your love story?
                <asp:TextBox ID="txtLoveStoryWords" runat="server" CssClass="inline-box medium-box" />
            </div>

            <div class="section-heading">5. Personal Touches</div>

            <div class="question-row">
                Engraving message:
                <asp:TextBox ID="txtEngravingMessage" runat="server" CssClass="inline-box medium-box" />
            </div>

            <div class="question-row">
                Important dates:
                <asp:TextBox ID="txtImportantDates" runat="server" CssClass="inline-box medium-box" />
            </div>

            <div class="question-row">
                Favorite places or memories together:
                <asp:TextBox ID="txtFavoritePlaces" runat="server" CssClass="inline-box medium-box" />
            </div>

            <div class="question-row">
                Preferred packaging style:
                <asp:TextBox ID="txtPackagingStyle" runat="server" CssClass="inline-box medium-box" />
            </div>

            <div class="submit-row">
                <asp:Button ID="btnSubmitForm" runat="server" Text="Submit Form" CssClass="submit-btn" OnClick="btnSubmitForm_Click" />
            </div>

            <asp:Label ID="lblMessage" runat="server" CssClass="message-label" />
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
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            font-size: 20px;
        }
        .auto-style3 {
            text-decoration: none;
        }
        .auto-style4 {
            text-decoration: none;
            font-size: 20px;
        }
    </style>
</asp:Content>

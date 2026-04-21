<%@ Page Title="Order Tracking" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="TrackingPage.aspx.cs" Inherits="Everlast.TrackingPage" %>
<%@ Import Namespace="System" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Keep styles simple so your GLOBAL StyleSheet1.css controls the theme */
        .card { max-width: 900px; margin: 0 auto; padding: 18px; border: 1px solid #ddd; border-radius: 10px; background: floralwhite; }
        .muted { color: rosybrown; }
        .step { display:flex; gap:10px; align-items:center; padding:10px 0; border-bottom:1px solid #eee; text-align:left; }
        .dot { width:12px; height:12px; border-radius:50%; background:#bbb; }
        .done .dot { background:#2e7d32; }
        .current .dot { background:#1565c0; }
        .pill { display:inline-block; padding:4px 10px; border-radius:999px; background:#f2f2f2; font-size:12px; color:black; }
        .navRow { display:flex; gap:10px; margin: 10px 0 16px; flex-wrap:wrap; justify-content:center; }
        .auto-style8 { text-align: center; font-size: 20px; font-family: 'Open Sans', sans-serif; }
        .newStyle1, .newStyle2, .newStyle3, .newStyle4, .newStyle5, .newStyle7, .newStyle8, .newStyle9, .o { font-family: "Open Sans", sans-serif; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1><strong>EVERLAST</strong></h1>

    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/HomePage.aspx" style="font-size: 20px; text-decoration: none">Home</asp:HyperLink>
        <span class="auto-style8">&nbsp;|</span>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerForm.aspx" style="font-size: 20px; text-decoration: none">Customer Form</asp:HyperLink>
        <span class="auto-style8">&nbsp;|</span>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DesignSessionInfo.aspx" style="font-size: 20px; text-decoration: none">Design Session</asp:HyperLink>
        <span class="auto-style8">&nbsp;| <strong>Ring Design</strong> &nbsp;|</span>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MyAccount.aspx" style="font-size: 20px; text-decoration: none">My Account</asp:HyperLink>
    </p>

    <h2>Order Tracking</h2>
    <p class="muted">Track your ring through Concept → Design → Production → Packaging → Delivery.</p>

    <div class="navRow">
        <!-- MUST match your real filename -->
        <a href="OrderReview.aspx">Back to Order Review</a>
    </div>

    <asp:Label ID="lblMsg" runat="server" ForeColor="Red" />

    <div class="card">
        <p>
            <span class="newStyle1">Order ID:</span>
            <asp:TextBox ID="txtOrderId" runat="server" Width="160px" />
            <asp:RequiredFieldValidator ID="rfvOrder" runat="server"
                ControlToValidate="txtOrderId" ErrorMessage="Order ID required."
                ForeColor="Red" Display="Dynamic" />
            &nbsp;
            <!-- no CssClass needed; your global button style will apply -->
            <asp:Button ID="btnTrack" runat="server" Text="Track" OnClick="btnTrack_Click" />
        </p>

        <p>
            <span class="newStyle2">Current Status:</span>
            <asp:Label ID="lblStatus" runat="server" Text="—" CssClass="pill" />
            <span class="newStyle2"><br />Tracking #:</span>
            <asp:Label ID="lblTracking" runat="server" Text="Not available yet" />
        </p>

        <h3><span class="newStyle3">Progress</span></h3>

        <asp:Panel ID="pnlSteps" runat="server" Visible="false">
            <div id="s1" runat="server" class="step"><div class="dot"></div><div><div class="newStyle4"><strong>Concept</strong></div><div class="newStyle4">Order received and confirmed</div></div></div>
            <div id="s2" runat="server" class="step"><div class="dot"></div><div><div class="newStyle5"><strong>Design</strong></div><div class="newStyle5">Ring design finalized</div></div></div>
            <div id="s3" runat="server" class="step"><div class="dot"></div><div class="o"><div class="newStyle7"><strong>Production</strong></div><div class="newStyle7">Crafting and stone setting</div></div></div>
            <div id="s4" runat="server" class="step"><div class="dot"></div><div><div class="newStyle8"><strong>Packaging</strong></div><div class="newStyle8">Quality check and packaging</div></div></div>
            <div id="s5" runat="server" class="step"><div class="dot"></div><div><div class="newStyle9"><strong>Delivery</strong></div><div class="newStyle9">Shipped and out for delivery</div></div></div>
        </asp:Panel>

        <div class="navRow" style="margin-top:16px;">
            <a href="OrderReview.aspx">Back to Order Review</a>
        </div>
    </div>

</asp:Content>
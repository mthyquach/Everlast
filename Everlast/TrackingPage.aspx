<%@ Page Title="Order Tracking" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" %>
<%@ Import Namespace="System" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card { max-width: 900px; padding: 18px; border: 1px solid #ddd; border-radius: 10px; background: #fff; font: 'Open Sans', sans-serif}
        .muted { color: #666; }
        .btn { padding: 10px 14px; border: 1px solid #333; background: #111; color: #fff; border-radius: 8px; cursor: pointer; }
        .btnLink { padding: 10px 14px; border: 1px solid #333; background: #fff; color: #111; border-radius: 8px; text-decoration:none; display:inline-block; }
        .step { display:flex; gap:10px; align-items:center; padding:10px 0; border-bottom:1px solid #eee; }
        .dot { width:12px; height:12px; border-radius:50%; background:#bbb; }
        .done .dot { background:#2e7d32; }
        .current .dot { background:#1565c0; }
        .label { font-weight:600; }
        .pill { display:inline-block; padding:4px 10px; border-radius:999px; background:#f2f2f2; font-size:12px; }
        .navRow { display:flex; gap:10px; margin: 10px 0 16px; flex-wrap:wrap; }
        .auto-style8 {
            text-align: center;
            font-size: 20px;
            font-family: 'Open Sans', sans-serif;
        }
        .newStyle1 {
            font-family: "Open Sans";
        }
        .newStyle2 {
            font-family: "open Sans";
        }
        .newStyle3 {
            font-family: "Open Sans";
        }
        .newStyle4 {
            font-family: "Open Sans";
        }
        .newStyle5 {
            font-family: "Open Sans";
        }
        .newStyle6 {
            font-family: "open Sans";
        }
        .o {
            font-family: "open sans";
        }
        .newStyle7 {
            font-family: "open Sans";
        }
        .newStyle8 {
            font-family: "open Sans";
        }
        .newStyle9 {
            font-family: "open sans";
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>
        <strong>EVERLAST</strong></h1>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style11" NavigateUrl="~/HomePage.aspx" style="font-size: 20px; text-decoration: none">Home</asp:HyperLink>
        <span class="auto-style8">&nbsp;|</span><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerForm.aspx" CssClass="auto-style3" style="font-size: 20px; text-decoration: none">Customer Form</asp:HyperLink>
        <span class="auto-style8">&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DesignSessionInfo.aspx" CssClass="auto-style3" style="font-size: 20px; text-decoration: none">Design Session</asp:HyperLink>
        <span class="auto-style8">&nbsp;|
    <strong>Ring Design</strong>&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MyAccount.aspx" CssClass="auto-style3" style="font-size: 20px; text-decoration: none">My Account</asp:HyperLink>
&nbsp;</p>
    <h2>Order Tracking</h2>
    <p class="muted">Track your ring through Concept → Design → Production → Packaging → Delivery.</p>

    <!-- LINKS (already included) -->
    <div class="navRow">
        <a class="btnLink" href="order_review.aspx">Back to Order Review</a>
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
            <asp:Button ID="btnTrack" runat="server" Text="Track" CssClass="btn" OnClick="btnTrack_Click" />
        </p>

        <p>
            <span class="newStyle2">Current Status:</span>
            <asp:Label ID="lblStatus" runat="server" Text="—" CssClass="pill" />
            <span class="newStyle2">
            <br />
            Tracking #:</span>
            <asp:Label ID="lblTracking" runat="server" Text="Not available yet" />
        </p>

        <h3><span class="newStyle3">Progress</span></h3>

        <asp:Panel ID="pnlSteps" runat="server" Visible="false">
            <div id="s1" runat="server" class="step"><div class="dot"></div><div><div class="newStyle4"><strong>Concept</strong></div><div class="newStyle4">Order received and confirmed</div></div></div>
            <div id="s2" runat="server" class="step"><div class="dot"></div><div style="font-family: 'Open Sans'"><div class="newStyle5"><strong>Design</strong></div><div class="newStyle5">Ring design finalized</div></div></div>
            <div id="s3" runat="server" class="step"><div class="dot"></div><div class="o"><div class="newStyle7"><strong>Production</strong></div><div class="newStyle7">Crafting and stone setting</div></div></div>
            <div id="s4" runat="server" class="o"><div class="dot"></div><div><div class="newStyle8"><strong>Packaging</strong></div><div class="newStyle8">Quality check and packaging</div></div></div>
            <div id="s5" runat="server" class="o"><div class="dot"></div><div><div class="newStyle9"><strong>Delivery</strong></div><div class="newStyle9">Shipped and out for delivery</div></div></div>
        </asp:Panel>

        <!-- LINKS again at bottom -->
        <div class="navRow" style="margin-top:16px;">
            <a class="btnLink" href="order_review.aspx">Back to Order Review</a>
        </div>
    </div>

</asp:Content>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        // "Safe" protection: if your site sets Session["IsAuth"]=true after login, this blocks direct URL access.
        // If your final project does NOT use Session, remove this block.
        if (Session["IsAuth"] == null || (bool)Session["IsAuth"] != true)
        {
            Response.Redirect("Default.aspx");
            return;
        }
    }

    protected void btnTrack_Click(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        Page.Validate();
        if (!Page.IsValid) return;

        pnlSteps.Visible = true;

        // Demo status (UI-only)
        string status = "Production";
        lblStatus.Text = status;

        // No tracking until shipped
        lblTracking.Text = "Not available yet";

        SetStepClasses(status);
    }

    private void SetStepClasses(string status)
    {
        s1.Attributes["class"] = "step";
        s2.Attributes["class"] = "step";
        s3.Attributes["class"] = "step";
        s4.Attributes["class"] = "step";
        s5.Attributes["class"] = "step";

        int idx = 0;
        string s = (status ?? "").ToLower();
        if (s.Contains("design")) idx = 1;
        else if (s.Contains("production")) idx = 2;
        else if (s.Contains("pack")) idx = 3;
        else if (s.Contains("deliver") || s.Contains("ship")) idx = 4;

        var steps = new System.Web.UI.HtmlControls.HtmlGenericControl[] { s1, s2, s3, s4, s5 };
        for (int i = 0; i < steps.Length; i++)
        {
            if (i < idx) steps[i].Attributes["class"] = "step done";
            else if (i == idx) steps[i].Attributes["class"] = "step current";
        }
    }
</script>
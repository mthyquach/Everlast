<%@ Page Title="Order Review" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" %>
<%@ Import Namespace="System" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card { max-width: 900px; padding: 18px; border: 1px solid #ddd; border-radius: 10px; background: #fff; }
        .row { display: flex; gap: 18px; flex-wrap: wrap; }
        .col { flex: 1; min-width: 260px; }
        .label { font-weight: 600; }
        .muted { color: #666; }
        .btn { padding: 10px 14px; border: 1px solid #333; background: #111; color: #fff; border-radius: 8px; cursor: pointer; }
        .btnLink { padding: 10px 14px; border: 1px solid #333; background: #fff; color: #111; border-radius: 8px; text-decoration:none; display:inline-block; }
        th, td { border-bottom: 1px solid #eee; padding: 10px; text-align: left; }
        th { background: #fafafa; }
        .pill { display:inline-block; padding: 4px 10px; border-radius: 999px; background:#f2f2f2; font-size: 12px; }
        .topActions { display:flex; gap:10px; align-items:center; justify-content:space-between; flex-wrap:wrap; }
        .navRow { display:flex; gap:10px; margin: 10px 0 16px; flex-wrap:wrap; }
        .auto-style8 {
            text-align: center;
            font-size: 20px;
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
    <h2>Order Review</h2>
    <p class="muted">Review your order details and ring specifications.</p>

    <!-- LINKS (already included) -->
    <div class="navRow">
        <a class="btnLink" href="order_tracking.aspx">Go to Order Tracking</a>
    </div>

    <asp:Label ID="lblMsg" runat="server" ForeColor="Red" />

    <div class="card">

        <div class="topActions">
            <div>
                <span class="label">Order ID:</span>
                <asp:TextBox ID="txtOrderId" runat="server" Width="160px" />
                <asp:RequiredFieldValidator ID="rfvOrder" runat="server"
                    ControlToValidate="txtOrderId" ErrorMessage="Order ID required."
                    ForeColor="Red" Display="Dynamic" />
            </div>

            <asp:Button ID="btnFind" runat="server" Text="Find Order" CssClass="btn" OnClick="btnFind_Click" />
        </div>

        <hr />

        <div class="row">
            <div class="col">
                <div><span class="label">Status:</span> <asp:Label ID="lblStatus" runat="server" Text="—" CssClass="pill" /></div>
                <div style="margin-top:8px;"><span class="label">Order Date:</span> <asp:Label ID="lblDate" runat="server" Text="—" /></div>
                <div style="margin-top:8px;"><span class="label">Total:</span> <asp:Label ID="lblTotal" runat="server" Text="—" /></div>
            </div>

            <div class="col">
                <div class="label">Shipping</div>
                <div class="muted"><asp:Label ID="lblShip" runat="server" Text="—" /></div>

                <div style="margin-top:10px;" class="label">Payment</div>
                <div class="muted"><asp:Label ID="lblPay" runat="server" Text="—" /></div>
            </div>
        </div>

        <h3 style="margin-top:18px;">Items</h3>

        <asp:GridView ID="gvItems" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="Item" DataField="Item" />
                <asp:BoundField HeaderText="Details" DataField="Details" />
                <asp:BoundField HeaderText="Qty" DataField="Qty" />
                <asp:BoundField HeaderText="Price" DataField="Price" />
            </Columns>
        </asp:GridView>

        <!-- LINKS again at bottom -->
        <div class="navRow" style="margin-top:16px;">
            <a class="btnLink" href="order_tracking.aspx">Go to Order Tracking</a>
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

    protected void btnFind_Click(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        Page.Validate();
        if (!Page.IsValid) return;

        // Demo values (UI-only)
        lblStatus.Text = "Processing";
        lblDate.Text = DateTime.Now.AddDays(-2).ToShortDateString();
        lblTotal.Text = "$3,250.00";
        lblShip.Text = "Free insured shipping • 3–5 business days";
        lblPay.Text = "Card ending in 1234";

        var dt = new System.Data.DataTable();
        dt.Columns.Add("Item");
        dt.Columns.Add("Details");
        dt.Columns.Add("Qty");
        dt.Columns.Add("Price");

        dt.Rows.Add("Custom Engagement Ring", "Oval cut • 14K gold • Size 6", "1", "$3,100.00");
        dt.Rows.Add("Engraving Add-on", "\"Everlast\"", "1", "$75.00");
        dt.Rows.Add("Warranty", "Everlast care plan", "1", "$75.00");

        gvItems.DataSource = dt;
        gvItems.DataBind();
    }
</script>
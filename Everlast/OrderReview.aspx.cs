using System;
using System.Data;

namespace Everlast
{
    public partial class OrderReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAuth"] == null || (bool)Session["IsAuth"] != true)
            {
                Response.Redirect("LoginPage.aspx");
                return;
            }
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "";
            Page.Validate();
            if (!Page.IsValid) return;

            lblStatus.Text = "Processing";
            lblDate.Text = DateTime.Now.AddDays(-2).ToShortDateString();
            lblTotal.Text = "$3,250.00";
            lblShip.Text = "Free insured shipping • 3–5 business days";
            lblPay.Text = "Card ending in 1234";

            DataTable dt = new DataTable();
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
    }
}
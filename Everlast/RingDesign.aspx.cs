using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Everlast
{
    public partial class RingDesign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlStyle_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlSize_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnShowDesign_Click(object sender, EventArgs e)
        {
            string style = ddlStyle.SelectedValue;
            string metal = ddlMetal.SelectedValue;
            string stone = ddlStone.SelectedValue;
            string size = ddlSize.SelectedValue;
            string engraving = txtEngraving.Text.Trim();

            lblResult.Text = "You selected a <b>" + style + "</b> ring in <b>" + metal +
                             "</b> with <b>" + stone + "</b>, size <b>" + size + "</b>.";

            if (engraving != "")
            {
                lblResult.Text += "<br/><br/>Engraving: <b>" + engraving + "</b>";
            }
            else
            {
                lblResult.Text += "<br/><br/>Engraving: <b>None</b>";
            }
        }
        protected void btnProceed_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShippingPayment.aspx");
        }
    }
}
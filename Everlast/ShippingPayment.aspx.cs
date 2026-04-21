using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Everlast
{
    public partial class ShippingPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            // Save all textboxes to Session
            Session["FName"] = txtFName.Text;
            Session["LName"] = txtLName.Text;
            Session["Email"] = txtEmail.Text;
            Session["Address"] = txtAddress.Text;
            Session["City"] = txtCity.Text;
            Session["State"] = txtState.Text;
            Session["Country"] = txtCountry.Text;
            Session["Zip"] = txtZip.Text;
            Session["PhoneNum"] = txtPhoneNum.Text;

            Session["CardName"] = txtCardName.Text;
            Session["CardNum"] = txtCardNum.Text;
            Session["ExpDate"] = txtExpDate.Text;
            Session["SecurityCode"] = txtSecurityCode.Text; 

            // Redirect user
            Response.Redirect("OrderConfirmation.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFName.Text = string.Empty;
            txtLName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtState.Text = string.Empty;
            txtCountry.Text = string.Empty;
            txtZip.Text = string.Empty;
            txtPhoneNum.Text = string.Empty;
            txtCardName.Text = string.Empty;
            txtCardNum.Text = string.Empty;
            txtExpDate.Text = string.Empty;
            txtSecurityCode.Text = string.Empty;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Everlast
{
    public partial class OrderConfirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["First Name"] != null)
            {
                // Pull the data
                lblFName.Text = Session["First Name"].ToString();
            }

            if (Session["Last Name"] != null)
            {
                // Pull the data
                lblLName.Text = Session["Last Name"].ToString();
            }

            if (Session["Email Address"] != null)
            {
                // Pull the data
                lblEmail.Text = Session["Email Addess"].ToString();
            }

            if (Session["Street Address"] != null)
            {
                lblAddress.Text = Session["Street Address"].ToString();
            }

            if (Session["City"] != null)
            {
                lblCity.Text = Session["City"].ToString();
            }

            if (Session["State"] != null)
            {
                lblState.Text = Session["State"].ToString();
            }

            if (Session["Country"] != null)
            {
                lblCountry.Text = Session["Country"].ToString();
            }

            if (Session["Zip Code"] != null)
            {
                lblZip.Text = Session["Zip Code"].ToString();
            }

            if (Session["Phone Number"] != null)
            {
                lblPhoneNum.Text = Session["Phone Number"].ToString();
            }

            if (Session["Name on Card"] != null)
            {
                lblCardName.Text = Session["Name on Card"].ToString();
            }

            if (Session["Card Number"] != null)
            {
                lblCardNum.Text = Session["Card Number"].ToString();
            }

            if (Session["Expiration Date"] != null)
            {
                lblExpDate.Text = Session["Expiration Date"].ToString();
            }

            if (Session["Security Code"] != null)
            {
                lblSecurityCode.Text = Session["Security Code"].ToString();
            }

            //if (Session["SubTotal"] != null)
            //{
                //lblTotal.Text = Session["SubTotal"].ToString();
            //}
        }
    }
}
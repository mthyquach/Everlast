using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Everlast
{
    public partial class RingComponents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnContinueToShipping_Click(object sender, EventArgs e)
        {
            string engraving = txtEngraving.Text.Trim();
            string addOns = ddlAddOns.SelectedValue;
            string sideStones = ddlSideStones.SelectedValue;
            string ringBox = ddlRingBox.SelectedValue;
            string specialRequest = txtSpecialRequest.Text.Trim();

            string connStr = ConfigurationManager.ConnectionStrings["EverlastConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = @"INSERT INTO RingComponents
                                (Engraving, AddOns, SideStones, RingBox, SpecialRequest)
                                VALUES
                                (@Engraving, @AddOns, @SideStones, @RingBox, @SpecialRequest)";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@Engraving", engraving);
                cmd.Parameters.AddWithValue("@AddOns", addOns);
                cmd.Parameters.AddWithValue("@SideStones", sideStones);
                cmd.Parameters.AddWithValue("@RingBox", ringBox);
                cmd.Parameters.AddWithValue("@SpecialRequest", specialRequest);

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            Response.Redirect("ShippingPayment.aspx");
        }
    }
}
using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

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
            string shape = ddlShape.SelectedValue;
            string caratSize = ddlCaratSize.SelectedValue;
            string caratWeight = ddlCaratWeight.SelectedValue;
            string setting = ddlSetting.SelectedValue;
            string bandStyle = ddlBandStyle.SelectedValue;
            string prongStyle = ddlProngStyle.SelectedValue;

            string connStr = ConfigurationManager.ConnectionStrings["EverlastConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = @"INSERT INTO RingDesign
                                (RingStyle, MetalType, StoneType, RingSize, StoneShape, CaratSize, CaratWeight, SettingStyle, BandStyle, ProngStyle)
                                VALUES
                                (@RingStyle, @MetalType, @StoneType, @RingSize, @StoneShape, @CaratSize, @CaratWeight, @SettingStyle, @BandStyle, @ProngStyle)";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@RingStyle", style);
                cmd.Parameters.AddWithValue("@MetalType", metal);
                cmd.Parameters.AddWithValue("@StoneType", stone);
                cmd.Parameters.AddWithValue("@RingSize", size);
                cmd.Parameters.AddWithValue("@StoneShape", shape);
                cmd.Parameters.AddWithValue("@CaratSize", caratSize);
                cmd.Parameters.AddWithValue("@CaratWeight", caratWeight);
                cmd.Parameters.AddWithValue("@SettingStyle", setting);
                cmd.Parameters.AddWithValue("@BandStyle", bandStyle);
                cmd.Parameters.AddWithValue("@ProngStyle", prongStyle);

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            lblResult.Text =
                "Ring Style: <b>" + style + "</b><br/>" +
                "Metal: <b>" + metal + "</b><br/>" +
                "Stone: <b>" + stone + "</b><br/>" +
                "Ring Size: <b>" + size + "</b><br/>" +
                "Stone Shape: <b>" + shape + "</b><br/>" +
                "Carat Size: <b>" + caratSize + "</b><br/>" +
                "Carat Weight: <b>" + caratWeight + "</b><br/>" +
                "Setting Style: <b>" + setting + "</b><br/>" +
                "Band Style: <b>" + bandStyle + "</b><br/>" +
                "Prong Style: <b>" + prongStyle + "</b>";
        }

        protected void btnProceed_Click(object sender, EventArgs e)
        {
            Response.Redirect("RingComponents.aspx");
        }
    }
}
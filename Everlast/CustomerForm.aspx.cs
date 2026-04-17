using System;
using System.Web.UI;

namespace Everlast
{
    public partial class CustomerForm : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmitForm_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtYourName.Text) ||
                string.IsNullOrWhiteSpace(txtPartnerName.Text))
            {
                lblMessage.Text = "Please fill in your name and partner's name.";
                return;
            }

            Session["CustomerName"] = txtYourName.Text.Trim();
            Session["AssignedTeam"] = "Team A";
            Session["Designer"] = "Sophia Crespo";
            Session["Consultant"] = "Ayesha Siddiqui";

            Session["PartnerName"] = txtPartnerName.Text.Trim();
            Session["HowLongTogether"] = txtHowLongTogether.Text.Trim();
            Session["HowYouMet"] = txtHowYouMet.Text.Trim();
            Session["RelationshipMoment"] = txtRelationshipMoment.Text.Trim();
            Session["ProposalPlanned"] = ddlProposalPlanned.SelectedValue;
            Session["ProposalDetails"] = txtProposalDetails.Text.Trim();
            Session["ProposalFeeling"] = txtProposalFeeling.Text.Trim();
            Session["PartnerStyle"] = txtPartnerStyle.Text.Trim();
            Session["JewelryWear"] = txtJewelryWear.Text.Trim();
            Session["DesignLikesDislikes"] = txtDesignLikesDislikes.Text.Trim();
            Session["RingMeaning"] = txtRingMeaning.Text.Trim();
            Session["SpecialMeaning"] = txtSpecialMeaning.Text.Trim();
            Session["LoveStoryWords"] = txtLoveStoryWords.Text.Trim();
            Session["EngravingMessage"] = txtEngravingMessage.Text.Trim();
            Session["ImportantDates"] = txtImportantDates.Text.Trim();
            Session["FavoritePlaces"] = txtFavoritePlaces.Text.Trim();
            Session["PackagingStyle"] = txtPackagingStyle.Text.Trim();

            Response.Redirect("DesignSessionInfo.aspx");
        }
    }
}
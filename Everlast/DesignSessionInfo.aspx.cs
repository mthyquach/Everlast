using System;
using System.Web.UI;

namespace Everlast
{
    public partial class DesignSessionInfo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["CustomerName"] == null)
                {
                    Response.Redirect("CustomerForm.aspx");
                    return;
                }

                lblCustomerName.Text = Session["CustomerName"].ToString();
                lblAssignedTeam.Text = Session["AssignedTeam"] != null ? Session["AssignedTeam"].ToString() : "Team A";
                lblDesigner.Text = Session["Designer"] != null ? Session["Designer"].ToString() : "Sophia Crespo";
                lblConsultant.Text = Session["Consultant"] != null ? Session["Consultant"].ToString() : "Ayesha Siddiqui";
            }
        }

        protected void btnChatBox_Click(object sender, EventArgs e)
        {
            lblDesignMessage.Text = "Chat box feature coming soon.";
        }

        protected void btnStartDesign_Click(object sender, EventArgs e)
        {
            Response.Redirect("RingDesign.aspx");
        }
    }
}
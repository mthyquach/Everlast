using System;

namespace Everlast
{
    public partial class TrackingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Safe protection (ONLY works if your login sets Session["IsAuth"] = true)
            if (Session["IsAuth"] == null || (bool)Session["IsAuth"] != true)
            {
                // Your real login page is LoginPage.aspx
                Response.Redirect("LoginPage.aspx");
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
    }
}
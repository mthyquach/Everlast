using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Database controls
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Everlast
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            //Declare a connection
            SqlConnection RegCon = new SqlConnection(SqlDataSource1.ConnectionString);

            //Declare a command
            SqlCommand RegCommand = new SqlCommand(SqlDataSource1.InsertCommand);

            RegCommand.Connection = RegCon;

            RegCommand.Parameters.AddWithValue("@CustFName", txtFName.Text);
            RegCommand.Parameters.AddWithValue("@CustLName", txtLName.Text);
            RegCommand.Parameters.AddWithValue("@CustomerEmail", txtEmail.Text);
            RegCommand.Parameters.AddWithValue("@Custassword", txtPass.Text);
            RegCommand.Parameters.AddWithValue("@CustomerPhone", txtPhone.Text);

            //Open the connection
            RegCon.Open();

            //Execute the command
            RegCommand.ExecuteNonQuery();

            //Close the command
            RegCon.Close();

            //Show the success message
            lblMessage.Text = "Your account is created sucessfully";

            //Redirect to homepage
            Response.Redirect("LoginPage.aspx");

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            //Remove everything with clear button
            txtFName.Text = "";
            txtLName.Text = "";
            txtEmail.Text = "";
            txtCEmail.Text = "";
            txtPass.Text = "";
            txtCPass.Text = "";
            txtPhone.Text = "";

;
        }
    }
}
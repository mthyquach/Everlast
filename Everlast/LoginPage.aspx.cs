using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//class libraries
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;


namespace Everlast
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Declare variables for login credentials
            string sEmail = "";
            string sPassword = "";
            string sUser = "";

            //Delcare SQLDataReader to query results
            SqlDataReader myReader;

            //Declare a connection to connect to the database
            SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);

            //Select a select command
            SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand)
            {
                Connection = myConnection
            };
            //Set the parameters
            myCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
            myCommand.Parameters.AddWithValue("@Password", txtPassword.Text);

            //Open Connection
            myConnection.Open();

            //Execute Command
            myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

            //While the reader is being populated, assigned the values
            while (myReader.Read())
            {
                sEmail = myReader.GetString(3);
                sPassword = myReader.GetString(5);
                sUser = myReader.GetString(2) + " " + myReader.GetString(3);
            }
            if (txtEmail.Text == sEmail && txtPassword.Text == sPassword)
            {
                //If login sucessfully
                Session["user"] = sUser;
                Session["password"] = sPassword;
                Session["email"] = sEmail;

                //Then redirect to homepage
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                //Display an error
                lblError.Text = ("Invalid email or password. Please try again");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            //Remove everything with clear button
            txtEmail.Text = "";
            txtPassword.Text = "";
            lblError.Text = "";

        }
    }
}
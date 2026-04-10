using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Class libraries
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Everlast
{
    public partial class MyAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Asking for information from server
            if (!IsPostBack)
            {
                if (Session["User"] != null)
                {
                    SqlDataReader myReader;

                    SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);

                    SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand)
                    {
                        Connection = myConnection
                    };

                    myCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());
                    myCommand.Parameters.AddWithValue("@Password", Session["password"].ToString());

                    myConnection.Open();

                    myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

                    while (myReader.Read())
                    {
                        lblEmail.Text = myReader.GetString(4);
                        lblPass.Text = myReader.GetString(5);
                        lblFName.Text = myReader.GetString(6);
                        lblLName.Text = myReader.GetString(7);
                        lblPhone.Text = myReader.GetInt32(10).ToString();

                    }
                    myConnection.Close();

                    txtPass.Visible = false;
                    txtCPass.Visible = false;
                    txtFName.Visible = false;
                    txtLName.Visible = false;
                    txtPhone.Visible = false;

                    rfvPass.Visible = false;
                    cvPass.Visible = false;
                    rfvFName.Visible = false;
                    rfvLName.Visible = false;
                    rfvPhone.Visible = false;
                    revPhone.Visible = false;

                    lblConfirm.Visible = false;
                    lblNewInfo.Visible = false;

                    cbPass.Checked = false;
                    cbFName.Checked = false;
                    cbLName.Checked = false;
                    cbPhone.Checked = false;
                }
                else
                {
                    Response.Redirect("LoginPage.aspx");
                }
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(cbPass.Checked == true)
            {
                lblNewInfo.Visible = true;
                txtPass.Visible = true;
                txtCPass.Visible = true;
                rfvPass.Visible = true;
                cvPass.Visible = true;
                lblConfirm.Visible=true;
            }
            else
            {
                lblNewInfo.Visible = false;
                txtPass.Visible = false;
                txtCPass.Visible = false;
                rfvPass.Visible = false;
                cvPass.Visible = false;
                lblConfirm.Visible = false;
            }
        }

        protected void cbFName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbFName.Checked == true)
            {
                lblNewInfo.Visible= true;
                txtFName.Visible = true;
                rfvFName.Visible=true;
            }
            else
            {
                lblNewInfo.Visible = false;
                txtFName.Visible = false;
                rfvFName.Visible = false;
            }

        }

        protected void cbLName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbLName.Checked == true)
            {
                lblNewInfo.Visible = true;
                txtLName.Visible = true;
                rfvLName.Visible = true;
            }
            else
            {
                lblNewInfo.Visible = false;
                txtLName.Visible = false;
                rfvLName.Visible = false;
            }

        }

        protected void cbPhone_CheckedChanged(object sender, EventArgs e)
        {
            if (cbPhone.Checked == true)
            {
                lblNewInfo.Visible = true;
                txtPhone.Visible = true;
                rfvPhone.Visible = true;
                revPhone.Visible = true;
            }
            else
            {
                lblNewInfo.Visible = false;
                txtPhone.Visible = false;
                rfvPhone.Visible = false;
                revPhone.Visible = false;
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection UCon = new SqlConnection(SqlDataSource1.ConnectionString);

            SqlCommand UCommand = new SqlCommand(SqlDataSource1.UpdateCommand);

            UCommand.Connection = UCon;

            UCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

            if (cbPass.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@Password", txtPass.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("@Password", lblPass.Text);
            }

            if (cbFName.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@FName", txtFName.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("FName", lblFName.Text);
            }

            if (cbLName.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@LName", txtLName.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("@LName", lblLName.Text);
            }

            if (cbPhone.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@Phone", txtPhone.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("@Phone", lblPhone.Text);
            }

            UCon.Open();

            UCommand.ExecuteNonQuery();

            UCon.Close();

            Response.Redirect("MyAccount.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtPass.Text = "";
            txtCPass.Text = "";
            txtFName.Text = "";
            txtLName.Text = "";
            txtPhone.Text = "";
        }
    }
}
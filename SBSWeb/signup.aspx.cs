using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.Web.Security;


namespace SBSWeb
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ValidateUser(object sender, AuthenticateEventArgs e)
        {
            SqlInterface sq;
            sq = new SqlInterface(connection);
            DataTable DTgetusers = sq.Select("select * from Customer where Username='" + Login1.UserName + "' and Password='" + Login1.Password + "'");


            if (DTgetusers.Rows.Count > 0)
            {
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblerr.Text = "incorrect username or password";
                lblerr.ForeColor = System.Drawing.Color.Red;

            }

        }

        protected void RememberMe_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {

        }

        protected void UserName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
        protected void RegisterUser_Click(object sender, EventArgs e)
        {
            SqlInterface sq;
            sq = new SqlInterface(connection);
            bool username = false;
            bool email = false;
            DataTable DTgetusername = sq.Select("select * from Customer where Username='" + txtusernamer.Text + "'");
            if (DTgetusername.Rows.Count != 0)
            {
                username = true;
            }
            DataTable DTgetemail = sq.Select("select * from Customer where Email='" + txtEmailr.Text + "'");
            if (DTgetemail.Rows.Count != 0)
            {
                email = true;
            }

            if (username && !email)
            {
                lblerr.Text = "UserName already exists ";
            }
            if (!username && email)
            {
                lblerr.Text = "email already exists";
            }
         
            if (!username && !email)
            {
                try
                {
                    sq.Insert("UserName,FirsName,PassWord,Email,Phone,PassportNumber", txtusernamer.Text.ToString().Trim() + "," +  txtnamer.Text.ToString().ToLower().Trim() + "," + txtPassWordr.Text.ToString().ToLower().Trim() + "," + txtEmailr.Text.ToString().ToLower().Trim() + "," + txtphoner.Text.ToString().ToLower() + "," + txtpaport.Text.ToString().ToLower(), "Customer");
                    lblerr.Text = "Registration Successful";
                    FormsAuthentication.SetAuthCookie(txtusernamer.Text, true);
                    Session["value"] = txtusernamer.Text;
                    Response.Redirect("Home.aspx");
                }
                catch
                {
                    lblerr.Text = " please try agin ";
                }

            }

        }
    }
}
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
    public partial class Login : System.Web.UI.Page
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
    }
}
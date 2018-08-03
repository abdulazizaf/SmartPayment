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
    public partial class Account : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = "";
            user = this.Page.User.Identity.Name.ToString();
            if (!IsPostBack)
            {

                if (this.Page.User.Identity.IsAuthenticated)
                {
                    Getamount();

                }
                else
                {

                    Response.Redirect("signup.aspx");
                }
            }

        }
        private void Getamount()
        {

            SqlInterface sq;
            sq = new SqlInterface(connection);
            DataTable Dtbalce = sq.Select("select balance from account");
            if (Dtbalce.Rows.Count != 0)
            {
                lblbalance.Text = Dtbalce.Rows[0]["balance"].ToString()+"\t"+"SR";
            }
        }
    }
}
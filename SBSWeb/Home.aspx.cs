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
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            filldata();
        }


        private void filldata()
        {

            SqlInterface sq;
            sq = new SqlInterface(connection);
            DataTable Dtpost = sq.Select("select * from recommendedplaces");
            if (Dtpost.Rows.Count != 0)
            {
                try
                {
                    Datalistuser.DataSource = Dtpost;
                    Datalistuser.DataBind();
                }
                catch { }
            }
        }
    }
}
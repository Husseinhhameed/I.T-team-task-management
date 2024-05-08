using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITtask
{
    public partial class Loginp : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["dboCon"].ConnectionString;
        SqlDataAdapter sqlda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            sqlda = new SqlDataAdapter("Select * from USRS where Uname='" + txUser.Text + "' and Psw='" + txPass.Text + "'", conn);
            dt = new DataTable();
            sqlda.Fill(dt);


            if (dt.Rows.Count > 0)
            {


                string T = dt.Rows[0][3].ToString();
                Session["TYP"] = T;
                Session["NME"] = txUser.Text;
                Response.Redirect("~/Tasks.aspx");


            }
            else {
                ClientScript.RegisterStartupScript(this.GetType(), "random text", "alertme()", true);
                txPass.Text = "";
                txUser.Text = "";
            }

        }


    }
}
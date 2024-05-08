using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITtask
{
    public partial class addagent : System.Web.UI.Page
    {
        string cse = ConfigurationManager.ConnectionStrings["dboCon"].ConnectionString;
        SqlConnection cone;
        SqlCommand cmde;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NME"] == null)
            {
                Response.Redirect("~/Loginp.aspx");
            }
        }

        protected void enterbt_Click(object sender, EventArgs e)
        {
            using (cone = new SqlConnection(cse))
            {
                cmde = new SqlCommand("Insert Into USRS (Uname, Psw, Typ) Values(@Uname, @Psw, @Typ)", cone);
                cmde.Parameters.AddWithValue("@Uname",addusr.Text);
                cmde.Parameters.AddWithValue("@Psw", addpas.Text);
                 cmde.Parameters.AddWithValue("@Typ", DropDownList1.Text);
            
                cone.Open();
                cmde.ExecuteNonQuery();
                cone.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "random text", "alertme()", true);

                DropDownList1.ClearSelection();
                addpas.Text = "";
                addusr.Text = "";

            }
        }

       
    }
}
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
    public partial class addmember : System.Web.UI.Page
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

        protected void entermember_Click(object sender, EventArgs e)
        {
            using (cone = new SqlConnection(cse))
            {
                cmde = new SqlCommand("Insert Into members (member, detail) Values(@member, @detail)", cone);
                cmde.Parameters.AddWithValue("@member", member.Text);
                cmde.Parameters.AddWithValue("@detail", deta.Text);
                

                cone.Open();
                cmde.ExecuteNonQuery();
                cone.Close();
              
                deta.Text = "";
                member.Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), "random text", "alertme()", true);

            }
        }
    }
}
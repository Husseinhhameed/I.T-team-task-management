using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace ITtask
{
    public partial class Srearcher : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NME"] == null)
            {
                Response.Redirect("~/Loginp.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            
            DropDownList2.ClearSelection();
            
            //GridView1.Columns[0].Visible = false;
            GridView3.Visible = false;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            DropDownList1.ClearSelection();
            //GridView1.Columns[0].Visible = false;
            GridView3.Visible = false;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        

      


        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


            

        
    }
    }
    

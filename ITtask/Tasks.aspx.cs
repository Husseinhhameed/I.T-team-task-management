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
    public partial class Tasks : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dboCon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

        public object MessageBoxButtons { get; private set; }
        public object MessageBoxIcon { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
               if (Session["NME"] == null)
            {
                Response.Redirect("~/Loginp.aspx");
            }
            Button3.Visible = false;
            Button4.Visible = false;
            Button1.Visible = false;
            lbtyp.Visible = false;
            Button5.Visible = false;

            if (Page.IsPostBack)
            { }
            lbName.Text=Session["NME"].ToString();
            lbtyp.Text= Session["TYP"].ToString();
            if (lbtyp.Text == "admin")
            {
                Button3.Visible = true;
                Button4.Visible = true;
                Button1.Visible = true;
                Button5.Visible = true;

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/addmember.aspx");


        }

        protected void txEnd_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DrDep_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Srearcher.aspx");

        }

        protected void txDuty_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/addagent.aspx");
        }

        protected void txDuty_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                DateTime dd = DateTime.Parse(Convert.ToDateTime(txDate.Text).ToString());
                cmd = new SqlCommand("Insert Into Tasks (Name, Dep, Date, Duty, Endor, Comm) Values(@name, @dep, @date, @duty, @endor, @comm)", con);
                cmd.Parameters.AddWithValue("@name", lbName.Text);
                cmd.Parameters.AddWithValue("@dep", DrDep.Text);
                cmd.Parameters.AddWithValue("@date", dd.ToString("MM/dd/yyyy"));
                cmd.Parameters.AddWithValue("@duty", txDuty.Text);
                cmd.Parameters.AddWithValue("@endor", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@comm", txCom.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                
                DrDep.ClearSelection();
                DropDownList1.ClearSelection();

                txDate.Text = "";
                txDate.Text = "";
                txCom.Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), "random text", "alertme()", true);

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/members.aspx");

        }
    }
}
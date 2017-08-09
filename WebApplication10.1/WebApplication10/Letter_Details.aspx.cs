using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication10
{
    public partial class Letter_Details : System.Web.UI.Page
    {
        Database Db = new Database();
        protected void Page_Load(object sender, EventArgs e)
        { 
            Db.Databaseconnection();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }
       

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox7_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox9_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       

        protected void Txt_Sen_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Btn_Upl_Click(object sender, EventArgs e)
        {
            String query="INSERT INTO Letter_Detail values('"+Lbl_Lid.Text+"','"+Txt_RegNo.Text+ "','" + Txt_Rec.Text + "','" + Txt_RecDate.Text + "','" + Txt_Sen.Text + "','" + Txt_SenDate.Text + "','" + Txt_Des.Text + "')";
            
            Db.Save_Delete_Update(query);
        }

        protected void Btn_Clr_Click(object sender, EventArgs e)
        {
            Lbl_Lid.Text = "";
            Txt_RegNo.Text = "";
            Txt_Rec.Text = "";
            Txt_RecDate.Text = "";
            Txt_Sen.Text = "";
            Txt_SenDate.Text = "";
            Txt_Des.Text = "";
        }

        protected void Btn_Ex_Click(object sender, EventArgs e)
        {
            Response.End();
        }
    }
}
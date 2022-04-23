using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace Ecochase
{   
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtSearch.Focus();
            con = new SqlConnection(@"Data Source=DESKTOP-2AJ3R13\SQLEXPRESS;Initial Catalog=ecochasePrj;Integrated Security=True");
            con.Open();

            //string str = ("SELECT Fname,username,userAdd from signUp; select sum(score) from usrActivity");
            //string str= "SELECT signUp.Fname,signUp.username, usrActivity.username,usrActivity.score FROM signUp INNER JOIN usrActivity ON signUp.username = usrActivity.username";
            string str = "SELECT username AS Username ,sum(score) AS Total_Score FROM usrActivity group by username";
            string top= "select top 5 username , sum(score) AS Total from usrActivity group by username order by sum(score) DESC";

            //string str= "SELECT (username),SUM(score) FROM usrActivity GROUP BY(username)";
            cmd = new SqlCommand(str, con);
           

            //sda.Fill(ds,"signUp");
            rdr=cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();

            rdr.Close();
            SqlCommand cmd1 = new SqlCommand(top, con);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            GridView2.DataSource = dr1;
            GridView2.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-2AJ3R13\SQLEXPRESS;Initial Catalog=ecochasePrj;Integrated Security=True");
            try
            {
                con.Open();
                if (txtSearch.Text != "")
                {
                    string search = txtSearch.Text;
                    //string data = "SELECT username, sum(score) from usrActivity group by username" + "where username like '%'+@username+'%' ";
                    //string data = "SELECT signUp.Fname, usrActivity.username,usrActivity.score FROM signUp INNER JOIN usrActivity ON signUp.username = usrActivity.username where usrActivity.username='" + txtSearch.Text + "'";

                    string data = "SELECT (username),SUM(score) as Total_Score FROM usrActivity  where usrActivity.username='" + txtSearch.Text + "' GROUP BY username ";
                    cmd = new SqlCommand(data, con);
                    cmd.Parameters.AddWithValue("username", txtSearch.Text);
                    DataTable dt = new DataTable();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);


                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }

            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        protected void sqldatasrc_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
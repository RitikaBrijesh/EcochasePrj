using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Ecochase
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            con = new SqlConnection(@"Data Source=DESKTOP-2AJ3R13\SQLEXPRESS;Initial Catalog=ecochasePrj;Integrated Security=True");
            con.Open();
            if (!IsPostBack)  //check if the page is loaded for first time
            {
                Label1.Text = "Welcome " + Session["user"].ToString()+"!";
                show();
                
            }
            

            

        }
        public void show()
        {
            string score = "select sum(score) from usrActivity where username='" + Session["user"] + "'";
            //lblScore.Text = score;

            SqlCommand cmd = new SqlCommand(score, con);
            cmd.ExecuteNonQuery();
            string Tscore = (cmd.ExecuteScalar().ToString());
            lblScore.Text = Tscore;

        }
        protected void imgbtncarpool_Click(object sender, ImageClickEventArgs e)
        {
            int id = 1; 
            cmd = new SqlCommand("select actPoints FROM actMaster WHERE actId=1",con);
            
            dr = cmd.ExecuteReader();
            dr.Read();

            int pt = Convert.ToInt32(dr["actPoints"].ToString());
            //Response.Write(pt);
            
            
            //Response.Write("<script>alert('Successfully added'+pt)</script>");
            dr.Close();
            
            cmd = new SqlCommand("INSERT INTO usrActivity VALUES(@username,@actId,@actDate,@score)",con);
            cmd.Parameters.AddWithValue("@username", Session["user"].ToString());
            cmd.Parameters.AddWithValue("actId",1);
            cmd.Parameters.AddWithValue("@actDate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@score", pt);
            
            cmd.ExecuteNonQuery();

            show();
            Response.Redirect(Request.Url.AbsoluteUri);
            //con.Close();
        }

        protected void act2_Click(object sender, ImageClickEventArgs e)
        {
            int id = 2;
            cmd = new SqlCommand("select actPoints FROM actMaster WHERE actId=2", con);

            dr = cmd.ExecuteReader();
            dr.Read();

            int pt = Convert.ToInt32(dr["actPoints"].ToString());
            //Response.Write(pt);
            dr.Close();

            cmd = new SqlCommand("INSERT INTO usrActivity VALUES(@username,@actId,@actDate,@score)", con);
            cmd.Parameters.AddWithValue("@username", Session["user"].ToString());
            cmd.Parameters.AddWithValue("actId", 2);
            cmd.Parameters.AddWithValue("@actDate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@score", pt);

            cmd.ExecuteNonQuery();
            show();
            Response.Redirect(Request.Url.AbsoluteUri);
        }


        protected void act3_Click(object sender, ImageClickEventArgs e)
        {
            int id = 3;
            cmd = new SqlCommand("select actPoints FROM actMaster WHERE actId=3", con);

            dr = cmd.ExecuteReader();
            dr.Read();

            int pt = Convert.ToInt32(dr["actPoints"].ToString());
            //Response.Write(pt);
            dr.Close();

            cmd = new SqlCommand("INSERT INTO usrActivity VALUES(@username,@actId,@actDate,@score)", con);
            cmd.Parameters.AddWithValue("@username", Session["user"].ToString());
            cmd.Parameters.AddWithValue("actId", 3);
            cmd.Parameters.AddWithValue("@actDate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@score", pt);

            cmd.ExecuteNonQuery();
            show();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void act4_Click(object sender, ImageClickEventArgs e)
        {
            int id = 4;
            cmd = new SqlCommand("select actPoints FROM actMaster WHERE actId=4", con);

            dr = cmd.ExecuteReader();
            dr.Read();

            int pt = Convert.ToInt32(dr["actPoints"].ToString());
            //Response.Write(pt);
            dr.Close();

            cmd = new SqlCommand("INSERT INTO usrActivity VALUES(@username,@actId,@actDate,@score)", con);
            cmd.Parameters.AddWithValue("@username", Session["user"].ToString());
            cmd.Parameters.AddWithValue("actId", 4);
            cmd.Parameters.AddWithValue("@actDate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@score", pt);

            cmd.ExecuteNonQuery();
            show();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        protected void act5_Click(object sender, ImageClickEventArgs e)
        {
            int id = 5;
            cmd = new SqlCommand("select actPoints FROM actMaster WHERE actId=5", con);

            dr = cmd.ExecuteReader();
            dr.Read();

            int pt = Convert.ToInt32(dr["actPoints"].ToString());
            //Response.Write(pt);
            dr.Close();

            cmd = new SqlCommand("INSERT INTO usrActivity VALUES(@username,@actId,@actDate,@score)", con);
            cmd.Parameters.AddWithValue("@username", Session["user"].ToString());
            cmd.Parameters.AddWithValue("actId", 5);
            cmd.Parameters.AddWithValue("@actDate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@score", pt);

            cmd.ExecuteNonQuery();
            show();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void act6_Click(object sender, ImageClickEventArgs e)
        {
            int id = 6;
            cmd = new SqlCommand("select actPoints FROM actMaster WHERE actId=6", con);

            dr = cmd.ExecuteReader();
            dr.Read();

            int pt = Convert.ToInt32(dr["actPoints"].ToString());
            //Response.Write(pt);
            dr.Close();

            cmd = new SqlCommand("INSERT INTO usrActivity VALUES(@username,@actId,@actDate,@score)", con);
            cmd.Parameters.AddWithValue("@username", Session["user"].ToString());
            cmd.Parameters.AddWithValue("actId", 6);
            cmd.Parameters.AddWithValue("@actDate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@score", pt);

            cmd.ExecuteNonQuery();
            show();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

       
    }
}
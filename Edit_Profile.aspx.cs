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
    public partial class Edit_Profile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                con = new SqlConnection(@"Data Source=DESKTOP-KMMSKU7\SQLEXPRESS;Initial Catalog=ecochasePrj;Integrated Security=True");
                con.Open();

                lblUpdate.Text = "Welcome " + Session["user"].ToString()+"!";

                string checkuser = "select * from signUp where username='" + Session["user"].ToString() + "'";
                cmd = new SqlCommand(checkuser, con);
                dr = cmd.ExecuteReader();


                if (dr.Read())
                {
                    txteName.Text = dr["Fname"].ToString();
                    txteUser.Text = dr["username"].ToString();
                    txteAdd.Text = dr["userAdd"].ToString();
                    txteEmail.Text = dr["userEmailid"].ToString();
                    txtePass.Text = dr["userPasswd"].ToString();

                }
                dr.Close();
                con.Close();
            }
            


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
            {
            con = new SqlConnection(@"Data Source=DESKTOP-KMMSKU7\SQLEXPRESS;Initial Catalog=ecochasePrj;Integrated Security=True");
            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("update signUp set Fname=@Fname,username=@username, userAdd=@userAdd, userEmailid=@userEmailid, userPasswd=@userPasswd where username='" + Session["user"].ToString() + "'", con);
                //cmd.Connection = con;

                cmd.Parameters.AddWithValue("@Fname", txteName.Text);
                cmd.Parameters.AddWithValue("@username", txteUser.Text);
                cmd.Parameters.AddWithValue("@userAdd", txteAdd.Text);
                cmd.Parameters.AddWithValue("@userEmailid", txteEmail.Text);
                cmd.Parameters.AddWithValue("@userPasswd", txtePass.Text);

                cmd.ExecuteNonQuery();

                Label1.Text = "Profile Updated";
                Label1.Visible = true;
                //con.Close();
            }

            catch (Exception ex)
            {
                //Response.Write(ex.Message);
                Label2.Visible = true;
                Label2.Text = "Changes not saved";
            }
            finally
            {
                con.Close();
            }
        }
    }
}
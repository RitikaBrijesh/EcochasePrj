using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Ecochase
{

    public partial class SignupPage : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-KMMSKU7\SQLEXPRESS;Initial Catalog=ecochasePrj;Integrated Security=True");
            con.Open();
        }
        
        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtUser_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("insert into signUp values(@Fname,@username,@userAdd,@userEmailid,@userPasswd)", con);
                cmd.Parameters.AddWithValue("@Fname", txtName.Text);
                cmd.Parameters.AddWithValue("@username", txtUser.Text);
                cmd.Parameters.AddWithValue("@userAdd", txtAddress.Text);
                cmd.Parameters.AddWithValue("@userEmailid", txtEmail.Text);
                cmd.Parameters.AddWithValue("@userPasswd", txtPass.Text);

                cmd.ExecuteNonQuery();
                Session["user"] = txtUser.Text;
                Response.Redirect("Login.aspx");
            }
            catch(SqlException ex)
            {
                Response.Write(ex);
            }

            con.Close();

        }
    }
}
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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        //SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(@"Data Source=DESKTOP-KMMSKU7\SQLEXPRESS;Initial Catalog=ecochasePrj;Integrated Security=True");
                con.Open();

                cmd = new SqlCommand("select COUNT(*)FROM signUp WHERE username='" + txtUser.Text + "' and userPasswd='" + txtPass.Text + "' ",con);
                //cmd.Connection = con;

                int obj = Convert.ToInt32(cmd.ExecuteScalar());
                if (obj > 0)
                {
                    Session["user"] = txtUser.Text;
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    Label1.Text = "invalid username or password";
                    Label1.Visible = true;
                    this.Label1.ForeColor = System.Drawing.Color.Red;

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignupPage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPass.aspx");
        }
    }
}
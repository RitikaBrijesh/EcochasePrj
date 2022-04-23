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
    public partial class Report : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader sdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text= "Welcome " + Session["user"].ToString();
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-2AJ3R13\SQLEXPRESS;Initial Catalog=ecochasePrj;Integrated Security=True");
            try
            {
                con.Open();
                Response.Write(stDate);
                String str = "SELECT * FROM usrActivity where username='" + Session["user"].ToString() + "' and actdate between '" + stDate.Text + "' and '" + endDate.Text + "'";
                cmd = new SqlCommand(str, con);

                //cmd.Parameters.AddWithValue("@stDate", DateTime.Parse(stDate.Text).ToString("yyyy-MM-dd ", System.Globalization.CultureInfo.InvariantCulture));
                //cmd.Parameters.AddWithValue("@endDate", DateTime.Parse(endDate.Text).ToString("yyyy-MM-dd ", System.Globalization.CultureInfo.InvariantCulture));

                           
                sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    GridView1.DataSource = sdr;
                    GridView1.DataBind();
                }
                else
                {
                    Label1.Text = "No records Found";
                }
                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
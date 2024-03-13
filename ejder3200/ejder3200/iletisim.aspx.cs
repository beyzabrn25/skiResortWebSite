using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;

namespace ejder3200
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["vt"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                SqlCommand komut = new SqlCommand("insert into iletisim(ad,mail,tel,aciklama) values (@p1,@p2,@p3,@p4)", connection);
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.Parameters.AddWithValue("@p2", TextBox2.Text);
                komut.Parameters.AddWithValue("@p3", TextBox3.Text);
                komut.Parameters.AddWithValue("@p4", TextBox4.Text);
                komut.ExecuteNonQuery();

                connection.Close();
            }
        }
    }
}
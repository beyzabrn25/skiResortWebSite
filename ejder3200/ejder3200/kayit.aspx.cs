using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;

namespace ejder3200
{
    public partial class kayit : System.Web.UI.Page
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

                SqlCommand komut = new SqlCommand("insert into kullanici(ad,soyad,eposta,tel,sifre) values (@p1,@p2,@p3,@p4,@p5)", connection);
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.Parameters.AddWithValue("@p2", TextBox2.Text);
                komut.Parameters.AddWithValue("@p3", tbAd.Text);
                komut.Parameters.AddWithValue("@p4", TextBox3.Text);
                komut.Parameters.AddWithValue("@p5", tbSifre.Text);
                komut.ExecuteNonQuery();

                connection.Close();
            }
            Response.Redirect("login.aspx");
        }
    }
}
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

namespace ejder3200
{
    public partial class hStore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                BindCards();
            }
        }

        private void BindCards()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["vt"].ConnectionString;
            string query = "SELECT id,ad,r1,r2,aciklama,fiyat FROM ürün where kid=3";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                rptCards.DataSource = dataTable;
                rptCards.DataBind();
        }   }
        protected void rptCards_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Ekle")
            {
                string a = Session["eposta"].ToString();
                int urunID = Convert.ToInt32(e.CommandArgument);
                string connectionString = ConfigurationManager.ConnectionStrings["vt"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string al = "SELECT id FROM kullanici WHERE eposta = @eposta";
                    SqlCommand command = new SqlCommand(al, connection);
                    command.Parameters.AddWithValue("@eposta", a);
                    int c = Convert.ToInt32(command.ExecuteScalar());
                    string query = "INSERT INTO sepet (kulid, ürünid, adet) VALUES (@p1,@p2, 1)";
                    SqlCommand command1 = new SqlCommand(query, connection);
                    command1.Parameters.AddWithValue("@p1", c);
                    command1.Parameters.AddWithValue("@p2", urunID);
                    command1.ExecuteNonQuery();
                    connection.Close();
                }
                BindCards();
            }
        }
        protected void btnSepeteEkle_Click(object sender, EventArgs e)
        {


        }
    }
}
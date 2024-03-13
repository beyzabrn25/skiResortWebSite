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
    public partial class sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                bindGrid();
            }
         
        }

        private void bindGrid()
        {
            string a = Session["eposta"].ToString();
            string connectionString = ConfigurationManager.ConnectionStrings["vt"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT id FROM kullanici WHERE eposta = @eposta";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@eposta", a);
                int c = Convert.ToInt32(command.ExecuteScalar());
                string sepetQuery = @"
                    SELECT s.id,ü.ad, ü.r1,ü.fiyat, s.adet, s.tfiyat 
                    FROM sepet s
                    INNER JOIN ürün ü ON s.ürünid = ü.id
                    WHERE s.kulid = @kulid";

                SqlCommand sepetCommand = new SqlCommand(sepetQuery, connection);
                sepetCommand.Parameters.AddWithValue("@kulid", c);
                SqlDataReader reader = sepetCommand.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
                connection.Close();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //string idToDelete = GridView1.DataKeys[e.RowIndex].Value.ToString();
            int idToDelete = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["id"]);

            string connectionString = WebConfigurationManager.ConnectionStrings["vt"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string deleteQuery = "DELETE FROM sepet WHERE id = @id";
                SqlCommand deleteCommand = new SqlCommand(deleteQuery, connection);
                deleteCommand.Parameters.AddWithValue("@id", idToDelete);

                deleteCommand.ExecuteNonQuery();
                connection.Close();
            }

            bindGrid(); // GridView'i güncelleme işlemi
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("sepet.aspx");
        }
    }
}
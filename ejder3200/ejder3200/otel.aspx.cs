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
    public partial class otel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{

            //    BindCards();
            //}
        }

        //private void BindCards()
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["vt"].ConnectionString;
        //    string query = "SELECT id,ad,img,oda,havuzlumu,kayaklimi,wifilimi FROM otel";

        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        SqlCommand command = new SqlCommand(query, connection);
        //        SqlDataAdapter adapter = new SqlDataAdapter(command);
        //        DataTable dataTable = new DataTable();
        //        adapter.Fill(dataTable);

        //        rptCards.DataSource = dataTable;
        //        rptCards.DataBind();
        //    }
        //}

    }
}
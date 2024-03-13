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
    public partial class olim18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindIcons();
            }
        }

        private void BindIcons()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["vt"].ConnectionString;
            string query = "SELECT resim FROM galeri where gid=3";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                int count = 0;
                while (reader.Read())
                {
                    string iconPath = reader["resim"].ToString();
                    //string iconName = reader["isim"].ToString();
                    //string iconDescription = reader["aciklama"].ToString();

                    HtmlGenericControl iconCard = new HtmlGenericControl("div");
                    iconCard.Attributes["class"] = "icon-card";

                    HtmlImage iconImg = new HtmlImage();
                    iconImg.Src = iconPath;
                    iconImg.Attributes["class"] = "icon-img";

                    //HtmlGenericControl iconNamePara = new HtmlGenericControl("p");
                    //iconNamePara.InnerText = iconName;
                    //iconNamePara.Attributes["class"] = "icon-name";

                    //HtmlGenericControl iconDescriptionPara = new HtmlGenericControl("p");
                    //iconDescriptionPara.InnerText = iconDescription;
                    //iconDescriptionPara.Attributes["class"] = "icon-description";

                    iconCard.Controls.Add(iconImg);
                    //iconCard.Controls.Add(iconNamePara);
                    //iconCard.Controls.Add(iconDescriptionPara);

                    iconContainer.Controls.Add(iconCard);

                    count++;
                    if (count % 2 == 0)
                    {
                        HtmlGenericControl rowDiv = new HtmlGenericControl("div");
                        rowDiv.Attributes["class"] = "row";
                        iconContainer.Controls.Add(rowDiv);
                    }
                }

                reader.Close();
            }
        }
    }
}
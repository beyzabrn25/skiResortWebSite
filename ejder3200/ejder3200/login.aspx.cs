using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;

namespace ejder3200
{
    public partial class login : System.Web.UI.Page
    {
        baglanti con = new baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String a = "1";
            String b = "2";
            SqlCommand komut = new SqlCommand("Select * From kullanici", con.baglantim());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                if (dr["eposta"].ToString() == tbAd.Text && dr["sifre"].ToString() == tbSifre.Text)
                {
                    if (dr["tip"].ToString() == a)//herkes
                    {
                        Session.Add("eposta", tbAd.Text);
                        Session.Add("sifre", tbSifre.Text);
                        Response.Redirect("anaStore.aspx");
                    }
                    else if (dr["tip"].ToString() == b)//admin
                    {
                        Session.Add("eposta", tbAd.Text);
                        Session.Add("sifre", tbSifre.Text);
                        Response.Redirect("adminMesaj.aspx");
                    }
                    else{
                        Response.Redirect("kayit.aspx");
                    }
                }
                else{
                    Label1.Text = "Yanlış mail veya şifre girdiniz ";
                }
            }
        }
    }
}
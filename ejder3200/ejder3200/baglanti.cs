using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.IO;
using System.Data.SqlClient;

namespace ejder3200
{
    public class baglanti
    {
        public SqlConnection baglantim()
        {
            //public baglanti()
            //{
            //SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-5Q0UHTN;Initial Catalog=ejder; User Id=staj2;Password=190541003 ;Integrated Security = True");

            SqlConnection baglan = new SqlConnection("Data Source =DESKTOP-5Q0UHTN; Initial Catalog =ejder; Integrated Security = True");


            baglan.Open();
            return baglan;

            //}
        }
    }
}
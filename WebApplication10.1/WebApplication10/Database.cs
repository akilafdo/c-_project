using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
using System.Data;

namespace WebApplication10
{
    public class Database
    {
        private SqlConnection con;
        private SqlCommand cmd;
        public void Databaseconnection()
            {

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["Mails_FisheriesConnectionString"].ConnectionString);
            }
        public void conOpen()
        {
            con.Open();
        }
        public void conClose()
        {
            con.Close();
        }
        public int Save_Delete_Update(String a)
        {
            int rows;
            try
            {
                conOpen();
            }
            catch(SqlException)
            {
                MessageBox.Show("Database Errors");
            }
            cmd = new SqlCommand(a, con);
            rows = cmd.ExecuteNonQuery();
            conClose();
            return rows;
        }
        public DataTable getData(String a)
        {
            try
            {
                conOpen();
            }
            catch(SqlException)
            {
                MessageBox.Show("Database Errors");
            }
            SqlDataAdapter da = new SqlDataAdapter(a, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            conClose();
            return dt;
        }

    }
}
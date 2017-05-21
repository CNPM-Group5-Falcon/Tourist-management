using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessTier
{
    public class DBConnection
    {
        public SqlConnection conn;
        private string path;
        private string connString;
        public DBConnection()
        {
            path = AppDomain.CurrentDomain.BaseDirectory;
            connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"" + path +
                "Database.mdf\"; Integrated Security = True";
            conn = new SqlConnection(connString);
            conn.Open();
        }
    }
}

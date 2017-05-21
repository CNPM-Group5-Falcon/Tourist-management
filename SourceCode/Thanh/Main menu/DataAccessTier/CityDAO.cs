using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data.SqlClient;

namespace DataAccessTier
{
    public class CityDAO : DBConnection
    {
        //public CityDAO() : base() { }
        public DataTable GetAllCity()
        {
            if (conn.State != System.Data.ConnectionState.Open)
                conn.Open();
            string command = "Select cityname as 'Tên thành phố' , info as 'Sơ lược' from CITY Order by cityname ASC";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(command, conn);
            da.Fill(dt);
            return dt;
        }
    }
}

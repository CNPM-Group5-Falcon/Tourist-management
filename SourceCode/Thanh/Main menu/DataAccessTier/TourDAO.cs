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
    public class TourDAO : DBConnection
    {
        public TourDAO() : base() { }
        public DataTable GetAllTour()
        {
            if (conn.State != System.Data.ConnectionState.Open)
                conn.Open();
            string command = "Select info as 'Thông tin', departure as 'Nơi đi', destination as 'Nơi đến', starttime'Khởi hành', duration'Thời gian', fee'Chi phí' From TOUR Order by tour_id ASC";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(command, conn);
            da.Fill(dt);
            return dt;
        }
        public DataTable GetSpecificTour(string a, string b)
        {
            if (conn.State != System.Data.ConnectionState.Open)
                conn.Open();
            string command = "Select info as 'Thông tin', departure as 'Nơi đi', destination as 'Nơi đến', starttime'Khởi hành', duration'Thời gian', fee'Chi phí' From TOUR Where departure = N'"+ a + "' and destination = N'" + b + "'";
          
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(command, conn);
            da.Fill(dt);
            return dt;

        }
      
      
    }
}

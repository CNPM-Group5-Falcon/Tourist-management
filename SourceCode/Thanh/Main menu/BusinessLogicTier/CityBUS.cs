using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DataAccessTier;
using DTO;

namespace BusinessLogicTier
{
    public class CityBUS
    {
        CityDAO objCity = new CityDAO();
        public DataTable GetAllCity()
        {
            return objCity.GetAllCity();
        }
    }
}

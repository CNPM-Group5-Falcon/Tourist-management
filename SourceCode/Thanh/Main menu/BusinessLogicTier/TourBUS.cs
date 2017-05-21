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
    public class TourBUS
    {
        TourDAO objTour = new TourDAO();
        public DataTable GetAllTour()
        {
            return objTour.GetAllTour();
        }
        public DataTable GetSpecificTour(string a, string b)
        {
            return objTour.GetSpecificTour(a, b);
        }
        
    }
}

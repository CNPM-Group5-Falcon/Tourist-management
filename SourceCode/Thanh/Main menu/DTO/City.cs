using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class City
    {
        private string cityname;
        private string info;
        public City()
        {

        }
        public City(string a, string b)
        {
            cityname = a;
            info = b;
        }
        public string Cityname
        {
            get
            {
                return cityname;
            }

            set
            {
                cityname = value;
            }
        }

        public string Info
        {
            get
            {
                return info;
            }

            set
            {
                info = value;
            }
        }
    }
}

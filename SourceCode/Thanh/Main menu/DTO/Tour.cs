using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Tour
    {
        private int tour_id;
        private string info;
        private string departure;
        private string destination;
        private DateTime starttime;
        private string duration;
        private string fee;
        private int schedule_id;
        public Tour()
        {

        }
        public Tour(int a, string b, string c, string d, DateTime e, string f, string g, int h)
        {
            tour_id = a;
            info = b;
            departure = c;
            destination = d;
            starttime = e;
            duration = f;
            fee = g;
            schedule_id = h;
        }
        public Tour(string de, string des, DateTime datetime)
        {
            departure = de;
            destination = des;
            starttime = datetime;
        }

        public int Tour_id
        {
            get
            {
                return tour_id;
            }

            set
            {
                tour_id = value;
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

        public string Departure
        {
            get
            {
                return departure;
            }

            set
            {
                departure = value;
            }
        }

        public string Destination
        {
            get
            {
                return destination;
            }

            set
            {
                destination = value;
            }
        }

        public DateTime Starttime
        {
            get
            {
                return starttime;
            }

            set
            {
                starttime = value;
            }
        }

        public string Duration
        {
            get
            {
                return duration;
            }

            set
            {
                duration = value;
            }
        }

        public string Fee
        {
            get
            {
                return fee;
            }

            set
            {
                fee = value;
            }
        }

        public int Schedule_id
        {
            get
            {
                return schedule_id;
            }

            set
            {
                schedule_id = value;
            }
        }
    }
}

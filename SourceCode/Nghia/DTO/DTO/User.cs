using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class User
    {
        public string AccountName{ get; set;}
        public DateTime Birthday { get; set;}
        public string Email{ get; set; }
        public string FullName { get; set;}
        public string Password { get; set; }
        public int PhoneNumber { get; set; }
        public int Type { get; set; }

        public int Gender
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }

        public void BookTour();
        public void Commend();
        public void DeleteComment();
        public void LogOut();
        public void Rate();
        public void Search();
        public void ViewComment();
    }
}

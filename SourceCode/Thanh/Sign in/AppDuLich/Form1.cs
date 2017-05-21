using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
namespace AppDuLich
{
    public partial class login : Form
    {
        public login()
        {
            InitializeComponent();
        }

        private void btn_login_Click(object sender, EventArgs e)
        {
            string connString = "Server=localhost;Database=vntour;Port=3306;User ID=root;Password=";
            MySqlConnection conn = new MySqlConnection(connString);
            conn.Open();
            MySqlDataAdapter sda = new MySqlDataAdapter("Select Count(*) from user where username ='" + txt_username.Text + "' and password ='" + txt_password.Text + "'", conn);
            DataTable dt = new System.Data.DataTable();
            sda.Fill(dt);

            if (dt.Rows[0][0].ToString() == "1")
            {
                this.Hide();
                mainmenu main = new mainmenu();
                main.Show();
            }
            else
            {
                MessageBox.Show("Please check your username and password");
            }

           
          
        }
    }
}

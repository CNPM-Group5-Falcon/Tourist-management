using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppDuLich
{
    public partial class mainmenu : Form
    {
        public mainmenu()
        {
            InitializeComponent();
        }

        private void mainmenu_Load(object sender, EventArgs e)
        {
            cb_city.Items.Add("Ha Noi");
            cb_city.Items.Add("Ho Chi Minh");
            cb_city.Items.Add("Hue");

        }

        private void btn_search_Click(object sender, EventArgs e)
        {

        }
    }
}

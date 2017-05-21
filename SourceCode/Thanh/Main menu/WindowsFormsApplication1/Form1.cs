using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevComponents.DotNetBar;
using BusinessLogicTier;
using DTO;
using DevComponents.DotNetBar.Controls;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Office2007Form
    {
        CityBUS City = new CityBUS();
        TourBUS Tour = new TourBUS();
        
        DataTable dt = new DataTable();
        
        public Form1()
        {
            InitializeComponent();
        }
        
        private void superTabStrip1_ItemClick(object sender, EventArgs e)
        {
            
        }

        private void buttonX1_Click(object sender, EventArgs e)
        {

        }
        private void DisplayHome()
        {
            panelEx1.Controls.Clear();
            LabelX label_Home1 = new LabelX();
            label_Home1.Location = new Point(55, 43);
            label_Home1.Size = new Size(150, 40);
            label_Home1.Text = "10";
            label_Home1.Font = new Font("Jokerman", 20);
            label_Home1.ForeColor = Color.Red;

            LabelX label_Home2 = new LabelX();
            label_Home2.Location = new Point(297, 43);
            label_Home2.Size = new Size(150, 40);
            label_Home2.Text = "50";
            label_Home2.Font = new Font("Jokerman", 20);
            label_Home2.ForeColor = Color.Red;

            LabelX label_Home3 = new LabelX();
            label_Home3.Location = new Point(493, 43);
            label_Home3.Size = new Size(300, 40);
            label_Home3.Text = "100000";
            label_Home3.Font = new Font("Jokerman", 20);
            label_Home3.ForeColor = Color.Red;

            LabelX label_Home11 = new LabelX();
            label_Home11.Location = new Point(55, 78);
            label_Home11.Size = new Size(95, 23);
            label_Home11.Text = "tour";
            label_Home11.Font = new Font("Arial", 12, FontStyle.Bold);

            LabelX label_Home21 = new LabelX();
            label_Home21.Location = new Point(278, 78);
            label_Home21.Size = new Size(95, 23);
            label_Home21.Text = "nhân viên";
            label_Home21.Font = new Font("Arial", 12, FontStyle.Bold);

            LabelX label_Home31 = new LabelX();
            label_Home31.Location = new Point(493, 78);
            label_Home31.Size = new Size(150, 23);
            label_Home31.Text = "lượt khách/ năm";
            label_Home31.Font = new Font("Arial", 12, FontStyle.Bold);

            panelEx1.Controls.Add(label_Home1);
            panelEx1.Controls.Add(label_Home2);
            panelEx1.Controls.Add(label_Home3);
            panelEx1.Controls.Add(label_Home11);
            panelEx1.Controls.Add(label_Home21);
            panelEx1.Controls.Add(label_Home31);
        }
        private void superTabItem1_Click(object sender, EventArgs e)
        {
            DisplayHome();

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            DisplayHome();
        }

        private void superTabItem2_Click(object sender, EventArgs e)
        {
            panelEx1.Controls.Clear();
            DataGridViewX dgvTour = new DataGridViewX();  // tạo datagridview chứa danh sách tour
            dgvTour.Location = new Point(0,0);
            dgvTour.Size = new Size(676,311);
            dgvTour.RowHeadersVisible = false;
            DataGridViewButtonXColumn btn = new DataGridViewButtonXColumn();   // tạo cột có nút đặt
            btn.HeaderText = "Đặt tour";
            btn.Text = "Đặt";
            btn.Name = "btnDat";
            btn.UseColumnTextForButtonValue = true;
            dgvTour.Columns.Add(btn);
            dt = Tour.GetAllTour();
            dgvTour.DataSource = dt;
            dgvTour.AllowUserToAddRows = false;
            dgvTour.AllowUserToResizeRows = false;
            dgvTour.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
           
            panelEx1.Controls.Add(dgvTour);        
        }

        private void superTabItem3_Click(object sender, EventArgs e)
        {
            panelEx1.Controls.Clear();
            DataGridViewX dgvCity = new DataGridViewX();
            dgvCity.Location = new Point(0, 0);
            dgvCity.Size = new Size(676, 311);
            dgvCity.RowHeadersVisible = false;
            dt = City.GetAllCity();
            dgvCity.DataSource = dt;
            dgvCity.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            panelEx1.Controls.Add(dgvCity);
        }

        private void superTabItem4_Click(object sender, EventArgs e)
        {
            panelEx1.Controls.Clear();
            LabelX lbFeedback = new LabelX();
            lbFeedback.Location = new Point(87, 27);
            lbFeedback.Size = new Size(529, 23);
          
            lbFeedback.MaximumSize = new Size(529, 23);
            lbFeedback.AutoSize = true;
            lbFeedback.Text = "Chúng tôi mong quý khách hàng để lại góp ý về công ty và chất lượng dịch vụ.";
            TextBoxX tbFeedback = new TextBoxX();
            tbFeedback.Location = new Point(147, 73);
            tbFeedback.Size = new Size(469, 40);
            tbFeedback.Multiline = true;
            ButtonX btnFeedback = new ButtonX();
            btnFeedback.Location = new Point(291, 134);
            btnFeedback.Size = new Size(75, 30);
            btnFeedback.Text = "Gửi";
            Image img = Properties.Resources.feedback;
            PictureBox pbFeedback = new PictureBox();
            pbFeedback.Image = img;
            pbFeedback.Location = new Point(87, 73);
            pbFeedback.Size = new Size(54, 40);
            pbFeedback.SizeMode = PictureBoxSizeMode.StretchImage;
            panelEx1.Controls.Add(pbFeedback);
            panelEx1.Controls.Add(lbFeedback);
            panelEx1.Controls.Add(tbFeedback);
            panelEx1.Controls.Add(btnFeedback);

        }

        private void buttonX3_Click(object sender, EventArgs e)
        {
            panelEx1.Controls.Clear();
            
                
                Tour search = new Tour();
                string noi_di = comboBoxEx_De.Text;
                string noi_den = comboBoxEx_Des.Text;
                DateTime gio_khoi_hanh;
               
                gio_khoi_hanh = dateTimeInput_Search.Value;
                
                DataGridViewX dgvSearch = new DataGridViewX();  // tạo datagridview chứa danh sách tour
                dgvSearch.Location = new Point(0, 0);
                dgvSearch.Size = new Size(676, 311);
                dgvSearch.RowHeadersVisible = false;


                dt = Tour.GetSpecificTour(noi_di, noi_den);
                dgvSearch.DataSource = dt;
                dgvSearch.AllowUserToAddRows = false;
                dgvSearch.AllowUserToResizeRows = false;
                dgvSearch.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                panelEx1.Controls.Add(dgvSearch);
                
            
           
          
        }
    }
}

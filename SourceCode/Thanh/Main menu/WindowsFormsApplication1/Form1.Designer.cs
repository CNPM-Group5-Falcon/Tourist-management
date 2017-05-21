namespace WindowsFormsApplication1
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.superTabStrip1 = new DevComponents.DotNetBar.SuperTabStrip();
            this.superTabItem1 = new DevComponents.DotNetBar.SuperTabItem();
            this.superTabItem2 = new DevComponents.DotNetBar.SuperTabItem();
            this.superTabItem3 = new DevComponents.DotNetBar.SuperTabItem();
            this.superTabItem4 = new DevComponents.DotNetBar.SuperTabItem();
            this.superTabItem5 = new DevComponents.DotNetBar.SuperTabItem();
            this.labelX1 = new DevComponents.DotNetBar.LabelX();
            this.styleManager1 = new DevComponents.DotNetBar.StyleManager(this.components);
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.comboBoxEx_De = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.comboItem_de1 = new DevComponents.Editors.ComboItem();
            this.comboItem_de2 = new DevComponents.Editors.ComboItem();
            this.comboBoxEx_Des = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.comboItem_des1 = new DevComponents.Editors.ComboItem();
            this.comboItem_des2 = new DevComponents.Editors.ComboItem();
            this.comboItem_des3 = new DevComponents.Editors.ComboItem();
            this.comboItem_des4 = new DevComponents.Editors.ComboItem();
            this.comboItem_des5 = new DevComponents.Editors.ComboItem();
            this.comboItem_des6 = new DevComponents.Editors.ComboItem();
            this.comboItem_des7 = new DevComponents.Editors.ComboItem();
            this.comboItem_des8 = new DevComponents.Editors.ComboItem();
            this.comboItem_des9 = new DevComponents.Editors.ComboItem();
            this.comboBoxEx3 = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.comboBoxEx4 = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.buttonX3 = new DevComponents.DotNetBar.ButtonX();
            this.groupPanel1 = new DevComponents.DotNetBar.Controls.GroupPanel();
            this.dateTimeInput_Search = new DevComponents.Editors.DateTimeAdv.DateTimeInput();
            this.groupPanel2 = new DevComponents.DotNetBar.Controls.GroupPanel();
            this.panelEx1 = new DevComponents.DotNetBar.PanelEx();
            ((System.ComponentModel.ISupportInitialize)(this.superTabStrip1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.groupPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateTimeInput_Search)).BeginInit();
            this.groupPanel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // superTabStrip1
            // 
            this.superTabStrip1.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.superTabStrip1.AutoSelectAttachedControl = false;
            // 
            // 
            // 
            this.superTabStrip1.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.superTabStrip1.ContainerControlProcessDialogKey = true;
            // 
            // 
            // 
            // 
            // 
            // 
            this.superTabStrip1.ControlBox.CloseBox.Name = "";
            // 
            // 
            // 
            this.superTabStrip1.ControlBox.MenuBox.Name = "";
            this.superTabStrip1.ControlBox.Name = "";
            this.superTabStrip1.ControlBox.SubItems.AddRange(new DevComponents.DotNetBar.BaseItem[] {
            this.superTabStrip1.ControlBox.MenuBox,
            this.superTabStrip1.ControlBox.CloseBox});
            this.superTabStrip1.DispatchShortcuts = true;
            this.superTabStrip1.FadeEffect = false;
            this.superTabStrip1.Location = new System.Drawing.Point(42, 73);
            this.superTabStrip1.Name = "superTabStrip1";
            this.superTabStrip1.ReorderTabsEnabled = true;
            this.superTabStrip1.SelectedTabFont = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.superTabStrip1.SelectedTabIndex = 0;
            this.superTabStrip1.ShowToolTips = false;
            this.superTabStrip1.Size = new System.Drawing.Size(676, 38);
            this.superTabStrip1.TabCloseButtonHot = null;
            this.superTabStrip1.TabFont = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.superTabStrip1.TabIndex = 0;
            this.superTabStrip1.Tabs.AddRange(new DevComponents.DotNetBar.BaseItem[] {
            this.superTabItem1,
            this.superTabItem2,
            this.superTabItem3,
            this.superTabItem4,
            this.superTabItem5});
            this.superTabStrip1.Text = "superTabStrip1";
            // 
            // superTabItem1
            // 
            this.superTabItem1.GlobalItem = false;
            this.superTabItem1.Image = ((System.Drawing.Image)(resources.GetObject("superTabItem1.Image")));
            this.superTabItem1.Name = "superTabItem1";
            this.superTabItem1.Text = "Trang chủ";
            this.superTabItem1.Click += new System.EventHandler(this.superTabItem1_Click);
            // 
            // superTabItem2
            // 
            this.superTabItem2.GlobalItem = false;
            this.superTabItem2.Name = "superTabItem2";
            this.superTabItem2.Text = "Danh sách tour";
            this.superTabItem2.Click += new System.EventHandler(this.superTabItem2_Click);
            // 
            // superTabItem3
            // 
            this.superTabItem3.GlobalItem = false;
            this.superTabItem3.Name = "superTabItem3";
            this.superTabItem3.Text = "Thành phố";
            this.superTabItem3.Click += new System.EventHandler(this.superTabItem3_Click);
            // 
            // superTabItem4
            // 
            this.superTabItem4.GlobalItem = false;
            this.superTabItem4.Name = "superTabItem4";
            this.superTabItem4.Text = "Đóng góp";
            this.superTabItem4.Click += new System.EventHandler(this.superTabItem4_Click);
            // 
            // superTabItem5
            // 
            this.superTabItem5.GlobalItem = false;
            this.superTabItem5.Name = "superTabItem5";
            this.superTabItem5.Text = "Liên hệ";
            // 
            // labelX1
            // 
            this.labelX1.BackColor = System.Drawing.Color.Transparent;
            // 
            // 
            // 
            this.labelX1.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.labelX1.Font = new System.Drawing.Font("Haettenschweiler", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelX1.ForeColor = System.Drawing.Color.Navy;
            this.labelX1.Location = new System.Drawing.Point(3, 10);
            this.labelX1.Name = "labelX1";
            this.labelX1.SingleLineColor = System.Drawing.SystemColors.ActiveCaption;
            this.labelX1.Size = new System.Drawing.Size(104, 47);
            this.labelX1.TabIndex = 3;
            this.labelX1.Text = "Vn Tour";
            this.labelX1.TextAlignment = System.Drawing.StringAlignment.Center;
            // 
            // styleManager1
            // 
            this.styleManager1.ManagerColorTint = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(0)))), ((int)(((byte)(64)))));
            this.styleManager1.ManagerStyle = DevComponents.DotNetBar.eStyle.Office2010Black;
            this.styleManager1.MetroColorParameters = new DevComponents.DotNetBar.Metro.ColorTables.MetroColorGeneratorParameters(System.Drawing.Color.White, System.Drawing.Color.FromArgb(((int)(((byte)(43)))), ((int)(((byte)(87)))), ((int)(((byte)(154))))));
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(42, 117);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(676, 285);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 4;
            this.pictureBox1.TabStop = false;
            // 
            // comboBoxEx_De
            // 
            this.comboBoxEx_De.DisplayMember = "Text";
            this.comboBoxEx_De.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.comboBoxEx_De.FormattingEnabled = true;
            this.comboBoxEx_De.ItemHeight = 14;
            this.comboBoxEx_De.Items.AddRange(new object[] {
            this.comboItem_de1,
            this.comboItem_de2});
            this.comboBoxEx_De.Location = new System.Drawing.Point(3, 3);
            this.comboBoxEx_De.Name = "comboBoxEx_De";
            this.comboBoxEx_De.Size = new System.Drawing.Size(104, 20);
            this.comboBoxEx_De.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.comboBoxEx_De.TabIndex = 5;
            this.comboBoxEx_De.Text = "Nơi đi";
            // 
            // comboItem_de1
            // 
            this.comboItem_de1.Text = "Hà Nội";
            // 
            // comboItem_de2
            // 
            this.comboItem_de2.Text = "Hồ Chí Minh";
            // 
            // comboBoxEx_Des
            // 
            this.comboBoxEx_Des.DisplayMember = "Text";
            this.comboBoxEx_Des.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.comboBoxEx_Des.FormattingEnabled = true;
            this.comboBoxEx_Des.ItemHeight = 14;
            this.comboBoxEx_Des.Items.AddRange(new object[] {
            this.comboItem_des1,
            this.comboItem_des2,
            this.comboItem_des3,
            this.comboItem_des4,
            this.comboItem_des5,
            this.comboItem_des6,
            this.comboItem_des7,
            this.comboItem_des8,
            this.comboItem_des9});
            this.comboBoxEx_Des.Location = new System.Drawing.Point(113, 3);
            this.comboBoxEx_Des.Name = "comboBoxEx_Des";
            this.comboBoxEx_Des.Size = new System.Drawing.Size(104, 20);
            this.comboBoxEx_Des.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.comboBoxEx_Des.TabIndex = 6;
            this.comboBoxEx_Des.Text = "Nơi đến";
            // 
            // comboItem_des1
            // 
            this.comboItem_des1.Text = "Đà Nẵng";
            // 
            // comboItem_des2
            // 
            this.comboItem_des2.Text = "Hạ Long";
            // 
            // comboItem_des3
            // 
            this.comboItem_des3.Text = "Hội An";
            // 
            // comboItem_des4
            // 
            this.comboItem_des4.Text = "Huế";
            // 
            // comboItem_des5
            // 
            this.comboItem_des5.Text = "Nha Trang";
            // 
            // comboItem_des6
            // 
            this.comboItem_des6.Text = "Ninh Bình";
            // 
            // comboItem_des7
            // 
            this.comboItem_des7.Text = "Phan Thiết";
            // 
            // comboItem_des8
            // 
            this.comboItem_des8.Text = "Phúc Quốc";
            // 
            // comboItem_des9
            // 
            this.comboItem_des9.Text = "Vũng Tàu";
            // 
            // comboBoxEx3
            // 
            this.comboBoxEx3.DisplayMember = "Text";
            this.comboBoxEx3.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.comboBoxEx3.FormattingEnabled = true;
            this.comboBoxEx3.ItemHeight = 14;
            this.comboBoxEx3.Location = new System.Drawing.Point(376, 3);
            this.comboBoxEx3.Name = "comboBoxEx3";
            this.comboBoxEx3.Size = new System.Drawing.Size(108, 20);
            this.comboBoxEx3.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.comboBoxEx3.TabIndex = 8;
            this.comboBoxEx3.Text = "Giá";
            // 
            // comboBoxEx4
            // 
            this.comboBoxEx4.DisplayMember = "Text";
            this.comboBoxEx4.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.comboBoxEx4.FormattingEnabled = true;
            this.comboBoxEx4.ItemHeight = 14;
            this.comboBoxEx4.Location = new System.Drawing.Point(490, 4);
            this.comboBoxEx4.Name = "comboBoxEx4";
            this.comboBoxEx4.Size = new System.Drawing.Size(101, 20);
            this.comboBoxEx4.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.comboBoxEx4.TabIndex = 9;
            this.comboBoxEx4.Text = "Còn chỗ";
            // 
            // buttonX3
            // 
            this.buttonX3.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX3.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX3.Location = new System.Drawing.Point(597, 1);
            this.buttonX3.Name = "buttonX3";
            this.buttonX3.Size = new System.Drawing.Size(70, 23);
            this.buttonX3.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.buttonX3.TabIndex = 10;
            this.buttonX3.Text = "Tìm";
            this.buttonX3.Click += new System.EventHandler(this.buttonX3_Click);
            // 
            // groupPanel1
            // 
            this.groupPanel1.CanvasColor = System.Drawing.SystemColors.Control;
            this.groupPanel1.ColorSchemeStyle = DevComponents.DotNetBar.eDotNetBarStyle.Office2007;
            this.groupPanel1.Controls.Add(this.dateTimeInput_Search);
            this.groupPanel1.Controls.Add(this.comboBoxEx_De);
            this.groupPanel1.Controls.Add(this.buttonX3);
            this.groupPanel1.Controls.Add(this.comboBoxEx_Des);
            this.groupPanel1.Controls.Add(this.comboBoxEx4);
            this.groupPanel1.Controls.Add(this.comboBoxEx3);
            this.groupPanel1.Location = new System.Drawing.Point(42, 408);
            this.groupPanel1.Name = "groupPanel1";
            this.groupPanel1.Size = new System.Drawing.Size(676, 33);
            // 
            // 
            // 
            this.groupPanel1.Style.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            this.groupPanel1.Style.BackColorGradientAngle = 90;
            this.groupPanel1.Style.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            this.groupPanel1.Style.BorderBottom = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.groupPanel1.Style.BorderBottomWidth = 1;
            this.groupPanel1.Style.BorderColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBorder;
            this.groupPanel1.Style.BorderLeft = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.groupPanel1.Style.BorderLeftWidth = 1;
            this.groupPanel1.Style.BorderRight = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.groupPanel1.Style.BorderRightWidth = 1;
            this.groupPanel1.Style.BorderTop = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.groupPanel1.Style.BorderTopWidth = 1;
            this.groupPanel1.Style.CornerDiameter = 4;
            this.groupPanel1.Style.CornerType = DevComponents.DotNetBar.eCornerType.Rounded;
            this.groupPanel1.Style.TextAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Center;
            this.groupPanel1.Style.TextColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelText;
            this.groupPanel1.Style.TextLineAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Near;
            // 
            // 
            // 
            this.groupPanel1.StyleMouseDown.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            // 
            // 
            // 
            this.groupPanel1.StyleMouseOver.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.groupPanel1.TabIndex = 11;
            // 
            // dateTimeInput_Search
            // 
            // 
            // 
            // 
            this.dateTimeInput_Search.BackgroundStyle.Class = "DateTimeInputBackground";
            this.dateTimeInput_Search.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dateTimeInput_Search.ButtonDropDown.Shortcut = DevComponents.DotNetBar.eShortcut.AltDown;
            this.dateTimeInput_Search.ButtonDropDown.Visible = true;
            this.dateTimeInput_Search.IsPopupCalendarOpen = false;
            this.dateTimeInput_Search.Location = new System.Drawing.Point(223, 3);
            // 
            // 
            // 
            this.dateTimeInput_Search.MonthCalendar.AnnuallyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dateTimeInput_Search.MonthCalendar.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dateTimeInput_Search.MonthCalendar.CalendarDimensions = new System.Drawing.Size(1, 1);
            this.dateTimeInput_Search.MonthCalendar.ClearButtonVisible = true;
            // 
            // 
            // 
            this.dateTimeInput_Search.MonthCalendar.CommandsBackgroundStyle.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.BarBackground2;
            this.dateTimeInput_Search.MonthCalendar.CommandsBackgroundStyle.BackColorGradientAngle = 90;
            this.dateTimeInput_Search.MonthCalendar.CommandsBackgroundStyle.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.BarBackground;
            this.dateTimeInput_Search.MonthCalendar.CommandsBackgroundStyle.BorderTop = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.dateTimeInput_Search.MonthCalendar.CommandsBackgroundStyle.BorderTopColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.BarDockedBorder;
            this.dateTimeInput_Search.MonthCalendar.CommandsBackgroundStyle.BorderTopWidth = 1;
            this.dateTimeInput_Search.MonthCalendar.CommandsBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dateTimeInput_Search.MonthCalendar.DisplayMonth = new System.DateTime(2017, 5, 1, 0, 0, 0, 0);
            this.dateTimeInput_Search.MonthCalendar.MarkedDates = new System.DateTime[0];
            this.dateTimeInput_Search.MonthCalendar.MonthlyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dateTimeInput_Search.MonthCalendar.NavigationBackgroundStyle.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            this.dateTimeInput_Search.MonthCalendar.NavigationBackgroundStyle.BackColorGradientAngle = 90;
            this.dateTimeInput_Search.MonthCalendar.NavigationBackgroundStyle.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            this.dateTimeInput_Search.MonthCalendar.NavigationBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dateTimeInput_Search.MonthCalendar.TodayButtonVisible = true;
            this.dateTimeInput_Search.MonthCalendar.WeeklyMarkedDays = new System.DayOfWeek[0];
            this.dateTimeInput_Search.Name = "dateTimeInput_Search";
            this.dateTimeInput_Search.Size = new System.Drawing.Size(147, 20);
            this.dateTimeInput_Search.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.dateTimeInput_Search.TabIndex = 11;
            // 
            // groupPanel2
            // 
            this.groupPanel2.CanvasColor = System.Drawing.SystemColors.Control;
            this.groupPanel2.ColorSchemeStyle = DevComponents.DotNetBar.eDotNetBarStyle.Office2007;
            this.groupPanel2.Controls.Add(this.labelX1);
            this.groupPanel2.Location = new System.Drawing.Point(42, 1);
            this.groupPanel2.Name = "groupPanel2";
            this.groupPanel2.Size = new System.Drawing.Size(676, 66);
            // 
            // 
            // 
            this.groupPanel2.Style.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            this.groupPanel2.Style.BackColorGradientAngle = 90;
            this.groupPanel2.Style.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            this.groupPanel2.Style.BorderBottom = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.groupPanel2.Style.BorderBottomWidth = 1;
            this.groupPanel2.Style.BorderColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBorder;
            this.groupPanel2.Style.BorderLeft = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.groupPanel2.Style.BorderLeftWidth = 1;
            this.groupPanel2.Style.BorderRight = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.groupPanel2.Style.BorderRightWidth = 1;
            this.groupPanel2.Style.BorderTop = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.groupPanel2.Style.BorderTopWidth = 1;
            this.groupPanel2.Style.CornerDiameter = 4;
            this.groupPanel2.Style.CornerType = DevComponents.DotNetBar.eCornerType.Rounded;
            this.groupPanel2.Style.TextAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Center;
            this.groupPanel2.Style.TextColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelText;
            this.groupPanel2.Style.TextLineAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Near;
            // 
            // 
            // 
            this.groupPanel2.StyleMouseDown.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            // 
            // 
            // 
            this.groupPanel2.StyleMouseOver.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.groupPanel2.TabIndex = 13;
            // 
            // panelEx1
            // 
            this.panelEx1.CanvasColor = System.Drawing.SystemColors.Control;
            this.panelEx1.ColorSchemeStyle = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.panelEx1.Location = new System.Drawing.Point(42, 447);
            this.panelEx1.Name = "panelEx1";
            this.panelEx1.Size = new System.Drawing.Size(676, 311);
            this.panelEx1.Style.Alignment = System.Drawing.StringAlignment.Center;
            this.panelEx1.Style.BackColor1.ColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            this.panelEx1.Style.BackColor2.ColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            this.panelEx1.Style.Border = DevComponents.DotNetBar.eBorderType.SingleLine;
            this.panelEx1.Style.BorderColor.ColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBorder;
            this.panelEx1.Style.ForeColor.ColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelText;
            this.panelEx1.Style.GradientAngle = 90;
            this.panelEx1.TabIndex = 14;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.AutoScrollMinSize = new System.Drawing.Size(800, 741);
            this.AutoSize = true;
            this.BackColor = System.Drawing.Color.LightSteelBlue;
            this.ClientSize = new System.Drawing.Size(1393, 748);
            this.Controls.Add(this.panelEx1);
            this.Controls.Add(this.groupPanel2);
            this.Controls.Add(this.groupPanel1);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.superTabStrip1);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form1";
            this.Text = "main";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.superTabStrip1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.groupPanel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dateTimeInput_Search)).EndInit();
            this.groupPanel2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.SuperTabStrip superTabStrip1;
        private DevComponents.DotNetBar.SuperTabItem superTabItem1;
        private DevComponents.DotNetBar.SuperTabItem superTabItem2;
        private DevComponents.DotNetBar.SuperTabItem superTabItem3;
        private DevComponents.DotNetBar.SuperTabItem superTabItem4;
        private DevComponents.DotNetBar.SuperTabItem superTabItem5;
        private DevComponents.DotNetBar.LabelX labelX1;
        private DevComponents.DotNetBar.StyleManager styleManager1;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private DevComponents.DotNetBar.Controls.ComboBoxEx comboBoxEx_De;
        private DevComponents.DotNetBar.Controls.ComboBoxEx comboBoxEx_Des;
        private DevComponents.DotNetBar.Controls.ComboBoxEx comboBoxEx3;
        private DevComponents.DotNetBar.Controls.ComboBoxEx comboBoxEx4;
        private DevComponents.DotNetBar.ButtonX buttonX3;
        private DevComponents.DotNetBar.Controls.GroupPanel groupPanel1;
        private DevComponents.DotNetBar.Controls.GroupPanel groupPanel2;
        private DevComponents.DotNetBar.PanelEx panelEx1;
        private DevComponents.Editors.ComboItem comboItem_de1;
        private DevComponents.Editors.ComboItem comboItem_de2;
        private DevComponents.Editors.ComboItem comboItem_des1;
        private DevComponents.Editors.ComboItem comboItem_des2;
        private DevComponents.Editors.ComboItem comboItem_des3;
        private DevComponents.Editors.ComboItem comboItem_des4;
        private DevComponents.Editors.ComboItem comboItem_des5;
        private DevComponents.Editors.ComboItem comboItem_des6;
        private DevComponents.Editors.ComboItem comboItem_des7;
        private DevComponents.Editors.ComboItem comboItem_des8;
        private DevComponents.Editors.ComboItem comboItem_des9;
        private DevComponents.Editors.DateTimeAdv.DateTimeInput dateTimeInput_Search;
    }
}


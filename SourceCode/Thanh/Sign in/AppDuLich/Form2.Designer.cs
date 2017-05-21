namespace AppDuLich
{
    partial class mainmenu
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
            this.lb_city = new System.Windows.Forms.Label();
            this.cb_city = new System.Windows.Forms.ComboBox();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.SuspendLayout();
            this.SuspendLayout();
            // 
            // lb_city
            // 
            this.lb_city.AutoSize = true;
            this.lb_city.Location = new System.Drawing.Point(76, 22);
            this.lb_city.Name = "lb_city";
            this.lb_city.Size = new System.Drawing.Size(24, 13);
            this.lb_city.TabIndex = 0;
            this.lb_city.Text = "City";
            // 
            // cb_city
            // 
            this.cb_city.FormattingEnabled = true;
            this.cb_city.Location = new System.Drawing.Point(117, 22);
            this.cb_city.Name = "cb_city";
            this.cb_city.Size = new System.Drawing.Size(206, 21);
            this.cb_city.TabIndex = 3;
            // 
            // imageList1
            // 
            this.imageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit;
            this.imageList1.ImageSize = new System.Drawing.Size(16, 16);
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            // 
            // splitContainer1
            // 
            this.splitContainer1.Location = new System.Drawing.Point(97, 87);
            this.splitContainer1.Name = "splitContainer1";
            this.splitContainer1.Size = new System.Drawing.Size(556, 178);
            this.splitContainer1.SplitterDistance = 185;
            this.splitContainer1.TabIndex = 4;
            // 
            // mainmenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.ClientSize = new System.Drawing.Size(717, 331);
            this.Controls.Add(this.splitContainer1);
            this.Controls.Add(this.cb_city);
            this.Controls.Add(this.lb_city);
            this.Name = "mainmenu";
            this.Text = "vntour";
            this.Load += new System.EventHandler(this.mainmenu_Load);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lb_city;
        private System.Windows.Forms.ComboBox cb_city;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.SplitContainer splitContainer1;
    }
}
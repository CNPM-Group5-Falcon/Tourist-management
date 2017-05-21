namespace WindowsFormsApplication1
{
    partial class Form3
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
            this.superTabStrip1 = new DevComponents.DotNetBar.SuperTabStrip();
            this.superTabItem1 = new DevComponents.DotNetBar.SuperTabItem();
            ((System.ComponentModel.ISupportInitialize)(this.superTabStrip1)).BeginInit();
            this.SuspendLayout();
            // 
            // superTabStrip1
            // 
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
            this.superTabStrip1.Location = new System.Drawing.Point(115, 48);
            this.superTabStrip1.Name = "superTabStrip1";
            this.superTabStrip1.ReorderTabsEnabled = true;
            this.superTabStrip1.SelectedTabFont = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.superTabStrip1.SelectedTabIndex = 0;
            this.superTabStrip1.Size = new System.Drawing.Size(236, 25);
            this.superTabStrip1.TabCloseButtonHot = null;
            this.superTabStrip1.TabFont = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.superTabStrip1.TabIndex = 0;
            this.superTabStrip1.Tabs.AddRange(new DevComponents.DotNetBar.BaseItem[] {
            this.superTabItem1});
            this.superTabStrip1.Text = "superTabStrip1";
            // 
            // superTabItem1
            // 
            this.superTabItem1.GlobalItem = false;
            this.superTabItem1.Name = "superTabItem1";
            this.superTabItem1.Text = "superTabItem1";
            // 
            // Form3
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(469, 301);
            this.Controls.Add(this.superTabStrip1);
            this.Name = "Form3";
            this.Text = "Form3";
            ((System.ComponentModel.ISupportInitialize)(this.superTabStrip1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.SuperTabStrip superTabStrip1;
        private DevComponents.DotNetBar.SuperTabItem superTabItem1;
    }
}
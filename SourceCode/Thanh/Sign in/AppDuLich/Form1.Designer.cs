namespace AppDuLich
{
    partial class login
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(login));
            this.lb_username = new System.Windows.Forms.Label();
            this.lb_password = new System.Windows.Forms.Label();
            this.txt_username = new System.Windows.Forms.TextBox();
            this.txt_password = new System.Windows.Forms.TextBox();
            this.btn_login = new System.Windows.Forms.Button();
            this.btn_signup = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lb_username
            // 
            this.lb_username.AutoSize = true;
            this.lb_username.BackColor = System.Drawing.SystemColors.ControlDark;
            this.lb_username.Location = new System.Drawing.Point(33, 52);
            this.lb_username.Name = "lb_username";
            this.lb_username.Size = new System.Drawing.Size(71, 13);
            this.lb_username.TabIndex = 0;
            this.lb_username.Text = "USER NAME";
            // 
            // lb_password
            // 
            this.lb_password.AutoSize = true;
            this.lb_password.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.lb_password.Location = new System.Drawing.Point(33, 97);
            this.lb_password.Name = "lb_password";
            this.lb_password.Size = new System.Drawing.Size(70, 13);
            this.lb_password.TabIndex = 1;
            this.lb_password.Text = "PASSWORD";
            // 
            // txt_username
            // 
            this.txt_username.Location = new System.Drawing.Point(120, 44);
            this.txt_username.Name = "txt_username";
            this.txt_username.Size = new System.Drawing.Size(176, 20);
            this.txt_username.TabIndex = 2;
            // 
            // txt_password
            // 
            this.txt_password.Location = new System.Drawing.Point(120, 90);
            this.txt_password.Name = "txt_password";
            this.txt_password.Size = new System.Drawing.Size(176, 20);
            this.txt_password.TabIndex = 3;
            // 
            // btn_login
            // 
            this.btn_login.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.btn_login.Location = new System.Drawing.Point(88, 146);
            this.btn_login.Name = "btn_login";
            this.btn_login.Size = new System.Drawing.Size(94, 61);
            this.btn_login.TabIndex = 4;
            this.btn_login.Text = "LOG IN";
            this.btn_login.UseVisualStyleBackColor = false;
            this.btn_login.Click += new System.EventHandler(this.btn_login_Click);
            // 
            // btn_signup
            // 
            this.btn_signup.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.btn_signup.Location = new System.Drawing.Point(221, 146);
            this.btn_signup.Name = "btn_signup";
            this.btn_signup.Size = new System.Drawing.Size(87, 61);
            this.btn_signup.TabIndex = 5;
            this.btn_signup.Text = "SIGN UP";
            this.btn_signup.UseVisualStyleBackColor = false;
            // 
            // login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.ClientSize = new System.Drawing.Size(509, 271);
            this.Controls.Add(this.btn_signup);
            this.Controls.Add(this.btn_login);
            this.Controls.Add(this.txt_password);
            this.Controls.Add(this.txt_username);
            this.Controls.Add(this.lb_password);
            this.Controls.Add(this.lb_username);
            this.Name = "login";
            this.Text = "vntour";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lb_username;
        private System.Windows.Forms.Label lb_password;
        private System.Windows.Forms.TextBox txt_username;
        private System.Windows.Forms.TextBox txt_password;
        private System.Windows.Forms.Button btn_login;
        private System.Windows.Forms.Button btn_signup;
    }
}


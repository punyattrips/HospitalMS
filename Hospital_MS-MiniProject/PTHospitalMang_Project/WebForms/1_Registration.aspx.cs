using System;
using LibCls_Code;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTHospitalMang_Project.WebForms
{
    public partial class _1_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //NA
        }

        protected void btnReSignIn_Click(object sender, EventArgs e)
        {
            //Create an object of Class ClsProg1
            ClsProg1 obj = new ClsProg1();

            //Find out maximum id of registration
            long ID = obj.MaxID("hid", "register_tb");

            string tempPwd = txtPwd.Text;
            string coPwd = txtCoPwd.Text;

            //Check if the new password and confirm password are similar.
            if (tempPwd == coPwd)
            {
                //Fill these fields and save data to table of the database
                obj.SaveData("INSERT INTO register_tb VALUES(" + ID + ", '" + txtName.Text + "', '" + txtEmail.Text + "', '" + txtUsername.Text + "', '" + txtPwd.Text + "')");
                MessageBox.Show("Your registered is recorded. Go to Login");
                Response.Redirect("1_Login.aspx");
            }
            else
                MessageBox.Show("Invalid Password! Try again"); //Message error if false comparsion
        }

        protected void lkbtnSignUp_Click(object sender, EventArgs e)
        {
            //Visit the login form
            Response.Redirect("1_Login.aspx");
        }
    }
}
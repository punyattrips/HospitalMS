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
    public partial class _1_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //NA
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Declaration variables for giving username and password
            string CUsernm = txtUsername.Text;
            string CPwd = txtPassword.Text;
            ClsProg1 obj = new ClsProg1();
            int lcv = obj.CheckLogin(CUsernm, CPwd);

            //Check login if the given username and password are same the SQL stored data.
            if (lcv > 0)
            {
                MessageBox.Show("Login Successful", "Valid Login"); //display a message if valid username and password
                Response.Redirect("2_HomePage.aspx");   //go to the form after successful login
            }
            else
                MessageBox.Show("Invalid Username or Password. Try again", "Invalid Login"); //display a message if invalid username or password
        }

        protected void lkbtnSignUp_Click(object sender, EventArgs e)
        {
            //Go to this form if a user wants to create a new registration of the website
            Response.Redirect("1_Registration.aspx");
        }
    }
}
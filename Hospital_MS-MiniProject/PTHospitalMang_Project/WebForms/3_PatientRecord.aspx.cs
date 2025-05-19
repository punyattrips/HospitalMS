using System;
using LibCls_Code;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTHospitalMang_Project.WebForms
{
    public partial class _3_PatientRecord : System.Web.UI.Page
    {
        //Declaration string variable
        string typ_patients;

        //Create objects of the class and the SQL classes
        ClsProg1 obj = new ClsProg1();
        MySqlConnection con = new MySqlConnection("server=localhost; user id=root; database=hospmang_db; port=3306; password=ptroot");
        MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            typ_patients = dplistPA.SelectedItem.Value;

            //Find out these data to assign the grid view
            cmd = new MySqlCommand("SELECT mrn_no, proppath, date, name, gender, dob, referral, concession, address, district, state FROM " + typ_patients + ";", con);
            con.Open(); //Open connection to the database
            gviewPatiRecord.DataSource = cmd.ExecuteReader();
            gviewPatiRecord.DataBind();
            con.Close();    //Close connection to the database
        }

        protected void dplistPA_SelectedIndexChanged(object sender, EventArgs e)
        {
            //NA
        }
    }
}
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
    public partial class _4_DrInfoRecord : System.Web.UI.Page
    {
        //Create objects of the class and the SQL classes
        ClsProg1 obj = new ClsProg1();
        MySqlConnection con = new MySqlConnection("server=localhost; user id=root; database=hospmang_db; port=3306; password=ptroot");
        MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Find out these data to assign the grid view
            cmd = new MySqlCommand("SELECT dr_id, dr_proppath, dr_name, dr_gender, dr_dob, dr_relation, dr_dtjoin, dr_dtconfi, dr_depart, dr_reasonconfi, dr_salry, dr_address, dr_cty_vllg, dr_district, dr_state FROM ddr_perdet_tb;", con);
            con.Open();
            gviewPatiRecord.DataSource = cmd.ExecuteReader();
            gviewPatiRecord.DataBind();
            con.Close();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //NA
        }
    }
}
using System;
using System.Data;
using LibCls_Code;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTHospitalMang_Project.WebForms
{
    public partial class _3_PatientAdm_Reg : System.Web.UI.Page
    {
        //Declaration different datatype variables
        long Pid;
        string typ_patients;

        //Create an object of the class
        ClsProg1 obj = new ClsProg1();

        MySqlConnection con = new MySqlConnection("server=localhost; user id=root; database=hospmang_db; port=3306; password=ptroot");
        MySqlDataAdapter adapter;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            typ_patients = dplistPA.SelectedItem.Value;

            //Find out all data of the table
            string cmd = "SELECT * FROM " + typ_patients + "";
            adapter = new MySqlDataAdapter(cmd, con);
            dt = new DataTable();

            //Check if the given tables are same to these table names
            if (typ_patients == "inpatient_adm_tb")
            {
                Pid = obj.MaxID("mrn_no", typ_patients);
                txtMRNo.Text = "INP023" + Pid.ToString();
            }
            else if (typ_patients == "outpatient_adm_tb")
            {
                Pid = obj.MaxID("mrn_no", typ_patients);
                txtMRNo.Text = "OUTP023" + Pid.ToString();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Fill these fields and save data to table of the database
            fuProPic.PostedFile.SaveAs(Server.MapPath("~/Imgs/PatientProfile/" + fuProPic.FileName));
            obj.SaveData("INSERT INTO " + typ_patients + " VALUES('" + txtMRNo.Text + "', '" + txtDate.Text + "', '" + txtName.Text + "', '" + dpdGender.Text + "', '" + txtDOB.Text + "', '" + txtRef.Text + "', '" + txtCon.Text + "', '" + txtAddress.Text + "', '" + txtDist.Text + "', '" + dplistState.Text + "', '~/Imgs/PatientProfile/" + fuProPic.FileName + "')");
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            //Visit the Patient Record Form
            Response.Redirect("3_PatientRecord.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            //NA
        }
    }
}
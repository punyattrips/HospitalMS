using System;
using LibCls_Code;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTHospitalMang_Project.WebForms
{
    public partial class _5_Patient_BillForm : System.Web.UI.Page
    {
        //Declaration variables
        long Pid;
        string typ_patients, mrnID, nmPatient_tb;

        //Create objects of the class and the SQL classes
        ClsProg1 obj = new ClsProg1();
        MySqlConnection con = new MySqlConnection("server=localhost; user id=root; database=hospmang_db; port=3306; password=ptroot");
        MySqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            typ_patients = dplistPA.SelectedItem.Value;

            //Check out if the values are same as tables of the database
            if (typ_patients == "inpati_bill_tb")
            {
                Pid = obj.MaxID("bill_no", typ_patients);
                txtBillNo.Text = "BLIP0" + Pid.ToString();
                nmPatient_tb = "inpatient_adm_tb";
                Bind_dpdMDR();
            }
            else if (typ_patients == "outpati_bill_tb")
            {
                Pid = obj.MaxID("bill_no", typ_patients);
                txtBillNo.Text = "BLOP0" + Pid.ToString();
                nmPatient_tb = "outpatient_adm_tb";
                Bind_dpdMDR();
            }
        }

        protected void btnSaveBl_Click(object sender, EventArgs e)
        {
            //Fill these fields and save data to table of the database
            obj.SaveData("INSERT INTO "+ typ_patients +" VALUES('" + txtBillNo.Text + "', '" + dpdMRNo.Text + "', '" + txtPName.Text + "', '" + txtDrName.Text + "', '" + txtDtADM.Text + "', '" + txtDtDisch.Text + "', '" + txtRmRent.Text + "', '" + txtLabFee.Text + "', '" + txtConsFee.Text + "', '" + txtNetPay.Text + "')");
        }

        protected void btnViewBls_Click(object sender, EventArgs e)
        {
            //Visit the Patient Bill Record Form
            Response.Redirect("5_Patient_BillRecord.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            //NA
        }

        public void Bind_dpdMDR()
        {
            //Get ID of the patient bill data from the table
            con.Open();
            MySqlDataReader dr = new MySqlCommand("SELECT mrn_no FROM " + nmPatient_tb + ";", con).ExecuteReader();
            dpdMRNo.DataSource = dr;
            dpdMRNo.DataValueField = "mrn_no";
            dpdMRNo.DataBind();
            con.Close();
        }

        protected void dplistPA_SelectedIndexChanged(object sender, EventArgs e)
        {
            //NA
        }

        public void Bind_txtName()
        {
            //Check and find out name of the table data with the ID
            con.Open(); //Open connection
            mrnID = dpdMRNo.SelectedItem.Text;
            MySqlCommand cmd = new MySqlCommand("SELECT name FROM " + nmPatient_tb + " WHERE mrn_no ='" + mrnID + "';", con);
            txtPName.Text = Convert.ToString(cmd.ExecuteScalar());
            con.Close();    //Close connection
        }

        protected void dpdMRNo_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Access the function
            Bind_txtName();
        }
    }
}
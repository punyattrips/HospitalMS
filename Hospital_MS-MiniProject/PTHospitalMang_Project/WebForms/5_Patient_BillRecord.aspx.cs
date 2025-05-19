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
    public partial class _5_Patient_BillRecord : System.Web.UI.Page
    {
        //long Pid;
        string typ_patients;
        ClsProg1 obj = new ClsProg1();
        MySqlConnection con = new MySqlConnection("server=localhost; user id=root; database=hospmang_db; port=3306; password=ptroot");
        MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            typ_patients = dplistPA.SelectedItem.Value;

            cmd = new MySqlCommand("SELECT bill_no, mrn, pname, drname, dtadm, dtdisch, rmrent, lbtestfee, consfee, netpay FROM " + typ_patients + ";", con);
            con.Open();
            gviewPatiRecord.DataSource = cmd.ExecuteReader();
            gviewPatiRecord.DataBind();
            con.Close();
        }
    }
}
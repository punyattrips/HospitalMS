using System;
using LibCls_Code;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTHospitalMang_Project.WebForms
{
    public partial class _4_DrInfoDetails : System.Web.UI.Page
    {
        //Declaration long variable
        long DrID;

        //Create an object of the class
        ClsProg1 obj = new ClsProg1();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Seem this filling with number (ID) in textarea
            DrID = obj.MaxID("dr_id", "ddr_perdet_tb");
            txtDrNo.Text = "GHDR0" + DrID.ToString();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Fill these fields and save data to table of the database
            fuProPic.PostedFile.SaveAs(Server.MapPath("~/Imgs/DoctorProfile/" + fuProPic.FileName));
            obj.SaveData("INSERT INTO ddr_perdet_tb VALUES('" + txtDrNo.Text + "', '" + txtDrName.Text + "', '" + dpdGender.SelectedItem.Value + "', '" + txtDOB.Text + "', '" + dpdRelationship.SelectedItem.Value + "', '" + txtDtJoining.Text + "', '" + txtDtConfirm.Text + "', '" + txtDept.Text + "', '" + txtReasonConf.Text + "', '" + txtSal.Text + "', '" + txtAddress.Text + "', '" + txtCty_Vllg.Text + "', '" + txtDist.Text + "', '" + dplistState.Text + "', '~/Imgs/DoctorProfile/" + fuProPic.FileName + "')");
        }

        protected void btnViewRecord_Click(object sender, EventArgs e)
        {
            //Visit the Doctor Detials Record
            Response.Redirect("4_DrInfoRecord.aspx");
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            //string moDetails = "SET SQL_SAFE_UPDATES = 0; " + "UPDATE leeban_db.drpersonalarea_tb SET dr_name='" + txtDrName.Text + "', dr_gender='" + dpdGender.SelectedItem.Value + "', dr_dob='" + txtDOB.Text + "', dr_relation='" + dpdRelationship.SelectedItem.Value + "', dr_dtjoin='" + txtDtJoining.Text + "', dr_dtconfi='" + txtDtConfirm.Text + "', dr_depart='" + txtDept.Text + "', dr_reasonconfi='" + txtReasonConf.Text + "', dr_salry='" + txtSal.Text + "', dr_address='" + txtAddress.Text + "', dr_cty_vllg'" + txtCty_Vllg.Text + "', dr_district='" + txtDist.Text + "', dr_state='" + dplistState.Text + "' WHERE dr_id = 'GHDR0" + /*(maxCOLforDRid - 1) + */"'; " + "SET SQL_SAFE_UPDATES = 1; ";
            //obj.SaveData(moDetails);
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            //string prevPage = Request.UrlReferrer.ToString();
            //Response.Redirect(prevPage);
        }
    }
}
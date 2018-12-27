using Samruddhi.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Samruddhi
{
    public partial class ChallanForm : System.Web.UI.Page
    {       
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                Response.Redirect("Login.aspx");
        }
        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            try
            {
                con = Repository.GetConnection();
                con.Open();
                string commandtext = "" +
               "Insert into Challan(Challan_No,Challan_Ref,Challan_Remit_Date,Challan_Remitt_Name,Head_of_Account," +
               "Challan_Expire_Date,Challan_District,DeptName,BankName,BankCity,BankAddress,Challan_Amount,Payment_Status," +
               "Challan_Document_No,IsActive) " +
               "Values('" + txtChallanNumber.Text + "'," +
               "'"  + txtChallanRefNumber.Text + "' ,' " +
               ""   + ChallanRemittDate.SelectedDate.ToShortDateString().ToString() + "'" +
               ",'" + txtChallanRemittName.Text + "'" +
               ",'" + ddlHeadOfAccount.Text + "'" +
               ",'" + calChallExpDate.SelectedDate.ToShortDateString().ToString() + "'" +
               ",'" + ddlChallanDistrict.SelectedItem + "'" +
               ",'" + Session["DepartmentName"].ToString() + "'" +
               ",'" + ddlBankName.Text + "'" +
               ",'" + ddlBankCity.Text + "'" +
               ",'" + txtBankAddress.Text + "'" +
               ",'" + txtChallanAmt.Text + "'" +
               ",'" + ddlPaymentStatus.Text + "'" +
               ",'" + txtChallanDocNum.Text + "'" +",'True' "+
               ")";
                SqlCommand sqlCommandText = new SqlCommand(commandtext, con);
                SqlCommand sqlcomd = new SqlCommand(commandtext, con);
                sqlcomd.ExecuteNonQuery();
            }
            catch(Exception  ex){ throw ex; }
            finally { con.Close(); }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtChallanNumber.Text = string.Empty;
            txtChallanRefNumber.Text = string.Empty;
            txtChallanRemittName.Text = string.Empty;
            txtBankAddress.Text = string.Empty;
            txtChallanAmt.Text = string.Empty;
            txtChallanDocNum.Text = string.Empty;
        }
    }
}
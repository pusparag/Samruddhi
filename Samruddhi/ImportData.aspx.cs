using Samruddhi.Utilities;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;

namespace Samruddhi
{
    public partial class ImportData : System.Web.UI.Page
    {        
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                Response.Redirect("Login.aspx");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string csvPath = Server.MapPath("~/Files/") + Path.GetFileName(FileUpload1.PostedFile.FileName);
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[15] 
                {
                    new DataColumn("Challan_No", typeof(string)),
                    new DataColumn("Challan_Ref",typeof(string)),
                    new DataColumn("Challan_Remit_Date",typeof(string)),
                    new DataColumn("Challan_Remitt_Name",typeof(string)),
                    new DataColumn("Head_of_Account",typeof(string)),
                    new DataColumn("Challan_Expire_Date",typeof(string)),
                    new DataColumn("Challan_District",typeof(string)),
                    new DataColumn("DeptName",typeof(string)),
                    new DataColumn("BankName",typeof(string)),
                    new DataColumn("BankCity",typeof(string)),
                    new DataColumn("BankAddress",typeof(string)),
                    new DataColumn("Challan_Amount",typeof(string)),
                    new DataColumn("Payment_Status",typeof(string)),
                    new DataColumn("IsActive",typeof(string)),
                    new DataColumn("Challan_Document_No",typeof(string))
                }) ;
                
                //Read the contents of CSV file.
                string csvData = File.ReadAllText(Path.GetFullPath(FileUpload1.PostedFile.FileName));
                //Execute a loop over the rows.
                foreach (string row in csvData.Split('\n'))
                {
                    if (!string.IsNullOrEmpty(row))
                    {
                        dt.Rows.Add();
                        int i = 0;

                        //Execute a loop over the columns.
                        foreach (string cell in row.Split(','))
                        {
                            dt.Rows[dt.Rows.Count - 1][i] = cell;
                            i++;
                        }
                    }
                }               
                try
                {
                    con = Repository.GetConnection();
                    con.Open();
                    StringBuilder str = new StringBuilder();
                    foreach(DataRow dr in dt.Rows)
                    {
                        str.Append("INSERT INTO [dbo].[Challan_Import] ([Challan_No], [Challan_Ref], [Challan_Remit_Date], [Challan_Remitt_Name], [Head_of_Account], [Challan_Expire_Date], [Challan_District], [DeptName], [BankName], [BankCity], [BankAddress], [Challan_Amount], [Payment_Status], [IsActive], [Challan_Document_No]) ");
                        str.Append("Values ('" + dr[0] + "','" + dr[1] + "','" + dr[2] + "','" + dr[3] + "','" + dr[4] + "','" + dr[5] + "','" + dr[6] + "','" + dr[7] + "','" + dr[8] + "','" + dr[9] + "','" + dr[10] + "','" + dr[11] + "','" + dr[12] + "','" + dr[13] + "','" + dr[14] + "' )");
                        SqlCommand sqlcomd = new SqlCommand(str.ToString(), con);
                        sqlcomd.ExecuteNonQuery();
                        str = new StringBuilder();
                    }        
                }
                catch (Exception ex) { throw ex; }
                finally { con.Close(); }
            }
            else
            {
               
            }
        }
    }
}
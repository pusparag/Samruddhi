using Samruddhi.Utilities;
using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Samruddhi
{
    public partial class UnmatchedData : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                Response.Redirect("Login.aspx");            
        }
        private void BindMainRepeater()
        {
            SqlCommand cmd = new SqlCommand();
            try
            {                
                cmd = new SqlCommand("SELECT  * FROM Challan A inner join Challan_Import B on A.Challan_No = B.Challan_No where A.Challan_Amount != B.Challan_Amount AND " +
                    "FORMAT(CAST(A.Challan_Remit_Date as datetime2),'MM/dd/yyyy')  between CAST('" +  Calendar1.SelectedDate.ToShortDateString().ToString()  + "' as Datetime2) AND  CAST('" + Calendar2.SelectedDate.ToShortDateString() + "' as Datetime2)", Repository.GetConnection());
                cmd.Connection.Open();
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                ad.SelectCommand = cmd;
                ad.Fill(dt);
                Repeater0.DataSource = cmd.ExecuteReader();
                Repeater0.DataBind();
                if (Repeater0.Items.Count > 0)
                {
                    totalcount.Text = dt.Rows.Count.ToString();
                }
            }
            finally
            {
                cmd.Connection.Close();
                cmd.Connection.Dispose();
            }
        }
        
        
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            //BindRepeater();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=RepeaterExport.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Repeater0.RenderControl(hw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            BindMainRepeater();
        }
    }
}
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
    public partial class Annexure : System.Web.UI.Page
    {
        public int PageNumber
        {
            get
            {
                if (ViewState["PageNumber"] != null)
                {
                    return Convert.ToInt32(ViewState["PageNumber"]);
                }
                else
                {
                    return 0;
                }
            }
            set { ViewState["PageNumber"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                Response.Redirect("Login.aspx");
            BindMainRepeater();            
        }
        private void BindMainRepeater()
        {
            SqlCommand cmd = new SqlCommand();
            try
            {
                cmd = new SqlCommand("SELECT * FROM Challan where Head_of_Account = '" + DropDownList1.SelectedValue + "'", Repository.GetConnection());
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
        private void BindRepeater()
        {
            SqlCommand cmd = new SqlCommand();
            try
            {               
                cmd = new SqlCommand("SELECT * FROM Challan where Head_of_Account = '" + DropDownList1.SelectedValue + "'", Repository.GetConnection());
                cmd.Connection.Open();
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                ad.SelectCommand = cmd;
                ad.Fill(dt);

                PagedDataSource pgitems = new PagedDataSource();
                pgitems.DataSource = dt.DefaultView;
                pgitems.AllowPaging = true;

                //Control page size from here 
                pgitems.PageSize = 10;
                pgitems.CurrentPageIndex = PageNumber;
                if (pgitems.PageCount > 1)
                {
                    Repeater1.Visible = true;
                    ArrayList pages = new ArrayList();
                    for (int i = 0; i <= pgitems.PageCount - 1; i++)
                    {
                        pages.Add((i + 1).ToString());
                    }
                    Repeater1.DataSource = pages;
                    Repeater1.DataBind();
                   
                }
                else
                {
                    Repeater1.Visible = false;
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
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            BindRepeater();
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
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Samruddhi
{    
    public partial class Home : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Samruddhi\Samruddhi\Samruddhi\App_Data\Testing.mdf;Integrated Security=True";
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string n = String.Format("{0}", Request.Form["username"]);
                string o = String.Format("{0}", Request.Form["pass"]);
                con = new SqlConnection(connectionstring);
                con.Open();
                string commandtext = "Select LoginName,DeptID from UserTable where LoginName='"+ n+"' And LoginPassword ='" + o + "'";
                //string commandtext = "Select LoginName,DeptID from UserTable";
                SqlCommand sqlCommandText = new SqlCommand(commandtext, con);
                SqlDataReader reader = sqlCommandText.ExecuteReader();
                var IsLogin = false;
                while (reader.Read())
                {
                    Session["DeptID"] = reader[1];
                    Session["LoginName"] = reader[0];
                    IsLogin = true;
                }
                if (IsLogin)
                {
                    Response.Redirect("~/Landing.html");
                }
                else
                {
                    lblerrorMessage.Text = "You have entered wrong credential";
                    lblerrorMessage.Visible = true;
                    lblerrorMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch { }
            finally { con.Close(); }
        }
    }
}
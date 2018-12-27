using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web;

namespace Samruddhi
{
    public partial class Login : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Samruddhi\Samruddhi\Samruddhi\App_Data\Testing.mdf;Integrated Security=True";
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!this.Page.User.Identity.IsAuthenticated)
            //{
            //    FormsAuthentication.RedirectToLoginPage();
            //}
        }
      
        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            string n = String.Format("{0}", Request.Form["username"]);
            string o = String.Format("{0}", Request.Form["pass"]);
            string d = String.Format("{0}", Request.Form["dept"]);
            try
            {
                con = new SqlConnection(connectionstring);
                con.Open();
                string commandtext = "Select LoginName,DeptID from UserTable where LoginName='" + n + "' And LoginPassword ='" + o + "' AND DeptID='"+  d + "'";
                SqlCommand sqlCommandText = new SqlCommand(commandtext, con);
                SqlDataReader reader = sqlCommandText.ExecuteReader();
                var IsLogin = false;
                while (reader.Read())
                {
                    Session["DeptID"] = reader[1];
                    Session["LoginName"] = reader[0];
                    Session["DepartmentName"] = d;
                    IsLogin = true;
                }               
                if (IsLogin)
                {
                    FormsAuthentication.SetAuthCookie(n.Trim(), false);
                    FormsAuthenticationTicket ticket1 = new FormsAuthenticationTicket(1, n.Trim(), DateTime.Now, DateTime.Now.AddMinutes(10), false, "Admin");
                    HttpCookie cookie1 = new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket1));
                    Response.Cookies.Add(cookie1);
                }
                String returnUrl1;
                // the login is successful
                if (Request.QueryString["ReturnUrl"] == null && IsLogin)
                {
                    returnUrl1 = "Landing.html";
                }
                //login not unsuccessful 
                else
                {
                    returnUrl1 = Request.QueryString["ReturnUrl"];
                }
                Response.Redirect(returnUrl1);
            }
            catch { }
            finally { con.Close(); }
        }
    }
}
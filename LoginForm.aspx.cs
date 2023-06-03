using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Login_Page
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            

            
            if (txtUsername.Text == "" || txtPassword.Text== "")
            {
                lblErrorMsg.Text = "Please enter Username and Password";


            }

            else
            {
                string strConn = WebConfigurationManager.ConnectionStrings["LoginConn"].ConnectionString;
                SqlConnection objConn = new SqlConnection(strConn);
                try
                {
                    objConn.Open();
                    string strQuery = "Select * from Login_Table where Username=@user and Passowrd=@pass";
                    SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                    objCmd.Parameters.AddWithValue("@user", txtUsername.Text);
                    objCmd.Parameters.AddWithValue("@pass", txtPassword.Text);

                    SqlDataReader objRead = objCmd.ExecuteReader();

                    if (objRead.Read())
                    {
                        Session["User"] = txtUsername.Text;
                        Response.Redirect("InboxPage.aspx");
                    }
                }catch(Exception ex)
                {
                    throw ex;
                }
               
            }
        }
    }
}
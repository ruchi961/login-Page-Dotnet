using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Login_Page
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string ConnString = WebConfigurationManager.ConnectionStrings["LoginConn"].ConnectionString;
            SqlConnection objConn = new SqlConnection(ConnString);
            string Query = "insert into Register values(@user,@email,@passwd,@mobile,@approval)";

            try
            {
                objConn.Open();
                SqlCommand objCmd = new SqlCommand(Query, objConn);
                objCmd.Parameters.AddWithValue("@user", txtUser.Text);
                objCmd.Parameters.AddWithValue("@email", txtEmail.Text);
                objCmd.Parameters.AddWithValue("@passwd", txtPass.Text);
                objCmd.Parameters.AddWithValue("@mobile", txtMobile.Text);
                objCmd.Parameters.AddWithValue("@approval", "n");

                int intFlag = objCmd.ExecuteNonQuery();

                //string struser = txtUser.Text;
                if (intFlag > 0)
                {
                    lblMsg.Text = "Records Inserted Successfully .....";
                    txtUser.Text = "";
                    txtEmail.Text = "";
                    /* No need to empty password and re enter password fields as they get automatically
                     empty for security purpose*/
                    txtMobile.Text = "";

                }
                
            }catch(Exception ex)
            {
                
            }
        }
    }
}
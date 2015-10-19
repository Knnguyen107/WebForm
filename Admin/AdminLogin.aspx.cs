using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            int result;

            try
            {
                // Openning the connection to 'Cinepelx DB'
                String connString = System.Configuration.ConfigurationManager.ConnectionStrings["CineplexDb"].ToString();

                using (SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();

                    // Setup the Required Stored Procedure for Login
                    SqlCommand cmd = new SqlCommand("Admin_login", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Setup the direct the inputs from WebForms
                    SqlParameter p1 = new SqlParameter("username", UserName.Text);
                    SqlParameter p2 = new SqlParameter("password", Passwords.Text);
                    cmd.Parameters.Add(p1);
                    cmd.Parameters.Add(p2);

                    //SqlDataReader rd = cmd.ExecuteReader();
                    //SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    //DataTable dt = new DataTable();

                    Session["User"] = UserName.Text;
                    result = (int)cmd.ExecuteScalar();


                    if (result > 0)
                    {
                        Response.Redirect("https://youtu.be/a0mOLyuHALc?t=25s");
                    }
                    else
                    {
                        Literal1.Text = "Invalid credentials";
                    }
                }

            }
            catch
            {

            }

        }
    }
}
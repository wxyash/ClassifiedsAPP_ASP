using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

using passwordHasher;
public partial class signUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUserRegister_Click(object sender, EventArgs e)
    {

        String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {

            SqlCommand cmd = new SqlCommand("SELECT email from users ", con);
            con.Open();
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string database_email = reader.GetString(0);
                if(database_email == txtUserEmail.Text)
                {
                    alertlbl.Style.Remove("display");
                    lblsignUp.Text = "Sorry, the email is already in use. Please try again with a different Email.";
                    return;
                    
                }
            }
            reader.Close();
                

            hashPass pass = new hashPass();
            string salt = pass.generateSalt(10);
            string hash = pass.generateHash(txtUserConfirmPassword.Text, salt);


            SqlCommand insert = new SqlCommand("INSERT into users values('" + txtUserFirstName.Text + "','" + txtUserLastName.Text + "','" + txtUserEmail.Text + "','" + hash + "','" + salt + "')", con);
            insert.ExecuteNonQuery();
            insert.Dispose();
            
           //SqlCommand cmd3 = new SqlCommand("SELECT TOP 1 user_id FROM users ORDER BY user_id DESC",con);
           // SqlDataReader reader2 = cmd3.ExecuteReader();
           // string ID = "";
           // reader2.Read();
           // ID = reader2.GetString(0);
           //string subPath = @"Accounts\user\"+ID; // your code goes here
           //Directory.CreateDirectory(Server.MapPath(subPath));
           // return;





        }
    }
}
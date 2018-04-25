using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using passwordHasher;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class signUpBusiness : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //if (IsPostBack)
        //{
        //    return;
        //}

        if (Directory.Exists(Server.MapPath(@"Accounts\business\" + txtBusinessID.Text))) 
        {
            alertlbl.Style.Remove("display");
            lblsignUpBus.Text = "Sorry, the Business ID is already in use. Please log in with your email.";
            return;
        }

        hashPass pass = new hashPass();
        string salt = pass.generateSalt(10);
        string hash = pass.generateHash(txtConfirmPassword.Text, salt);
        String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand insert = new SqlCommand("INSERT into business values('" + txtBusinessID.Text + "','" + txtBusinessName.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtEmail.Text + "','" + txtAddress.Text + ", " + txtAddress2.Text + ", " + txtCity.Text + ", " + ddProvince.Text + ", " + txtPostalCode.Text + "','" + hash + "','" + salt + "')", con);
            con.Open();
            insert.ExecuteNonQuery();
            string subPath = @"Accounts\business\"; // your code goes here
            Directory.CreateDirectory(Server.MapPath(subPath+txtBusinessID.Text));
        }

            
    }
}
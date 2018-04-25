using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using passwordHasher;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        DataTable userData = new DataTable();
        DataTable businessData = new DataTable();
        SqlDataAdapter userAdapter;
        SqlDataAdapter businessAdapter;
        hashPass hash = new hashPass();
        using (SqlConnection con = new SqlConnection(CS))
        {

            SqlCommand cmd = new SqlCommand("SELECT * from users where email = @email", con);
            cmd.Parameters.AddWithValue("email", txtEmailLogin.Text); // adds the entered email to the query
            con.Open();
            userAdapter = new SqlDataAdapter(cmd);
            userAdapter.Fill(userData); // fills the datatable with query result retrived from SQL

            if (userData.Rows.Count == 1)
            {
            
              
              
              string pass =  userData.Rows[0]["user_password"].ToString();
              string salt = userData.Rows[0]["user_salt"].ToString();

              string enteredPass_HashedWithSalt = hash.generateHash(txtEnterPass.Text, salt);
                if (pass == enteredPass_HashedWithSalt)  // if the password matches with their 
                {
                    Session["USERID"] = userData.Rows[0]["user_id"].ToString();
                    Response.Redirect("index.aspx");
                    return;
                }
                else
                {
                    lblLogin.Text = "Incorrect Email/Password Combination";
                    alertlbl.Style.Remove("display");
                    return;
                }
            
            }

            //----------------------------CHECKING FROM THE BUSINESS TABLE-------------------------------------

            SqlCommand cmd2 = new SqlCommand("SELECT * from business where business_email = @email", con);
            cmd2.Parameters.AddWithValue("email", txtEmailLogin.Text);
            businessAdapter = new SqlDataAdapter(cmd2);
            businessAdapter.Fill(businessData);

            if(businessData.Rows.Count == 1)
            {
                string pass = businessData.Rows[0]["business_password"].ToString();
                string salt = businessData.Rows[0]["business_salt"].ToString();

                string enteredPassword_HashedWithSalt = hash.generateHash(txtEnterPass.Text, salt);

                if(pass == enteredPassword_HashedWithSalt)
                {
                    Session["USERID"] = businessData.Rows[0]["business_id"];
                    Session["isBusiness"] = "true";
                    Server.Transfer("index.aspx");
                    return;
                }

                else
                {
                    lblLogin.Text = "Incorrect Email/Password Combination";
                    alertlbl.Style.Remove("display");
                    return;
                }
            }

            lblLogin.Text = "Email not found. Did you register?";
            alertlbl.Style.Remove("display");
            return;

        }
    }
}
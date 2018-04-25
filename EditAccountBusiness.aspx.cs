using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using passwordHasher;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["USERID"]==null || Session["isBusiness"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                DataTable businessData = new DataTable();
                SqlDataAdapter businessAdapter;

                SqlCommand cmd = new SqlCommand("SELECT * from business where business_id = @id", con);
                cmd.Parameters.AddWithValue("id", Convert.ToInt32(Session["USERID"].ToString()));
                con.Open();
                businessAdapter = new SqlDataAdapter(cmd);
                businessAdapter.Fill(businessData);
                string [] addressArray = businessData.Rows[0]["business_address"].ToString().Split(',');
                txtBusinessName.Text = businessData.Rows[0]["business_name"].ToString();
                txtFirstName.Text = businessData.Rows[0]["owner_Fname"].ToString();
                txtLastName.Text = businessData.Rows[0]["owner_Lname"].ToString();
                txtEmail.Text = businessData.Rows[0]["business_email"].ToString();
                txtAddress.Text = addressArray[0];
                txtAddress2.Text = addressArray[1];
                txtCity.Text = addressArray[2];
                txtPostalCode.Text = addressArray[4];
            }
        }

    }

    protected void btnEditBusiness_Click(object sender, EventArgs e)
    {
        hashPass pass = new hashPass();
        string salt = pass.generateSalt(10);
        string hash = pass.generateHash(txtConfirmPassword.Text, salt);
        String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            string update = "UPDATE [business] SET [owner_Fname] = @FirstName, [business_name] = @Bname,  [owner_Lname] = @LastName, [business_email] = @Email, [business_password] = @Password, [business_address] = @Address1, [business_salt] = @salt WHERE business_id = @id";
            SqlCommand insert = new SqlCommand(update, con);
            insert.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
            insert.Parameters.AddWithValue("@LastName", txtLastName.Text);
            insert.Parameters.AddWithValue("@Email", txtEmail.Text);
            insert.Parameters.AddWithValue("@Address1", txtAddress.Text + ", " + txtAddress2.Text + ", " + txtCity.Text + " ," + txtPostalCode.Text + ", " + ddProvince.Text);
            insert.Parameters.AddWithValue("@Password", hash);
            insert.Parameters.AddWithValue("@salt", salt);
            insert.Parameters.AddWithValue("@Bname", txtBusinessName.Text);
            insert.Parameters.AddWithValue("@id", Convert.ToInt32(Session["USERID"].ToString()));
            con.Open();
            insert.ExecuteNonQuery();

        }

    }
}
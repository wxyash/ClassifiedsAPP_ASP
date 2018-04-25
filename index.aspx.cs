using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class index : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    DataTable businessData = new DataTable();
    SqlDataAdapter businessAdapter;
    SqlDataAdapter userAdapter;
    SqlDataAdapter adAdapter;
    DataTable userData = new DataTable();
    DataTable AdData = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {

            SqlCommand cmd = new SqlCommand("SELECT TOP 3 * from Ads order by AD_ID DESC", con);
            con.Open();
            adAdapter = new SqlDataAdapter(cmd);
            adAdapter.Fill(AdData);
            }

        if (Session["USERID"] == null && Session["isBusiness"] == null)
        {
            btn_LogOut.Style.Add("Display", "None");
            lblFirstName.Style.Add("Display", "None");
            lblLastName.Style.Add("Display", "None");
        }
        else if (Session["USERID"] != null && Session["isBusiness"] == null)
        {
            btnLogin.Style.Add("Display", "None");

            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("SELECT * from users where user_id = @id", con);
                cmd.Parameters.AddWithValue("id", Convert.ToInt32(Session["USERID"].ToString()));
                con.Open();
                userAdapter = new SqlDataAdapter(cmd);
                userAdapter.Fill(userData);
                lblFirstName.Text = userData.Rows[0]["first name"].ToString();
                lblLastName.Text = userData.Rows[0]["last name"].ToString();
            }

        }
        else if (Session["USERID"] != null && Session["isBusiness"] != null)
        {
            btnLogin.Style.Add("Display", "None");

            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("SELECT * from business where business_id = @id", con);
                cmd.Parameters.AddWithValue("id", Convert.ToInt32(Session["USERID"].ToString()));
                con.Open();
                businessAdapter = new SqlDataAdapter(cmd);
                businessAdapter.Fill(businessData);
                lblFirstName.Text = businessData.Rows[0]["owner_Fname"].ToString();
                lblLastName.Text = businessData.Rows[0]["owner_Lname"].ToString();
            }

        }


        //---------------------INFO for table-------------- -

         // Getting Image URLS:-

      string[] image1Array = AdData.Rows[0]["imgPath"].ToString().Split(',');
      string[] image2Array = AdData.Rows[1]["imgPath"].ToString().Split(',');
        string[] image3Array = AdData.Rows[2]["imgPath"].ToString().Split(',');
        Image1.ImageUrl = "~/"+image1Array[0];
        Image2.ImageUrl = "~/" + image2Array[0];
        Image3.ImageUrl = "~/" + image3Array[0];

        lbl_Row1_title.Text = AdData.Rows[0]["Title"].ToString();
        lbl_Row2_title.Text = AdData.Rows[1]["Title"].ToString();
        lbl_Row3_title.Text = AdData.Rows[2]["Title"].ToString();


        Label [] rowLocationArray = new Label[] {lbl_Row1_location, lbl_Row2_location, lbl_Row3_location };
        Label [] nameArray = new Label [] { lbl_Row1_name, lbl_Row2_name, lbl_Row3_name };
        HyperLink[] linkArray = new HyperLink[] { HyperLink1, HyperLink2, HyperLink3 };
        
        

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT * from business where business_id = @bid", con);
            con.Open();
            for (int i = 0; i<3; i++)
            {
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@bid", Convert.ToInt32(AdData.Rows[i]["poster_ID_FK"].ToString()));
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    string[] location = reader.GetString(5).Split(',');
                    rowLocationArray[i].Text = location[2];
                    nameArray[i].Text = reader.GetString(1);
                    linkArray[i].NavigateUrl = "ViewAd.aspx?ad="+ AdData.Rows[i]["AD_ID"].ToString();

                }
                reader.Close();
                
            }
            con.Close();
            
        }




    }

    private void btnClick(string link)
    {

    }


    protected void btn_LogOut_Click(object sender, EventArgs e)
    {
        Session["USERID"] = null;
        Session["isBusiness"] = null;
        Response.Redirect("index.aspx");
    }

    protected void btn_LogIn_Click(object sender, EventArgs e)
    {
        Server.Transfer("login.aspx");
    }
}
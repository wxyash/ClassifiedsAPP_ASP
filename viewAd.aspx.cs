using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;

public partial class viewAdd : System.Web.UI.Page
{
    DataTable AdData = new DataTable();
    SqlDataAdapter adAdapter;
    DataTable bizData = new DataTable();
    SqlDataAdapter bizAdapter;

    protected void Page_Load(object sender, EventArgs e)
    {
        String ad_id = Request.QueryString["ad"];
        String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {

            SqlCommand cmd = new SqlCommand("SELECT * from Ads where AD_ID = @id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(ad_id));
            adAdapter = new SqlDataAdapter(cmd);
            adAdapter.Fill(AdData);
            con.Close();
        }
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT * from business where business_id = @id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(AdData.Rows[0]["poster_ID_FK"].ToString()));
            bizAdapter = new SqlDataAdapter(cmd);
            bizAdapter.Fill(bizData);
            con.Close();
        }

        lblBizName.Text = bizData.Rows[0]["business_name"].ToString();
        string[] lblLocationArr = bizData.Rows[0]["business_address"].ToString().Split(',');
        lblLocation.Text = lblLocationArr[2];
        lblTitle.Text = AdData.Rows[0]["Title"].ToString();
        lblServiceType.Text = AdData.Rows[0]["catagory"].ToString();
        lblDescription.Text = AdData.Rows[0]["description"].ToString();
        
        string [] imgArray = AdData.Rows[0]["imgPath"].ToString().Split(',');
        Image1.ImageUrl = imgArray[0];
        if(imgArray.Length>1)
            Image2.ImageUrl = imgArray[1];
        if (imgArray.Length > 2)
            Image3.ImageUrl = imgArray[2];
    }
}
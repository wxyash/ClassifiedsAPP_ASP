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


public partial class postAd : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERID"] == null || Session["isBusiness"] == null)
        {
            Response.Redirect("login.aspx");
        }

    }

    protected void btnPostAd_Click(object sender, EventArgs e)
    {
        string subPath = @"Accounts\business\" + Session["USERID"].ToString() + @"\";
       
        if(!Directory.Exists(Server.MapPath(subPath + "AD"))){
            Directory.CreateDirectory(Server.MapPath(subPath + "AD"));
        }
        
        int x = 0;
        string[] imgArray;
        string storedArray = "";

        if (FileUpload1.HasFile)
    
        {
            
            imgArray = new string[FileUpload1.PostedFiles.Count];
            foreach (HttpPostedFile F in FileUpload1.PostedFiles)
            {
                
                string Fname = F.FileName;
                F.SaveAs(Server.MapPath("Accounts\\business\\")+Session["USERID"]+"\\AD\\"+Path.GetFileName(F.FileName));
                string link = "Accounts/business/"+Session["USERID"].ToString() + "/AD/" + Path.GetFileName(F.FileName);
                imgArray[x] = link;
                x++;
            }
            storedArray = string.Join(",", imgArray);
        }
        
        String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {

            SqlCommand insert = new SqlCommand("INSERT into Ads values('" + txtAdTitle.Text+ "','" + txtAdWeb.Text + "','" + ddCatagory.SelectedItem.Text + "','" + adDescription.InnerText   + "','" + storedArray + "','" + Session["USERID"].ToString() + "')", con);
            con.Open();
            insert.ExecuteNonQuery();
            
            
        }
    }
}
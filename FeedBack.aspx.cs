using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        if (Session["USERID"] == null)
        {
            Response.Redirect("login.aspx");
        }

    }
    public String rdbText()
    {
        if (rdbNo.Checked)
        {
            return "true";
        }
        else
        {
            return "false";

        }
    }


    protected void btnFeedback_Click(object sender, EventArgs e)
    {
        string loggedInID = Session["USERID"].ToString();   
        String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
           
            con.Open();
            SqlCommand insert = new SqlCommand("INSERT into FeedBack_T values('" + txtFeedbackName.Text + "','" + txtFeedbackLastName.Text + "','" + txtFeedbackEmail.Text + "','" + txtPhoneNumber.Text + "','" + txtFeedbackSubject.Text + "','" + ddFeedbackType.Text + "','" + textAreaFeedback.InnerText + "','" + rdbText() + "','" + loggedInID + "')", con);
            insert.ExecuteNonQuery();
            insert.Dispose();

        }

        if (Page.IsValid)
        {
            Server.Transfer("feedBackThankyou.aspx");
        }
    }
}
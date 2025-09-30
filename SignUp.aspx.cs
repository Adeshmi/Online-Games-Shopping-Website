using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Data;
using System.Collections.Specialized;


public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btSignup_Click(object sender, EventArgs e)
    {
        if (tbUname.Text != "" & tbPass.Text != "" && tbName.Text != "" && tbEmail.Text != "" && tbCPass.Text != "")
        {
            if (tbPass.Text == tbCPass.Text)
            {
                String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into Users values('" + tbUname.Text + "','" + tbPass.Text + "','" + tbEmail.Text + "','" + tbName.Text + "','U')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.Text = "Registration Successfull";
                    lblMsg.ForeColor = Color.Green;
                    Response.Redirect("~/SignIn.aspx");
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Passwords do not match";
            }
        }
        else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "All Fields Are Mandatory";

        }
    }
  
protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if(args.Value.Length==6)
        {
            args.IsValid = true;

        }else
        {
            args.IsValid = false;
        }
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = true;
        Random random = new Random();
        int value = random.Next(1001, 9999);
        string destinationaddr = "91" + tbMobile.Text;
        string message = "Your OTP Number is " + value + " ( Sent By : Gamer Market )";
        //Label1.Text = message;
        String message1 = HttpUtility.UrlEncode(message);

        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "6vd8LdivxVs-Nl3O2YL3oqnrpB8CcsruVfji8z0Vzo"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);
            Session["otp"] = value;


        }

    }

    protected void btnVerify_Click(object sender, EventArgs e)
    {
        if (tbOtp.Text == Session["otp"].ToString())
        {
            Panel2.Visible = true;
            Label1.Text = "Your Mobile Number Has Been Verified Successfully - Thanks";
        }
        else
        {
            Label1.Text = "OTP Number is Not Correct : Your Mobile Number not Verified";
            Panel2.Visible = true;
        }
    }
}
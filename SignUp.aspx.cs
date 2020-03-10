using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void signup_Click(object sender, EventArgs e)
    {
        if (fname.Text != "" && lname.Text != "" && address.Text != "" && email.Text != "" && pass1.Text != "" && pass2.Text != "")
        {
            if (pass1.Text == pass2.Text)
            {
                String cs = ConfigurationManager.ConnectionStrings["DbMyConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("insert into Users values('" + fname.Text + "','" + lname.Text + "','" + address.Text + "','" + email.Text + "','" + pass1.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label1.Text = "Registration Successfully";
                    Label1.ForeColor = Color.Green;
                }
            }
            else
            {
                Label1.Text = "Password Not Matched";
                Label1.ForeColor = Color.Red;
            }
        }
        else
        {
            Label1.Text = "All Fields are Mandatory";
            Label1.ForeColor = Color.Red;
        }
}
}
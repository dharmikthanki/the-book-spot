using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class register : System.Web.UI.Page
{
   MySqlConnection con=new MySqlConnection("datasource=localhost;port=3306;database=book;username=root;password=");
   

    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       // string insert = "INSERT INTO client_user (c_name, c_username, c_email, c_mobile, c_password) VALUES ('"+txtname1+"','"+txtusername+"'','"+Txtmail+"','"+txtmobile+"','"+txtconfirmPassword+"')";
        string insert = "INSERT INTO client_user (c_name,c_username,c_email,c_mobile,c_password) VALUES ('" + txtname1.Text + "','" + txtusername.Text + "','" + Txtmail.Text + "','" + txtmobile.Text + "','" + txtpassword.Text + "')";
        
        con.Open();
        MySqlCommand command = new MySqlCommand(insert,con);
        try
        {
            if (command.ExecuteNonQuery() == 1)
            {
                Response.Write("<script>alert('Registered successfully');window.location = 'default.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Someting went wrong, try again later')</script>");
            }
            

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        con.Close();

    }
}
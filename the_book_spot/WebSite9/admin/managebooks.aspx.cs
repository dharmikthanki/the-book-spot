using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class managebooks : System.Web.UI.Page
{

    MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;database=book;username=root;password=");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        // string insert = "INSERT INTO client_user (c_name, c_username, c_email, c_mobile, c_password) VALUES ('"+txtname1+"','"+txtusername+"'','"+Txtmail+"','"+txtmobile+"','"+txtconfirmPassword+"')";
        string path;
        if (Filecover.HasFile)
            Filecover.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "pictures/" + Filecover.FileName);
        path = Filecover.FileName;
        string insert = "INSERT INTO admin_books (book_name,author,email,phone,price,quantity,cover,description) VALUES ('" + txtbookName.Text + "','" + txtauthName.Text + "','" + txtemail.Text + "','" + txtphoneNu.Text + "','" + txtprice.Text + "','" + txtquantity.Text + "','" + path + "','" + txtdesc.Text + "')";
      
       
        MySqlCommand command = new MySqlCommand(insert, con);
       
        con.Open();
       
        try
        {
            if (command.ExecuteNonQuery() == 1)
            {
                Response.Write("<script>alert('book added successfully');window.location = 'managebooks.aspx';</script>");
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
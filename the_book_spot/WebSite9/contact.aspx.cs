using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class contact : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;database=book;username=root;password=");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string insert = "INSERT INTO contact_us (name,mobile,email,description) VALUES ('" + con_name.Text + "','" + con_phoneNumber.Text + "','" + con_email.Text + "','" + con_msg.Text + "')";
        con.Open();
        MySqlCommand command = new MySqlCommand(insert, con);
        try
        {
            if (command.ExecuteNonQuery() == 1)
            {
                Response.Write("<script>alert('Messsage sent successfully');window.location = 'Default.aspx';</script>");
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
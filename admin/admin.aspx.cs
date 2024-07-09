using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class admin_admin : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;database=book;username=root;password=");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlCommand cmd = new MySqlCommand("SELECT * FROM admin_login WHERE username=@username AND password=@password",con);
        cmd.Parameters.AddWithValue("@username",TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        cmd.ExecuteNonQuery();
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("dashboard.aspx");
        }
        else
        {
            Response.Write("<script>alert('invaid username and passsword');window.location = 'admin.aspx';</script>");
        }

    }
}
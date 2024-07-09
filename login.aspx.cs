using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;database=book;username=root;password=");
    protected void Page_Load(object sender, EventArgs e)
    {


        Session["email"] = TextBox1.Text;
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select * from client_user where c_username='" + TextBox1.Text + "' AND c_password='" + TextBox2.Text + "'", con);
            MySqlDataReader dr = cmd.ExecuteReader();
            dr.Read();

            if (dr.HasRows)
            {

                string un = dr[2].ToString();
                string ps = dr[5].ToString();

                if (un == TextBox1.Text && ps == TextBox2.Text)
                {
                    Response.Redirect("Default.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Someting went wrong, try again later')</script>");
            }

            //con.Open();
            //MySqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "select * from client_user where c_username='" + TextBox1.Text + "' and c_password='" + TextBox2.Text + "'";
            //cmd.ExecuteNonQuery();
            //DataTable dt = new DataTable();
            //MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            //da.Fill(dt);
            //foreach (DataRow dr in dt.Rows)
            //{
            //    Session["c_username"]=dr["c_username"].ToString();
            //    Response.Write("session execute");
            //}
            //con.Close();
            //Response.Write("data does not match");
        }
    }
}
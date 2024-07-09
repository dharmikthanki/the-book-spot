using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;database=book;username=root;password=");
    public void Page_Load(object sender, EventArgs e)
    {
        //Label1.Text = Session["email"].ToString();
        Label1.Text = Session["email"].ToString();
        if (Session["email"]!=null)
        {
            Button3.Visible = true;
        }
        
       
        
        
        
        /*try
        {
            MySqlDataReader myReader = null;
            MySqlCommand myCommand = new MySqlCommand("select * from admin_books ",con);
            myReader = myCommand.ExecuteReader();

            
            int i = 0;

            while(myReader.Read())
            {

                Label L = new Label();

                Label4.Text = myReader["book_name"].ToString();
                Label4.Controls.Add(L);


                //Label5.Text = myReader["book_name"].ToString();
                //Label5.Controls.Add(L);

                //Label7.Text = myReader["book_name"].ToString(); 
                //Label7.Controls.Add(L);

                //Label8.Text = myReader["book_name"].ToString();
                //Label8.Controls.Add(L);

                //Label9.Text = myReader["book_name"].ToString(); 
                //Label9.Controls.Add(L);

                //Label6.Text = myReader["book_name"].ToString();
                //Label6.Controls.Add(L);

                //Label10.Text = myReader["book_name"].ToString();
                //Label10.Controls.Add(L);

                //Label11.Text = myReader["book_name"].ToString();
                //Label11.Controls.Add(L);

                //Label12.Text = myReader["book_name"].ToString();
                //Label12.Controls.Add(L);

                //Label13.Text = myReader["book_name"].ToString();
                //Label13.Controls.Add(L);
               
                i = i + 1;
            }
           
        }
        catch (Exception f)
        {
            Response.Write("<script>alert('Someting went wrong, try again later')</script>");
        }*/
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

    /*protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Someting went wrong, try again later')</script>");
        con.Open();
        MySqlCommand cmd = new MySqlCommand("SELECT * FROM client_user WHERE c_username=@username AND c_password=@password", con);
       cmd.Parameters.AddWithValue("@username", username.Text);
       cmd.Parameters.AddWithValue("@password", password.Text);

       MySqlDataReader dr = cmd.ExecuteReader();
       dr.Read();
       if (dr.HasRows)
       {
           string uname = dr[2].ToString();
           string upass = dr[3].ToString();
           if (uname == username.Text && upass == password.Text)
           {
               Response.Redirect("default.aspx");
           }

       }
       else {
           Response.Write("<script>alert('Someting went wrong, try again later')</script>");
       }
     //  MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
      // DataTable dt = new DataTable();
      // sda.Fill(dt);
       
      // cmd.ExecuteNonQuery();
     /*  if (dt.Rows.Count > 0)
       {
           Response.Redirect("default.aspx");
       }
       else
       {
           Response.Write("<script>alert('Someting went wrong, try again later')</script>");
       }
    }*/
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("login.aspx");
    }
}




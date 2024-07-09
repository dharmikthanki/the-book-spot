using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;
using System.Text;

public partial class confirmed : System.Web.UI.Page
{

       protected void Page_Load(object sender, EventArgs e)
    {
        string mainconn = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;
        MySqlConnection mysqlconn = new MySqlConnection(mainconn);
        string sqlquery = "SELECT * FROM client_user";
        MySqlCommand sqlcomm = new MySqlCommand(sqlquery, mysqlconn);
        mysqlconn.Open();
        MySqlDataAdapter sda = new MySqlDataAdapter(sqlcomm);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        StringBuilder sb = new StringBuilder();
        sb.Append("<table  class=styled-table >");
        sb.Append("<tr>");
        foreach (DataColumn dc in dt.Columns)
        {
            sb.Append("<th>");
            sb.Append(dc.ColumnName.ToString());
            
            sb.Append("</th>");
        }
        sb.Append("</tr>");
        foreach (DataRow dr in dt.Rows)
        {
            
            sb.Append("<tr>");
            foreach (DataColumn dc in dt.Columns)
            {
                
                sb.Append("<th>");
                
                sb.Append(dr[dc.ColumnName].ToString());
               
                sb.Append("</th>");
                
            }
            sb.Append("</tr>");
            
        }
        sb.Append("</table>");
           Panel1.Controls.Add(new Label {Text=sb.ToString()});
           mysqlconn.Close();
        
    }


       protected void LinkButton1_Click(object sender, EventArgs e)
       {

       }
}


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="admin_view" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>book View</title>
    <link rel="website icon" type="png" href="image2/book-green.png" />
      <link rel="stylesheet" href="comments.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <nav>
         <div class="logo">
          <a href="dashboard.aspx" style="color:#27ae60; text-decoration:none;">The Book Spot</a>
         </div>
         <input type="checkbox" id="click">
         <label for="click" class="menu-btn">
         <i class="fas fa-bars"></i>
         </label>
         <ul>
             <li><a href="managebooks.aspx"</a>books</li>
             <li><a href="view.aspx"</a>view</li>
            <li><a href="order.aspx">received</a></li>
            <li><a href="confirmed.aspx">users</a></li>
            <li><a href="comments.aspx">bills</a></li>
            <li><a href="contact.aspx">contact us</a></li>
         </ul>
      </nav>
    </div>
   <center>
     
    
     
        
         <asp:Panel ID="Panel1" runat="server">
     </asp:Panel>   
                <asp:LinkButton ID="LinkButton8" runat="server" href="dashboard.aspx" >Back to Dashboard</asp:LinkButton>
    </center>
           
       
    </div>
    </div>
    </div>
    </form>
</body>
</html>

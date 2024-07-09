<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs"  Inherits="admin_order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order received</title>
    <link rel="website icon" type="png" href="image2/book-green.png" />
    <link rel="stylesheet" href="StyleSheet2.css" />
</head>
<body>
    <form id="form1" runat="server">
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
    <div>
    <center><table class="styled-table">
  <tr class="header2" >
 <td >sr</td>
  <td>username</td>
  <td>name of book</td>
  <td>author</td>
  <td>quantity</td>
  <td>price</td>
  <td>gst</td>
  <td>total</td>
  <td>confirm</td>
  <td>delete</td>
  </tr>
   
    <tbody>
        <tr>
            <td>1</td>
            <td>Dharmik</td>
            <td>Expirements with truth</td>
            <td>Gandhiji</td>
            <td>2</td>
            <td>100</td>
            <td>10</td>
            <td>110</td>
             <td>
                 <asp:LinkButton ID="LinkButton2" runat="server">confirm</asp:LinkButton></td>
            <td>
                <asp:LinkButton ID="LinkButton3" runat="server">delete</asp:LinkButton></td>
        </tr>
        <tr class="active-row">
           <td>1</td>
            <td>Dharmik</td>
            <td>Expirements with truth</td>
            <td>Gandhiji</td>
            <td>2</td>
            <td>100</td>
            <td>10</td>
            <td>110</td>
             <td>
                 <asp:LinkButton ID="LinkButton4" runat="server">confirm</asp:LinkButton></td>
            <td>
                <asp:LinkButton ID="LinkButton5" runat="server">delete</asp:LinkButton></td>
        </tr>
        </tr>
         <tr>
            <td>Dom</td>
            <td>6000</td>
        </tr>
        <tr class="active-row">
            <td>Melissa</td>
            <td>5150</td>
        </tr>
         <tr>
            <td>Dom</td>
            <td>6000</td>
        </tr>
        <tr class="active-row">
            <td>Melissa</td>
            <td>5150</td>
        </tr>
         <tr>
            <td>Dom</td>
            <td>6000</td>
        </tr>
        <tr class="active-row">
            <td>Melissa</td>
            <td>5150</td>
 <tr>
            <td>Dom</td>
            <td>6000</td>
        </tr>
        <tr class="active-row">
            <td>Melissa</td>
            <td>5150</td>
        </tr>     
        </tr>
         <tr>
            <td>Dom</td>
            <td>6000</td>
        </tr>
        <!-- and so on... -->
    </tbody>
    
</table>

<asp:LinkButton ID="LinkButton1" runat="server" href="dashboard.aspx">Back to Dashboard</asp:LinkButton>
</center>
    </div>
    </form>
</body>
</html>

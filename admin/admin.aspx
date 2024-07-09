 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin_admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>admin login</title>
    <link rel="website icon" type="png" href="image2/book-green.png" />

    <link rel="stylesheet" href="StyleSheet2.css" />
</head>
<body>
    <form id="form1" runat="server" class="login-form" >
    <div class="center">
      <h1>Admin Login</h1>
       <asp:RequiredFieldValidator
          ID="RequiredFieldValidator1" runat="server" ErrorMessage="username is missing" 
          ControlToValidate="TextBox1" Display="Dynamic"  
          ForeColor="Red"></asp:RequiredFieldValidator>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"  ControlToValidate="TextBox1"
      ValidationExpression="^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"
      ErrorMessage="enter valid username" ForeColor="Red"></asp:RegularExpressionValidator><br />
       <asp:RequiredFieldValidator
          ID="RequiredFieldValidator2" runat="server" ErrorMessage="password is missing" 
          ControlToValidate="TextBox2" Display="Dynamic"  
          ForeColor="Red"></asp:RequiredFieldValidator>
        <div class="txt_field">
       
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <span></span>
          <label>Username</label>
        </div>
        <div class="txt_field">
        
            <asp:TextBox ID="TextBox2" type="password" runat="server"></asp:TextBox>
          <span></span>
          <label>Password</label>
        </div>
        
        <asp:Button ID="Button1" runat="server" Text="login" onclick="Button1_Click" />
        
   </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="managebooks.aspx.cs"Inherits="managebooks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <meta charset="UTF-8">
    <title>Add books</title>
    <link rel="website icon" type="png" href="image2/book-green.png" />
    <link href="manage.css" rel="stylesheet" type="text/css" />
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

    <div class="container">
      <h1 class="form-title">Manage Books</h1>
        <div class="main-user-info">
        <!------------------------------------------------------------------------------------------------>
        <!------------------------------------------------------------------------------------------------>
          <div class="user-input-box"> 
            <label for="fullName">Name</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
              runat="server" ErrorMessage=" Book name is required" ControlToValidate="txtbookName" Display="Dynamic"
                  ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtbookName"
                 ErrorMessage="Enter valid book name"  Display="Dynamic"  ForeColor="Red"
                 ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator>
             <asp:TextBox ID="txtbookName" class="input" placeholder="Enter Book Name" runat="server" ></asp:TextBox>
          </div>
          <!------------------------------------------------------------------------------------------------>
          <!------------------------------------------------------------------------------------------------>
         <div class="user-input-box">
            <label for="username">Author</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
              runat="server" ErrorMessage="Author's name is required" ControlToValidate="txtbookName" 
                  ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtauthName"
                 ErrorMessage="Enter valid name"  Display="Dynamic"  ForeColor="Red"
                 ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator>
             <asp:TextBox ID="txtauthName" class="input" placeholder="Enter Author's Name" runat="server"></asp:TextBox>
          </div>
          <!------------------------------------------------------------------------------------------------>
          <!------------------------------------------------------------------------------------------------>
          <div class="user-input-box">
            <label for="email">Email</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
              runat="server" ErrorMessage="Email is required" ControlToValidate="txtemail" Display="Dynamic"
                  ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ErrorMessage="enter valid email address" ControlToValidate="txtemail"  
                ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txtemail" class="input" placeholder="Enter Author/publisher email" runat="server"></asp:TextBox>
          </div>
          <!------------------------------------------------------------------------------------------------>
          <!------------------------------------------------------------------------------------------------>
          <div class="user-input-box">
            <label for="phoneNumber">Phone Number</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
              runat="server" ErrorMessage="Phone number is required" ControlToValidate="txtphoneNu" Display="Dynamic"
                  ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphoneNu"
             ErrorMessage="enter valid mobile number" ForeColor="Red"  
             ValidationExpression="^([7-9]{1})([0-9]){9}$"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txtphoneNu" class="input" placeholder="Enter Phone Number" runat="server"></asp:TextBox>
          </div>
          <!------------------------------------------------------------------------------------------------>
          <!------------------------------------------------------------------------------------------------>
          <div class="user-input-box">
            <label for="password">Price</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
              runat="server" ErrorMessage=" Price is required" ControlToValidate="txtphoneNu" Display="Dynamic"
                  ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                  ControlToValidate="txtprice" Display="Dynamic" ErrorMessage="Enter valid price" 
                  ForeColor="Red" ValidationExpression="^[1-9]?[0-9]{1}$|^100$"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txtprice" class="input" placeholder="Enter Price" runat="server"></asp:TextBox>
          </div>
          <!------------------------------------------------------------------------------------------------>
          <!------------------------------------------------------------------------------------------------>
          <div class="user-input-box">
            <label for="confirmPassword">Quantity</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
              runat="server" ErrorMessage=" Quantity is required" ControlToValidate="txtquantity" Display="Dynamic"
                  ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                  ControlToValidate="txtquantity" Display="Dynamic" ErrorMessage="Enter valid price" 
                  ForeColor="Red" ValidationExpression="^[1-9]?[0-9]{1}$|^100$"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txtquantity" class="input" placeholder="Enter Quantity" runat="server"></asp:TextBox>
          </div>
          <!------------------------------------------------------------------------------------------------>
          <!------------------------------------------------------------------------------------------------>
          <div class="user-input-box">
            <label for="confirmPassword">Upload Cover Photo</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
              runat="server" ErrorMessage="Cover photo is required" ControlToValidate="Filecover" Display="Dynamic"
                  ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                  ControlToValidate="Filecover" Display="Dynamic" 
                  ErrorMessage="Enteer valid cover photo" 
                  ValidationExpression="(.*\.([Jj][Pp][Gg])|.*\.([Jj][Pp][Ee][Gg])$)" 
                  ForeColor="Red"></asp:RegularExpressionValidator>
            
              <asp:FileUpload ID="Filecover" style="background:white" runat="server" />
          </div>
          <!------------------------------------------------------------------------------------------------>
          <!------------------------------------------------------------------------------------------------>
          <div class="user-input-box">
            <label for="confirmPassword">Upload PDF file</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
              runat="server" ErrorMessage="PDF is required" ControlToValidate="FilePDF" Display="Dynamic"
                  ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="regval1" ForeColor="Red" runat="server" ValidationGroup="gr1"
                        ControlToValidate="FilePDF" ValidationExpression="^([a-zA-Z].*|[1-9].*)\.(((p|P)(d|D)(f|F)))$">Only Accept pdf </asp:RegularExpressionValidator>
            <asp:FileUpload ID="FilePDF" style="background:white" runat="server" /> 
          </div>
          <!------------------------------------------------------------------------------------------------>
          <!------------------------------------------------------------------------------------------------>
           <div class="user-input-box">
            <label for="confirmPassword">Description</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" 
              runat="server" ErrorMessage="Description is required" ControlToValidate="txtdesc" Display="Dynamic"
                  ForeColor="Red"></asp:RequiredFieldValidator>
               <asp:TextBox ID="txtdesc"  placeholder="Enter Description" 
                   runat="server" class="textarea" TextMode="MultiLine"></asp:TextBox>
          </div>
          <!------------------------------------------------------------------------------------------------>
          <!------------------------------------------------------------------------------------------------>
        </div>
        <div class="form-submit-btn">
            <asp:Button ID="Btnsubmit" runat="server" Text="Add Book" 
                onclick="Btnsubmit_Click" />
        </div>  
    </div>
    <asp:LinkButton ID="LinkButton1" class="link" runat="server" href="dashboard.aspx">Back to Dashboard</asp:LinkButton>
    </form>
</body>
</html>

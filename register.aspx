<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>register yourself</title>
     <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
     <link rel="website icon" type="png" href="image/book-green.png" />
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="register.css" />
</head>
<body>
    <form id="form1" runat="server">
    <header class="header" >

    <div class="header-1">

        <a href="Default.aspx" class="logo"> <i class="fas fa-book"></i>The Book Spot</a>

        <div class="icons">
            <div id="search-btn" class="fas fa-search"></div>
           
            <a href="cart.aspx" class="fas fa-shopping-cart"></a>
            <div id="login-btn" class="fas fa-user"></div>
        </div>

    </div>

    <div class="header-2">
        <nav class="navbar">
            <a href="Default.aspx">home</a>
            <a href="Default.aspx">featured</a>
            <a href="Default.aspx">arrivals</a>
            <a href="Default.aspx">reviews</a>
            
        </nav>
    </div>

</header>

   <div>
    <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    
    <h2 class="inactive underlineHover" color="black">Sign Up </h2><br />

   

    <!-- Login Form -->
     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtname1"
      ErrorMessage="enter valid name"  Display="Dynamic"  ForeColor="Red" Font-Size="Small"
          ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator></br>
   <asp:RequiredFieldValidator
          ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is missing" 
          ControlToValidate="txtname1" Display="Dynamic" Font-Size="Small" 
          ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="txtname1" class="fadeIn second" placeholder="name" runat="server"></asp:TextBox><br />
      




      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"  ControlToValidate="txtusername"
      ValidationExpression="^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"
      ForeColor="Red" Font-Size="Small" ErrorMessage="enter valid username"></asp:RegularExpressionValidator></br>
       <asp:RequiredFieldValidator
          ID="RequiredFieldValidator2" runat="server" ErrorMessage="username is missing" 
          ControlToValidate="txtusername" Display="Dynamic" Font-Size="Small" 
          ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="txtusername" class="fadeIn third" placeholder="username" runat="server"></asp:TextBox><br />
     
     
     
     
      
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmobile"
      ErrorMessage="enter valid mobile number" ForeColor="Red"  Font-Size="Small"
          ValidationExpression="^([7-9]{1})([0-9]){9}$"></asp:RegularExpressionValidator><br />
       <asp:RequiredFieldValidator
          ID="RequiredFieldValidator3" runat="server" ErrorMessage="mobile number is missing" 
          ControlToValidate="txtmobile" Display="Dynamic" Font-Size="Small" 
          ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="txtmobile"  class="fadeIn fourth" placeholder="mobile" runat="server"></asp:TextBox><br /></br>
      



     
       <asp:RequiredFieldValidator
          ID="RequiredFieldValidator4" runat="server" ErrorMessage="password is missing" 
          ControlToValidate="txtpassword" Display="Dynamic" Font-Size="Small" 
          ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="txtpassword"  class="fadeIn fourth" type="password" placeholder="password" runat="server"></asp:TextBox><br />
      





       <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtconfirmPassword"
      ErrorMessage="password is not matching" ControlToCompare="txtpassword"
          Display="Dynamic" Font-Size="Small" ForeColor="Red"></asp:CompareValidator><br />
       <asp:RequiredFieldValidator
          ID="RequiredFieldValidator5" runat="server" ErrorMessage="confirm password is missing" 
          ControlToValidate="txtconfirmpassword" Display="Dynamic" Font-Size="Small" 
          ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="txtconfirmPassword"  class="fadeIn fourth" type="password" placeholder="confirm password" runat="server"></asp:TextBox><br />





      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
      ErrorMessage="enter valid email address" ControlToValidate="Txtmail"  Font-Size="Small"
          ForeColor="Red" 
          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />

       <asp:RequiredFieldValidator
          ID="RequiredFieldValidator6" runat="server" ErrorMessage="email is missing" 
          ControlToValidate="Txtmail" Display="Dynamic" Font-Size="Small" 
          ForeColor="Red"></asp:RequiredFieldValidator><br />
      <asp:TextBox ID="Txtmail"  class="fadeIn fifth" placeholder="mail" runat="server"></asp:TextBox><br />
      
      
      <asp:Button ID="Button1" class="fadeIn sixth" runat="server" Text="Register" 
          onclick="Button1_Click" /><br />
      <asp:LinkButton ID="LinkButton1" class="fadeIn eighth" runat="server" href="Default.aspx">Back to Home</asp:LinkButton>



  </div>
</div>


    </div>

    <!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>our locations</h3>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> india </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> USA </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> russia </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> france </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> japan </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> africa </a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#home"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="#featured"> <i class="fas fa-arrow-right"></i> featured </a>
            <a href="#arrivals"> <i class="fas fa-arrow-right"></i> arrivals </a>
            <a href="#reviews"> <i class="fas fa-arrow-right"></i> reviews </a>
            <a href="#contact"> <i class="fas fa-arrow-right"></i> contact us </a>
        </div>


        <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +123-456-7890 </a>
            <a href="#"> <i class="fas fa-phone"></i> +111-222-3333 </a>
            <a href="#"> <i class="fas fa-envelope"></i> dharmikthanki2002@gmail.com </a>
            <img src="image/worldmap.png" class="map" alt="">
        </div>
        
    </div>

    <div class="share">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
    </div>

    <div class="credit"> created by <span>Dharmik Thanki</span> | all rights reserved! </div>

</section>


    </form>
</body>
</html>

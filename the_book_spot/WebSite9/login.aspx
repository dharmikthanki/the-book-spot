<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <link rel="stylesheet" href="login.css" />
    <link rel="website icon" type="png" href="admin/image2/book-green.png" />
     <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    
     
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    
</head>
<body>
<form id="form2" runat="server">
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
            <a href="#home">home</a>
            <a href="#featured">featured</a>
            <a href="#arrivals">arrivals</a>
            <a href="#reviews">reviews</a>
            <a href="#contact">contact us</a>
            
        </nav>
    </div>

</header>


   <div class="center">
     
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
        
        <asp:Button ID="Button1" runat="server" Text="login"  /><br /> <p>don't have an account ? <a class="reg" href="register.aspx">create one</a></p>
     </div></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
     </br></br></br></br></br></br>

     <section class="footer">

    <div class="box-container1">

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

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
      <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The book Spot</title>
    
    <link rel="website icon" type="png" href="image/book-green.png" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="StyleSheet.css" />

</head>
<body>
    <form id="form1" runat="server">

    <header class="header" >
   <div class="header-1">

        <a href="Default.aspx" class="logo"> <i class="fas fa-book"></i>The Book Spot</a>

        <div class="icons">
        <asp:Label ID="Label2" runat="server" class="lbllogin" Text="Hello "></asp:Label>
        <asp:Label ID="Label1" runat="server" class="lbllogin" Text="Label"></asp:Label>
            <div id="search-btn" class="fas fa-search"></div>
           <a href="login.aspx" class="fas fa-user"></a>
            <a href="cart.aspx" class="fas fa-shopping-cart"></a>
            <!--<div id="login-btn" class="fas fa-user"></div>-->
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



    <section id="contact">
 <h1 class="heading"> <span>contact us</span> </h1>
<div>
    <div class="container">
	
	<div class="row input-container">
			<div class="col-xs-12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Name is missing" ControlToValidate="con_name" Display="Dynamic" 
                    Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="con_name"
               ErrorMessage="enter valid name"  Display="Dynamic"  ForeColor="Red" Font-Size="Small"
               ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator></br>

            	<div class="styled-input wide">
					<asp:TextBox ID="con_name" style="background:white;border:2px solid #27ae60;color:Black;font-size:20px" runat="server"></asp:TextBox>
					<label style="font-size:15px;color:black"  class="textbox">Name</label> 
				</div>
			</div>


			<div class="col-md-6 col-sm-12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Email is missing" ControlToValidate="con_email" Display="Dynamic" 
                    Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="enter valid email address" ControlToValidate="con_email"  Font-Size="Small"
                 ForeColor="Red" 
                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
             
             	<div class="styled-input wide">
					<asp:TextBox ID="con_email" style="background:white;border:2px solid #27ae60;color:Black;font-size:20px;" runat="server"></asp:TextBox>
					<label  style="font-size:15px;color:black"  class="textbox">Email</label>
				</div>
			</div>
            

			
            <div class="col-md-6 col-sm-12">
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Phone number is missing" ControlToValidate="con_phoneNumber" Display="Dynamic" 
                    Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" ControlToValidate="con_phoneNumber"
                         ErrorMessage="enter valid mobile number" ForeColor="Red"  Font-Size="Small"
                         ValidationExpression="^([7-9]{1})([0-9]){9}$"></asp:RegularExpressionValidator>
                
                <div class="styled-input wide">
					<asp:TextBox ID="con_phoneNumber" style="background:white;border:2px solid #27ae60;color:Black;font-size:20px" runat="server"></asp:TextBox>
					<label  class="textbox" style="font-size:15px;color:black">Phone Number</label> 
				</div>
			</div>



			<div class="col-xs-12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Please write your message" ControlToValidate="con_msg" Display="Dynamic" 
                    Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            	<div class="styled-input wide">
					<asp:TextBox ID="con_msg" TextMode="MultiLine"  style="background:white;border:2px solid #27ae60;color:Black;font-size:20px" runat="server"></asp:TextBox>
					<label  style="font-size:15px;color:black"  class="textbox">Message</label>
				</div>
			</div>
			<div class="col-xs-12">
				<asp:Button ID="Button2" class="btn-lrg submit-btn" runat="server"  
                    Text="Send Message" onclick="Button2_Click" ></asp:Button>
                
			</div>
	</div>

</div>

    </div>
</section>

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

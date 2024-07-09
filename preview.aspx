<%@ Page Language="C#" AutoEventWireup="true" CodeFile="preview.aspx.cs" Inherits="preview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>preview</title>
     <link rel="website icon" type="png" href="image/book-green.png" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="preview.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
<!------------------------------------------------------------------------>

<
<div class="columns">
  <div class="column">
      <div class="thumbnail-container">
        <img class="drift-demo-trigger"  src="https://awik.io/demo/webshop-zoom/shoe-small.jpg">
      </div>
  </div>
  <div class="column">
    <div class="details">
      <h1>Air Jordan 1 Retro</h1>
      <p class="price">$95.99</p>
      <p class="description">A remarkable shoe that's naturally soft, cozy all over, and fits your every move.</p>
      <div class="columns">
        <div class="column" id="wishlist-container">
          <button class="button">
            <span class="icon is-small">
                <i class="fas fa-heart"></i>
              </span>
              <span>ADD TO WISHLIST</span>
          </button>
        </div>
        <div class="column" id="buy-container">
          <button class="button buy-button">
            <span class="icon is-small">
                <i class="fas fa-shopping-bag"></i>
              </span>
              <span>ADD TO BAG</span>
          </button>

        </div>

      </div>

      <p class="small-text"><span>Standard delivery</span> 2-5 working days</p>
      <p class="small-text"><span>Next day delivery</span> order before 2pm ($5.79)</p>

    </div>
  </div>

</div>

    </form>
  
  
  </script>
</body>
</html>

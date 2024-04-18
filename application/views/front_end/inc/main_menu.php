
<div class="menu-block">
  <nav id="main-nav">
    <div class="toggle-nav"><i class="fa fa-bars sidebar-bar"></i></div>
    <ul id="main-menu" class="sm pixelstrap sm-horizontal">
      <li>
        <div class="mobile-back text-right">Back<i class="fa fa-angle-right pl-2" aria-hidden="true"></i></div>
      </li>
      <!--HOME-->
      <li>
        <a href="<?= $sess?base_url('user/dashboard'):base_url('/');?>" class="dark-menu-item">Home</a>
      </li>
      <!--HOME-END-->
      
      <!--product-meu start-->
       <!-- <li>
        <a href="<?=base_url('vihu-collection');?>" class="dark-menu-item">Vihu Collection</a>
      </li> -->
      <?php
      if($sess)
      {
      echo '
      <li><a href="#" class="dark-menu-item">Account</a>
        <ul>
              <li><a href="'.base_url('user/dashboard/my-account').'">My Account</a></li>
              <li><a href="'.base_url('user/dashboard/orders').'">Orders</a></li>
              <li><a href="'.base_url('user/dashboard/wishlist').'">WishList</a></li>
              <li><a href="login.html">Notifications</a></li>
              <li><a href="'.base_url('logout').'">Logout</a></li>
            </ul>
          </li>'
          ;
      }
      else
      {
      echo '';
    }
    ?>
      <!--product-meu end-->
     <?php
     if(!$sess)
     {
      echo '<li>
        <a href="'.base_url('about-us').'" class="dark-menu-item">About</a>
      </li>';
    }
    ?>

     

      
<?php
     if(!$sess)
     {
      echo '<li>
        <a href="'.base_url('contact-us').'" class="dark-menu-item">Contact</a>
      </li>';
    }
    ?>
      

      <!--pages-meu start
      <li><a href="#" class="dark-menu-item">pages</a>
        <ul>
          <li>
            <a href="#">account</a>
            <ul>
              <li><a href="wishlist.html">wishlist</a></li>
              <li><a href="cart.html">cart</a></li>
              <li><a href="dashboard.html">Dashboard</a></li>
              <li><a href="login.html">login</a></li>
              <li><a href="register.html">register</a></li>
              <li><a href="contact.html">contact</a></li>
              <li><a href="forget-pwd.html">forget password</a></li>
              <li><a href="profile.html">profile </a></li>
              <li><a href="checkout.html">checkout</a></li>
            </ul>
          </li>
          <li><a href="about-page.html">about us</a></li>
          <li><a href="search.html">search</a></li>
          <li><a href="typography.html">typography </a></li>
          <li><a href="review.html">review </a></li>
          <li><a href="order-success.html">order success</a></li>
          <li><a href="order-history.html">order history</a></li>
          <li>
            <a href="#">compare</a>
            <ul>
              <li><a href="compare.html">compare</a></li>
              <li><a href="compare-2.html">compare-2</a></li>
            </ul>
          </li>
          <li><a href="collection.html">collection</a></li>
          <li><a href="look-book.html">lookbook</a></li>
          <li><a href="404.html">404</a></li>
          <li><a href="coming-soon.html">coming soon </a></li>
          <li><a href="faq.html">FAQ</a></li>
        </ul>
      </li>-->
      <!--product-end end-->

      <!--blog-meu start
      <li>
        <a href="#" class="dark-menu-item">blog</a>
        <ul>
          <li><a href="blog(left-sidebar).html">left sidebar</a></li>
          <li><a href="blog(right-sidebar).html">right sidebar</a></li>
          <li><a href="blog(no-sidebar).html">no sidebar</a></li>
          <li><a href="blog-details.html">blog details</a></li>
        </ul>
      </li>-->
      <!--blog-meu end-->
    </ul>
  </nav>
</div>

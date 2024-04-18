<!--header start-->
<header>
  <div class="mobile-fix-option"></div>
<?php
  require_once('top_header.php');
  require_once('header_search.php');
?>

  <div class="category-header-2">
    <div class="custom-container">
      <div class="row">
        <div class="col">
          <div class="navbar-menu">
            <div class="category-left">
              <div class="nav-block">
                <div class="nav-left" >
                  <nav class="navbar" data-toggle="collapse" data-target="#navbarToggleExternalContent">
                    <!-- <button class="navbar-toggler" type="button">
                      <span class="navbar-icon"><i class="fa fa-arrow-down"></i></span>
                    </button>
                    <h5 class="mb-0  title-font">Shop by category</h5> -->
                    <h5 class="mb-0  title-font">
                  <span>Shop by category</span> <i class="fa fa-arrow-right"></i></h5>
                  </nav>
                  <div class="collapse  nav-desk" id="navbarToggleExternalContent">
                   

                    <!--<ul class="nav-cat title-font">
                      <?php
                      $cat = get_data('tbl_productcategories',['parent_catid'=>0],'CategoryID ASC');
                      foreach($cat as $c)
                      {

                      echo '<li> <img src="'.base_url('assets/uploads/admin/category/').$c['Img'].'" alt="category-product"> <a href="'.base_url('vihu-collection?category=').url_title($c['CategoryName'],'-',true).'">'.$c['CategoryName'].'</a></li>';
                    }
                    ?>


                      
                      <li>
                        <ul class="mor-slide-open">
                          <li> <img src="<?= base_url();?>assets/images/layout-1/nav-img/08.png" alt="category-product"> <a>Sports</a></li>
                          <li> <img src="<?= base_url();?>assets/images/layout-1/nav-img/09.png" alt="category-product"> <a>Bags, Luggage</a></li>
                          <li> <img src="<?= base_url();?>assets/images/layout-1/nav-img/10.png" alt="category-product"> <a>Movies, Music </a></li>
                          <li> <img src="<?= base_url();?>assets/images/layout-1/nav-img/11.png" alt="category-product"> <a>Video Games</a></li>
                          <li> <img src="<?= base_url();?>assets/images/layout-1/nav-img/12.png" alt="category-product"> <a>Toys, Baby Products</a></li>
                        </ul>
                      </li>
                      <li>
                        <a class="mor-slide-click">more category <i class="fa fa-angle-down pro-down"></i><i class="fa fa-angle-up pro-up"></i></a>
                      </li>
                    </ul>-->
                  </div>
                </div>
              </div>
<!-- ---------user-login---------------------   -->
<div class="icon-block" style="margin-left:20px;">
                <ul>
                  <?php
                  if(!$sess)
                  {
                  echo '<li class="mobile-user onhover-dropdown dark-menu-item"  onclick="openAccount()">
                    <a href="#"><i class="icon-user"></i>
                    </a>
                  </li>
                  
                 ';
                  }
                  else
                  {
                    echo ' <li class="mobile-wishlist" onclick="openWishlist()">
                    <a ><i class="icon-heart"></i><div class="cart-item"><div><b id="totalWishlist"></b> item<span>wishlist</span></div></div></a></li>';
                  }
                  ?></ul></div>
      <!-- ---------user-login---------------------             -->
<div class="menu-block ">
  <nav id="main-nav">
    <div class="toggle-nav"><i class="fa fa-bars sidebar-bar"></i></div>
    <ul id="main-menu" class="sm pixelstrap sm-horizontal">
       <li>
        <div class="mobile-back text-right">Back<i class="fa fa-angle-right pl-2" aria-hidden="true"></i></div>
      </li>
  <?php
  $cat = get_data('tbl_productcategories',['parent_catid'=>0],'CategoryName DESC');
  foreach($cat as $c)
  {?>

  <li class="curroncy-dropdown">
  <a href="#" class="dark-menu-item"><?=$c['CategoryName']?></a>
      <ul class="curroncy-dropdown-open">
      <?php
      $subcat = get_data('tbl_productcategories',[],'CategoryName ASC');
      foreach($subcat as $scat)
      {
          if ($scat['parent_catid']==$c['CategoryID']) {
      ?>
      <li><a href="<?=base_url('vihu-collection?category=').url_title($scat['CategoryName'],'-',true)?>"><?= $scat['CategoryName'];?></a></li>
      <?php
      } 
      }
      ?>    
      </ul>

  </li>
  <?php 
  }
  ?>
</ul>
</nav>


   <!--   <div class="curroncy-dropdown">
                  <span class="curroncy-dropdown-click">
                    Inr<i class="fa fa-angle-down" aria-hidden="true"></i>
                  </span>
                <ul class="curroncy-dropdown-open">
                  <li><a href="#"><i class="fa fa-inr"></i>inr</a></li>
                  <li><a href="#"><i class="fa fa-usd"></i>usd</a></li>
                  <li><a href="#"><i class="fa fa-eur"></i>eur</a></li>
                </ul>
              </div> -->
</div>

              <!-----------Main Menu Start--------------->
              <?php //require_once('main_menu.php');?>

              <!-----------Main Menu End --------------->

              <div class="icon-block" style="margin-left: 100px; float: right;">
                <ul>
                  <?php
                 //  if(!$sess)
                 //  {
                 //  echo '<li class="mobile-user onhover-dropdown dark-menu-item"  onclick="openAccount()">
                 //    <a href="#"><i class="icon-user"></i>
                 //    </a>
                 //  </li>
                  
                 // ';
                 //  }
                 //  else
                 //  {
                 //    echo ' <li class="mobile-wishlist" onclick="openWishlist()">
                 //    <a ><i class="icon-heart"></i><div class="cart-item"><div><b id="totalWishlist"></b> item<span>wishlist</span></div></div></a></li>';
                 //  }
                  ?>

                  <li class="mobile-search"><a href="#"><i class="icon-search"></i></a>
                    <div class ="search-overlay">
                      <div>
                        <span class="close-mobile-search">×</span>
                        <div class="overlay-content">
                          <div class="container">
                            <div class="row">
                              <div class="col-xl-12">
                                <form>
                                  <div class="form-group"><input type="text" class="form-control" id="exampleInputPassword1" placeholder="Search a Product"></div>
                                  <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                                </form>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li class="mobile-setting mobile-setting-hover" onclick="openSetting()"><a href="#"><i class="icon-settings"></i></a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="category-right">
             <!--  <div class="contact-block">
                <div>
                  <i class="fa fa-volume-control-phone"></i>
                  <span>call us: <span>+91 99993 32693</span></span>
                </div>
              </div> -->
               <?php
                  if(!$sess)
                  {
                    /*
             
                 
                  echo ' <div class="btn-group">
                <div  class="gift-block" data-toggle="dropdown"><div class="grif-icon">
                    <i class="icon-gift"></i>
                  </div><div class="gift-offer">
                    <p>gift box</p>
                    <span>Festivel Offer</span>
                  </div>
                </div>';
                */
                }
                  ?>
               
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>
<!--header end-->

<div class="top-header">
    <div class="custom-container">
      <div class="row">
        <div class="col-xl-5 col-md-7 col-sm-6">
          <div class="top-header-left">
            <div class="shpping-order">
              <!-- <h6>free shipping on order over <i class="fa fa-inr">899</i> </h6> -->
            </div>
            <div class="app-link">
              <h6>
                <!--Download aap-->
              </h6>
              <ul>
               
                <li><!--<a><i class="fa fa-android" ></i></a>--></li>
               
              </ul>
            </div>
          </div>
        </div>
        <div class="col-xl-7 col-md-5 col-sm-6">
          <div class="top-header-right">
            <div class="language-block">
              <div class="language-dropdown">

                  <span  class="language-dropdown-click">
                  
                 <a href="<?= $sess?base_url('user/dashboard'):base_url('/');?>" class="text-white"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
                 <a href="<?=base_url();?>contact-us" class="text-white">
                   <i class="fa fa-mobile" aria-hidden="true"></i> Contact 
                 </a>

<?php
      if($sess)
      {
      echo '
      <li><a href="#" class="dark-menu-item">Account <i class="fa fa-angle-down" aria-hidden="true"></i></a>
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
      {?>
       <a href="#" class="text-white" onclick="openAccount()">
                   <i class="fa fa-user" aria-hidden="true"></i> Login 
                 </a>
      <?php
    }
    ?>



                
                  </span>
                <!-- <ul class="language-dropdown-open">
                  <li><a href="#">hindi</a></li>
                  <li><a href="#">english</a></li>
                  <li><a href="#">marathi</a></li>
                  <li><a href="#">spanish</a></li>
                </ul> -->
              </div>
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
          </div>
        </div>
      </div>
    </div>
  </div>
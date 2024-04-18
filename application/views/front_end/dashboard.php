<?php  
    require_once('inc/head.php');
    require_once('inc/header.php');
  
    
?>
<style type="text/css">
    label
    {
        font-weight: bold;
    }
</style>

<!-- breadcrumb start -->
<div class="breadcrumb-main ">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="breadcrumb-contain">
                    <div>
                        <h2>dashboard</h2>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                            <li><a href="#">dashbord</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb End -->

<!-- section start -->
<section class="section-big-py-space bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="account-sidebar"><a class="popup-btn">my account</a></div>
                <div class="dashboard-left">
                    <div class="collection-mobile-back"><span class="filter-back"><i class="fa fa-angle-left" aria-hidden="true"></i> back</span></div>
                    <div class="block-content">
                        <p align="center">
                          <?php
                          if(!empty($profile) && $profile!=NULL)
                          {
                             echo '<img src="'.base_url('assets/uploads/profile/'.$profile).'" style="border-radius: 50%; border:2px solid #ff6000;" width="100">';
                          }else
                          {
                           echo '<img src="'.base_url('assets/images/1.jpg').'" style="border-radius: 50%; border:2px solid #ff6000;" width="100">';
                       }
                       ?><br><b><?= $name;?></b></p><br/>
                        <ul>
                            <li class="active"><a href="#">Account Info</a></li>
                             <li><a href="#" data-toggle="modal" data-target="#myModalImage">Update Profile Picture</a></li>
                            <li><a id="address" href="#">Address Book</a></li>
                            <li><a href="<?= base_url('user/dashboard/orders');?>" target="_blank">My Orders</a></li>
                            <li><a href="<?= base_url('user/dashboard/wishlist');?>" target="_blank">My Wishlist</a></li>
                            <li><a href="#">Newsletter</a></li>
                            <li><a href="#" id="account">My Account</a></li>
                            <li><a href="#" data-toggle="modal" data-target="#myModalPassword">Change Password</a></li>
                            <li class="last"><a href="<?= base_url('logout');?>">Log Out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="dashboard-right">

                    <div class="dashboard">
                        <?php
                        if($this->session->flashdata('error'))
                        {
                            echo '<p>'.$this->session->flashdata('error').'</p>';
                        }
                        ?>
                        <div class="page-title">
                            <h2>My Dashboard</h2></div>
                        <div class="welcome-msg">
                            <p>Hello, <?= $name;?> !</p>
                            <p>From your My Account Dashboard you have the ability to view a snapshot of your recent account activity and update your account information. Select a link below to view or edit information.</p>
                        </div>
                        <div class="box-account box-info">
                            <div class="box-head account" >
                                <h2>Account Information</h2></div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="box">
                                        <div class="box-title">
                                            <h3>Contact Information</h3><a href="#" data-toggle="modal" data-target="#myModalProfile" >Edit Profile</a></div>
                                        <div class="box-content">
                                            <h6><?= $name;?></h6>
                                            <h6><?= $email;?></h6>
                                            <h6><?= $mobile;?></h6>
                                            <h6><a href="#" data-toggle="modal" data-target="#myModalPassword">Change Password</a></h6></div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="box">
                                        <div class="box-title">
                                            <h3>Newsletters</h3><a href="#">Edit</a></div>
                                        <div class="box-content">
                                            <p>You are currently not subscribed to any newsletter.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="box">
                                    <div class="box-title address" >
                                        <h3>Address Book</h3><a href="#">Add New Addresses</a></div>
                                    <div class="row">
                                        <?php
                                        $i=0;
                                        foreach($address as $ad)
                                        {
                                        echo '<div class="col-sm-6">
                                            <h6><b>Address '.++$i.'</b></h6><address>'.$ad['name'].' - '.$ad['mobile'].'<br/>'.$ad['complete_address'].'<br><a href="#" data-toggle="modal" data-target="#myModalAddress" onclick="get_one_address('.$ad['id'].')">Edit Address</a></address></div>';
                                        }
                                        ?>
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- section end -->

<!-- Change Password-->
 <!-- Modal -->
  <div class="modal fade" id="myModalPassword" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <form method="post" action="<?= base_url('user/dashboard/change-password');?>" id="changepasswordForm">
      <div class="modal-content">
        <div class="modal-header" style="background: #ff6000;">
             <h4 class="modal-title" style="color: #fff;">Change Password</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
         
        </div>
        <div class="modal-body">
            <p><span id="passwordMsg"></span></p>
          <p><label>Old Password</label>
            <input type="password" name="opass" id="opass" required="" class="form-control"></p>
            <p><label>New Password</label>
            <input type="password" name="password" id="password" required="" class="form-control"></p>
            <p><label>Confirm Password</label>
            <input type="password" name="cpass" id="cpass" required="" class="form-control"></p>
        </div>
        <div class="modal-footer" style="background: #ff6000;">
          <button type="submit" class="btn btn-default">Submit</button>
        </div>
      </div>
      </form>
    </div>
  </div>

  <!-- Edit Address -->
 <!-- Modal -->
  <div class="modal fade" id="myModalAddress" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <form method="post" action="#" id="oneAddressForm">
      <div class="modal-content">
        <div class="modal-header" style="background: #ff6000;">
             <h4 class="modal-title" style="color: #fff;">Edit Address</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
         
        </div>
        <div class="modal-body">
            <p><span id="addressMsg1"></span></p>
            <p><span id="passwordMsg"></span></p>
          <p><label>Name</label>
            <input type="text" name="name" id="name" required="" class="form-control" required=""></p>
            <p><label>Mobile</label>
            <input type="text" name="mobile" id="mobile" required="" class="form-control" required=""></p>
            <p><label>Postal</label>
            <input type="text" name="postal" id="postal" required="" class="form-control" required="" onblur="get_location(this.value)"></p>
             <p><label>Country</label>
            <input type="text" name="country" id="country" required="" class="form-control" required=""></p>
             <p><label>State</label>
            <input type="text" name="state" id="state" required="" class="form-control" required=""></p>
             <p><label>City</label>
            <input type="text" name="city" id="city" required="" class="form-control" required=""></p>
             <p><label>Address</label>
           <textarea id="address1" name="address" class="form-control" required=""></textarea></p>
        </div>
        <div class="modal-footer" style="background: #ff6000;">
          <button type="submit" class="btn btn-default"><span id="adBtnBefore">Update</span><span id="adBtnAfter" style="display: none;">Please Wait....</span></button>
        </div>
      </div>
      </form>
    </div>
  </div>


  <!------------ Edit Profile Form---->
   <!-- Modal -->
  <div class="modal fade" id="myModalProfile" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <form method="post" action="<?= base_url('user/dashboard/update-profile');?>" id="profileForm">
      <div class="modal-content">
        <div class="modal-header" style="background: #ff6000;">
             <h3 class="modal-title" style="color: #fff;">Edit Profile</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
         
        </div>
        <div class="modal-body">
            <p><span id="profileMsg1"></span></p>
            <p><span id="profileMsg"></span></p>
            <div class="row">
                <div class="col-sm-6">
            <label>Name</label>
            <input type="text" name="pname" id="pname" required="" class="form-control" required="" value="<?=$name;?>">  
                </div>
                <div class="col-sm-6">
                    <label>Mobile</label>
            <input type="text" name="pmobile" id="pmobile" required="" class="form-control" required="" readonly="" value="<?=$mobile;?>">
                </div>
            </div>
               <div class="row">
                <div class="col-sm-6">
            <label>Email</label>
            <input type="email" name="pemail" id="pemail" required="" class="form-control" required="" readonly="" value="<?=$email;?>">  
                </div>
                <div class="col-sm-6">
                    <label>GST No</label>
            <input type="text" name="gst" id="gst" class="form-control" placeholder="GST No" value="<?=$gst_no;?>">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
           <label>Postal</label>
            <input type="text" name="ppostal" id="ppostal" required="" class="form-control" required="" onblur="get_location(this.value)" placeholder="Your 6-Digit Zip Code" value="<?=$postal;?>">
                </div>
                <div class="col-sm-6">
                   <label>Country</label>
            <input type="text" name="pcountry" id="pcountry" required="" class="form-control" required="" placeholder="Your Country" value="<?=$country;?>">
                </div>
            </div>
             <div class="row">
                <div class="col-sm-6">
         <label>State</label>
            <input type="text" name="pstate" id="pstate" required="" class="form-control" required="" placeholder="Your State" value="<?=$state;?>">
                </div>
                <div class="col-sm-6">
                  <label>City</label>
            <input type="text" name="pcity" id="pcity" required="" class="form-control" required="" placeholder="Your City" value="<?=$city;?>">
                </div>
            </div>
           <div class="row">
            <div class="col-sm-12">
            <label>Address</label>
           <textarea id="paddress1" name="paddress" class="form-control" required="" placeholder="Your Address"><?=$address1;?></textarea>
       </div>
       </div>
        </div>
        <div class="modal-footer" style="background: #ff6000;">
          <button type="submit" class="btn btn-default">Update</button>
        </div>
      </div>
      </form>
    </div>
  </div>

 <!------------ Edit Profile Form---->
   <!-- Modal -->
  <div class="modal fade" id="myModalImage" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <form method="post" action="<?= base_url('user/dashboard/update-profileimage');?>" id="imageForm" enctype="multipart/form-data">
      <div class="modal-content">
        <div class="modal-header" style="background: #ff6000;">
             <h4 class="modal-title" style="color: #fff;">Edit Profile Picture</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
         
        </div>
        <div class="modal-body">
            <p><span id="imageMsg1"></span></p>
            <p><span id="imageMsg"></span></p>
            <div class="row">
                <div class="col-sm-12">
            <label>Name</label>
            <input type="file" name="pimg" id="pimg" required="" class="form-control">  
            <b>( Image should be jpg,jpeg,png , size 1MB)</b>
                </div>
            
            </div>
           
        </div>
        <div class="modal-footer" style="background: #ff6000;">
          <button type="submit" class="btn btn-default">Update</button>
        </div>
      </div>
      </form>
    </div>
  </div>



<?php require_once('inc/footer.php');?>
<script type="text/javascript">
    $("#address").click(function() {
    $('html,body').animate({
        scrollTop: $(".address").offset().top},
        'slow');
});
    $("#account").click(function() {
    $('html,body').animate({
        scrollTop: $(".account").offset().top},
        'slow');
});
</script>
<script type="text/javascript">
    
</script>
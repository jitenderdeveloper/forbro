<?php 
    require_once('inc/head.php');
    require_once('inc/header.php');
?>

<!-- breadcrumb start -->
<div class="breadcrumb-main ">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="breadcrumb-contain">
                    <div>
                        <h2>register</h2>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                            <li><a href="#">register</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb End -->

<!--section start-->
<section class="contact-page section-big-py-space bg-light">
    <div class="custom-container">
        <div class="row section-big-pb-space">
            <div class="col-xl-6 offset-xl-3">
                <h3 class="text-center">CREATE ACCOUNT</h3>

                <form class="theme-form" method="post" action="<?= base_url('registerUser');?>" onkeydown="return event.key != 'Enter';" id="signupForm">
                    <span id="registerFormMsg"></span>
                   
                    <div class="form-row">
                        <div class="col-md-12 form-group">
                            <label for="email">First Name</label>
                            <input type="text" name="name" class="form-control" id="name" placeholder="Name" required="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-12 form-group">
                            <label for="phone">Mobile</label>
                            <input type="text" name="mobile" class="form-control" id="mobile" placeholder="Mobile No." required="" onblur="send_otp(this.value)">
                        </div>
                    </div>
                     <div class="form-row " >
                        <div class="col-md-12 form-group otp-div" style="display: none;">
                            <label for="phone">OTP</label>
                            <input type="text" name="otp" class="form-control" id="otp" placeholder="Enter OTP" required="" onkeyup="verify_otp(this.value)" required="" >
                            <span id="otp_msg"></span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-12 form-group">
                            <label for="email">email</label>
                            <input type="email" name="email" class="form-control" id="email" placeholder="Email" required="">
                        </div>
                        <div class="col-md-12 form-group">
                            <label for="review">Password</label>
                            <input type="password" name="password" class="form-control" id="review" placeholder="Enter your password" required="">
                        </div>
                        <div class="col-md-12 form-group">
                            <label for="review">Confirm Password</label>
                            <input type="password" name="cpassword" class="form-control" id="cpassword" placeholder="Re-enter password" required="">
                        </div>
                        <div class="col-md-12 form-group">
                           <span id="contact_subm"><button type="submit" class="btn btn-normal">create Account</button></span>
                        </div>
                    </div>
                </form>
                    <div class="form-row">
                        <div class="col-md-12 ">
                            <p >Have you already account? <a href="<?=base_url('login');?>" class="txt-default">click</a> here to &nbsp;<a href="<?=base_url('login');?>" class="txt-default">Login</a></p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 map">
                <div class="theme-card">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1605.811957341231!2d25.45976406005396!3d36.3940974010114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1550912388321"  allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Section ends-->

<?php require_once('inc/footer.php');?>
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
                        <h2>login</h2>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                            <li><a href="#">login</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb End -->

<!--section start-->
<section class="login-page section-big-py-space bg-light">
    <div class="custom-container">
        <div class="row">
            <div class="col-xl-4 col-lg-6 col-md-8 offset-xl-4 offset-lg-3 offset-md-2">
                <div class="theme-card">
                    <h3 class="text-center">Login</h3>
                    <form class="theme-form loginForm" method="post" action="<?= base_url('verifyLogin');?>" data-id="page-form" id="mainLoginForm">
                        <span class="loginFormMsg"></span>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" class="form-control" id="email" placeholder="Email" required="">
                        </div>
                        <div class="form-group">
                            <label for="review">Password</label>
                            <input type="password" name="password" class="form-control password" id="password" placeholder="Enter your password" required="">
                        </div>
                        <button type="submit" class="btn btn-normal">Login</button>
                        <a class="float-right txt-default mt-2" href="<?=base_url('forget-pwd');?>" id="fgpwd">Forgot your password?</a>
                    </form>
                    <p class="mt-3">Sign up for a free account at our store. Registration is quick and easy. It allows you to be able to order from our shop. To start shopping click register.</p>
                    <a href="<?=base_url('sign-up');?>" class="txt-default pt-3 d-block">Create an Account</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Section ends-->

<?php require_once('inc/footer.php');?>
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
                        <h2>forget password</h2>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                            <li><a href="#">forget password</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb End -->

<!--section start-->
<section class="login-page pwd-page section-big-py-space bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3">
                <div class="theme-card">
                <h3>Forget Your Password</h3>
                <p><?php
                          if($this->session->flashdata('error'))
                          {
                            echo $this->session->flashdata('error');
                          }
                          ?>
                          
                </p>
                <form class="theme-form" action="<?= base_url('forget-password');?>" method="POST">
                    <div class="form-row">
                        <div class="col-md-12">
                          <div class="form-group">
                              <input type="email" class="form-control" id="email" placeholder="Enter Your Email" required="" name="email">
                          </div>
                        </div><button type="submit" class="btn btn-normal">Submit</a>
                    </div>
                </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Section ends-->

<?php require_once('inc/footer.php');?>
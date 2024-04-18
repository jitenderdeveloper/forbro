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
                        <h2>new password</h2>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                            <li><a href="#">new password</a></li>
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
                <h3>Update Your Password</h3>
                <p><?php
                          if($this->session->flashdata('error'))
                          {
                            echo $this->session->flashdata('error');
                          }
                          ?>
                          
                </p>
                <?php
                $token1 = $this->input->get('token1');
                $token2 = $this->input->get('token2');
                if($this->Main_model->num_rows('tbl_registration',['is_pwd_change'=>1 ,'token1'=>$token1 ,'token2'=>$token2])>0)
                {
                    ?>
                <form class="theme-form" action="<?= base_url('update-password/'.$token1.'/'.$token2);?>" method="POST">
                    <div class="form-row">
                        <div class="col-md-12">
                          <div class="form-group">
                              <input type="password" class="form-control" id="password" placeholder="Enter New Password" required="" name="password">
                          </div>
                          <div class="form-group">
                              <input type="password" class="form-control" id="cpassword" placeholder="Confirm Password" required="" name="cpassword">
                          </div>
                        </div><button type="submit" class="btn btn-normal">Submit</a>
                    </div>
                </form>
                <?php
            }
            else
            {
                echo '
                    <div class="form-row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <div class="alert alert-danger alert-dismissible" style="border:2px solid #721C24; color:red; font-size:20px;">
   
    <strong><i class="fa fa-times-circle-o" aria-hidden="true"></i>
</strong> <b>Password reset link has been expire!</b></div>
                          </div>
                          </div>
                          </div>
                          
                        
              ';
            }
            ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Section ends-->

<?php require_once('inc/footer.php');?>
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
                        <h2>contact</h2>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                            <li><a href="#">contacts</a></li>
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
                <h4 class="text-center mb-3">
                   
                </h4>
                <h3 class="text-center mb-3">Get in touch</h3>

                <form class="theme-form" action="<?=base_url('contact-send');?>" method="post">
                <?php
                    if($this->session->flashdata('error'))
                    {
                        echo '<p>'.$this->session->flashdata('error').'</p>';
                    }
                    ?>
                    <div class="form-row">
                         
                        <div class="col-md-12">
                           <div class="form-group">
                               <label for="name">Name</label>
                               <input type="text" name="name" class="form-control" id="name" placeholder="Enter Your name" required="">
                           </div>
                        </div>
                        
                        <div class="col-md-6">
                           <div class="form-group">
                               <label for="review">Phone number</label>
                               <input type="text" name="phone" class="form-control" id="review" placeholder="Enter your number" required="">
                           </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" name="email" class="form-control" id="email" placeholder="Email" required="">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div>
                                <label for="review">Write Your Message</label>
                                <textarea name="msg" class="form-control" placeholder="Write Your Message" id="exampleFormControlTextarea1" rows="2"></textarea>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button class="btn btn-normal" type="submit">Send Your Message</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 map">
                <div class="theme-card">
              <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d223687.86303290818!2d76.94846468940338!3d28.835202002830385!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s!5e0!3m2!1sen!2sin!4v1708366612871!5m2!1sen!2sin" width="600" height="400" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Section ends-->

<?php require_once('inc/footer.php');?>
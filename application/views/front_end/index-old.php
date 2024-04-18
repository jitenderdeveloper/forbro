<?php
  require_once('inc/head.php');
  require_once('inc/header.php');
?>

<!--top brand panel start
<section class="brand-panel">
  <div class="brand-panel-box">
    <div class="brand-panel-contain ">
      <ul>
        <li><a href="#">top brand</a></li>
        <li><a>:</a></li>
        <li><a href="category-page(left-sidebar).html">aerie</a></li>
        <li><a href="category-page(left-sidebar).html">baci lingrie</a></li>
        <li><a href="category-page(left-sidebar).html">gerbe</a></li>
        <li><a href="category-page(left-sidebar).html">jolidon</a></li>
        <li><a href="category-page(left-sidebar).html">Wonderbra</a></li>
        <li><a href="category-page(left-sidebar).html">Ultimo</a></li>
        <li><a href="category-page(left-sidebar).html">Vassarette </a></li>
        <li><a href="category-page(left-sidebar).html">Oysho</a></li>
      </ul>
    </div>
  </div>

</section>-->
<!--top brand panel end-->

<?php 
  require_once('inc/slider.php');
  //require_once('inc/banner.php');
?>


<!--discount banner start-->
<section class="discount-banner">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="discount-banner-contain">
          <h2>Discount on every single item on our site.</h2>
          <h1><span>OMG! Just Look at the</span> <span>great Deals!</span></h1>
          <div class="rounded-contain rounded-inverse">
            <div class="rounded-subcontain">
              How does it feel, when you see great discount deals for each product?
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--discount banner end-->

<!--tab product-->
<section class="section-pt-space" >
  <div class="tab-product-main">
    <div class="tab-prodcut-contain">
      <ul class="tabs tab-title">
        <!-- Show all category-->
        <?php
        $i=0;
        foreach($category as $c)
        {
          ++$i;
          if($i==1)
          {
            echo '<li class="current"><a href="tab-'.$c['CategoryID'].'" >'.ucwords($c['CategoryName']).'</a></li>';
          }else
          {
          echo '<li class=""><a href="tab-'.$c['CategoryID'].'">'.ucwords($c['CategoryName']).'</a></li>';
        }
        }
          ?>
      </ul>
    </div>
  </div>
</section>
<!--tab product-->

<?php 
  require_once('inc/product.php');
?>

<!--collection banner start
<section class="collection-banner section-pb-space ">
  <div class="custom-container">
    <div class="row">
      <div class="col">
        <div class="collection-banner-main banner-5 p-center">
          <div class="collection-img">
            <img src="<?=base_url();?>assets/images/layout-2/collection-banner/7.jpg" class="bg-img  " alt="banner">
          </div>
          <div class="collection-banner-contain ">
            <div class="sub-contain">
              <h3>save up to 30% off</h3>
              <h4>women<span>fashion</span></h4>
              <div class="shop">
                <a class="btn btn-normal" href="#">
                  shop now
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>-->
<!--collection banner end-->

<!--rounded category start-->
<section class="rounded-category">
  <div class="container">
    <div class="row">
      <div class="col">
        <div class="slide-6 no-arrow">
         <?php
  
         foreach($category as $c)
         {
          
          echo '<div>
            <div class="category-contain">
              <a href="'.base_url('vihu-collection?category=').url_title($c['CategoryName'],'-',true).'">
                <div class="img-wrapper">
                  <img src="' .base_url('assets/uploads/admin/category/').$c['Img'].'" alt="category" class="img-fluid aj">
                </div>
                <div>
                  <div  class="btn-rounded">
                   '.ucwords($c['CategoryName']).'
                  </div>
                </div>
              </a>
            </div>

          </div>';
        }
       
        ?>

          <div>
            
         
      </div>
    </div>
  </div>
</div>
</section>
<!--rounded category end-->

<?php //require_once('inc/media-banner.php');?>


<?php
  require_once('inc/hot_deal.php');
  require_once('inc/testimonial.php');
?>


<!--instagram start-->
<p>&nbsp;</p>
<!--instagra end-->

<!--contact banner start-->
<section class="contact-banner contact-banner-inverse">
  <div class="container">
    <div class="row">
      <div class="col">
        <div class="contact-banner-contain">
          <div class="contact-banner-img"><img src="<?= base_url();?>assets/images/layout-1/call-img.png" class="  img-fluid" alt="call-banner"></div>
          <div> <h3>if you have any question please call us</h3></div>
          <div><h2>+91 9625066208</h2></div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--contact banner end-->

<!--Newsletter modal popup start-->
<!--<div class="modal fade bd-example-modal-lg theme-modal" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <div class="news-latter">
          <div class="modal-bg">
            <?php
              foreach ($popup_offers as $res) {
            ?>
            <div class="offer-content" style="background-image: url('<?=base_url();?>uploads/popup_offers/<?=$res['pop_img_path'];?>');">
              <div>
                <div class="form-group mx-sm-3">
                  <a href="<?=$res['url'];?>" class="btn btn-theme btn-normal btn-sm " id="mc-submit">subscribe</a>
                </div>
              </div>
            </div>
            <?php
            }
            ?>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>-->
<!--Newsletter Modal popup end-->

<!-- notification product -->
<div class="product-notification" id="dismiss">
  <span  onclick="dismiss();" class="close" aria-hidden="true">×</span>
  <div class="media">
    <img class="mr-2" src="<?= base_url();?>assets/images/offer2.jpg" alt="Generic placeholder image">
    <div class="media-body">
      <h5 class="mt-0 mb-1">Latest trending</h5>
      Cras sit amet nibh libero, in gravida nulla.
    </div>
  </div>
</div>
<!-- notification product -->


<?php require_once('inc/footer.php');?>

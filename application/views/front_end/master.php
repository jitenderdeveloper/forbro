<?php require_once('inc/head.php');?>
<?php require_once('inc/header.php');?>
<?php
foreach($d as $res)
{?>
<!-- breadcrumb start -->
<img src="<?=base_url();?>assets/uploads/admin/cms/<?= $res['imgpath'] ; ?>" alt="banner" class="img-fluid">
<!-- breadcrumb End -->

<!-- about section start -->
<section class="about-page section-big-py-space">
    <div class="custom-container">
        <div class="row">

            <div class="col-lg-12">
               <h1 style="font-size:22px; text-align: center;"><?=  $res['heading'] ; ?></h1> 
 
            <p class="mb-2" align="justify" style="color:black!important;"> 
                <?=  $res['text'] ; ?>
           
        </p>
 
                
            </div>
   
        </div>
    </div>
</section>
  <?php
        }
          
          ?>
<!-- about section end -->





<?php require_once('inc/footer.php');?>
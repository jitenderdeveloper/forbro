<?php 
    require_once('inc/head.php');
    require_once('inc/header.php');
    require_once('inc/left_sidebar.php');
?>

<div class="page-body">
    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="page-header">
            <div class="row">
                <div class="col-lg-6">
                    <div class="page-header-left">
                        <h3>Product Detail
                            <small>Bigdeal Admin panel</small>
                        </h3>
                    </div>
                </div>
                <div class="col-lg-6">
                    <ol class="breadcrumb pull-right">
                        <li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
                        <li class="breadcrumb-item">Physical</li>
                        <li class="breadcrumb-item active">Product Detail</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid Ends-->

    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="card">
            <div class="row product-page-main card-body">
                <!--- IMage Show Part Start---------->
                <div class="col-xl-4">
                    <div class="product-slider owl-carousel owl-theme" id="sync1">
                       <?php
                       $i=0;
                       foreach($images as $img)
                       {
                        ++$i;
                       if($i==1)
                       {
                     
                        echo '<div class="item"><img src="'.base_url('assets/uploads/admin/product/').$img->f_name.'" alt="" class="blur-up lazyloaded"></div>';
                       }
                      else
                         {
                            echo '<div class="item"><img src="'.base_url('assets/uploads/admin/product/').$img->f_name.'" alt="" class="blur-up lazyloaded"></div>';
                         }
                   }
                       ?> 
                       
                       
                        
                    </div>
                    <div class="owl-carousel owl-theme" id="sync2">
                        <?php
                        $i1=0;
                        foreach($images as $img1)
                        {
                         ++$i1;
                         if($i==1)
                         {
                            continue;
                         }
                         else
                         {
                            echo '<div class="item"><img src="'.base_url('assets/uploads/admin/product/').$img1->f_name.'" alt="" class="blur-up lazyloaded"></div>';
                         }
                        }
                        ?>
                        
                    </div>
                </div>
                <!--- IMage Show Part End---------->

                <!-- Product Basic Details-->
                <?php
                foreach($products as $pro)
                {
                    ?>
                <div class="col-xl-8">
                    <div class="product-page-details product-right mb-0">
                        <h2><?= strtoupper($pro->ProductName);?></h2>
                        <!--<select id="u-rating-fontawesome-o" name="rating" data-current-rating="5" autocomplete="off">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>-->
                        <hr>
                        <h6 class="product-title">product details</h6>
                        <p><?= $pro->ProductShortDesc;?></p>
                        <div class="product-price digits mt-2">
                            <h3><i class="fa fa-inr" aria-hidden="true"></i><?= $pro->Productsaleprice.'.00';?> <del><i class="fa fa-inr" aria-hidden="true"></i><?= $pro->ProductPrice.'.00';?></del></h3>
                        </div>
                        <ul class="color-variant">
                            <?php
                            //Fetch All color
                            foreach($variation as $var)
                            {
                                if($var->type=='color')
                                {
                                    echo '<li class="bg-light0" style="background: '.strtolower($var->data).';"></li>';
                                }
                            }
                            ?>
                            
                            
                        </ul>
                        <hr>
                        <!--<h6 class="product-title size-text">select size <span class="pull-right"><a href="" data-toggle="modal" data-target="#sizemodal">size chart</a></span></h6>-->  
                        <div class="modal fade" id="sizemodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Sheer Straight Kurta</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <div class="modal-body"><img src="<?=base_url();?>assets/images/size-chart.jpg" alt="" class="img-fluid blur-up lazyloaded"></div>
                                </div>
                            </div>
                        </div>
                        <div class="size-box">
                            <ul>
                                 <?php
                            //Fetch All color
                            foreach($variation as $var)
                            {
                                if($var->type=='size')
                                {
                                    echo '<li><a href="#">'.$var->data.'</a></li>';
                                }
                            }
                            ?>
                              
                            </ul>
                        </div>
                        <div class="add-product-form">
                            <h6 class="product-title">quantity</h6>
                            <fieldset class="qty-box mt-2 ml-0">
                                <div class="input-group">
                                    <input class="touchspin" type="text" value="1">
                                </div>
                            </fieldset>
                        </div>
                        <hr>
                        <h6 class="product-title">Time Reminder</h6>
                        <div class="timer">
                            <p id="demo"><span>25 <span class="padding-l">:</span> <span class="timer-cal">Days</span> </span><span>22 <span class="padding-l">:</span> <span class="timer-cal">Hrs</span> </span><span>13 <span class="padding-l">:</span> <span class="timer-cal">Min</span> </span><span>57 <span class="timer-cal">Sec</span></span>
                            </p>
                        </div>
                        <div class="m-t-15">
                            <button class="btn btn-primary m-r-10" type="button">Add To Cart</button>
                            <button class="btn btn-secondary" type="button">Buy Now</button>
                        </div>
                    </div>
                </div>
                <?php
            }
            ?>
            <!------------- End Product Details-->
            </div>
        </div>
    </div>
    <!-- Container-fluid Ends-->
</div>

<?php require_once('inc/footer.php');?>
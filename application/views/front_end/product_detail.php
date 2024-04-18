<?php
  require_once('inc/head.php');
  require_once('inc/header.php');
  $s = ($products[0]['ProductPrice']-$products[0]['Productsaleprice']);
  $percentage = ceil(($s/$products[0]['ProductPrice'])*100);
  $product_id = count($products)>0?$products[0]['ProductID']:'';
?>
<style type="text/css">
    .form-radio
{
     -webkit-appearance: none;
     -moz-appearance: none;
     appearance: none;
     display: inline-block;
     position: relative;
     background-color: #f1f1f1;
     color: #666;
     top: 10px;
     height: 30px;
     width: 30px;
     border: 0;
     border-radius: 50px;
     cursor: pointer;     
     margin-right: 7px;
     outline: none;
}
.form-radio:checked::before {
    position: absolute;
    font: 18px/1 'Open Sans', sans-serif;
    left: 11px;
    top: 5px;
    content: '\02143';
    transform: rotate(40deg);
    color: white;
}
.form-radio:hover
{
     background-color: #f7f7f7;
}
.form-radio:checked
{
     background-color: #f1f1f1;
}
label
{
     font: 15px/1.7 'Open Sans', sans-serif;
     color: #333;
     -webkit-font-smoothing: antialiased;
     -moz-osx-font-smoothing: grayscale;
     cursor: pointer;
} 

</style>
<!-- breadcrumb start -->
<div class="breadcrumb-main ">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="breadcrumb-contain">
                    <div>
                        <h2>product</h2>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                            <li><a href="#">product</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb End -->



<!-- section start -->
<section class="section-big-pt-space bg-light">
    <div class="collection-wrapper">
        <div class="custom-container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="product-slick no-arrow">
                        <?php
                        foreach($images as $img)
                        {
                        echo '<div><img src="'.base_url('assets/uploads/admin/product/').$img['f_name'].'" alt="" class="img-fluid  image_zoom_cls-'.$img['fid'].'"></div>';
                          }
                        ?>
                       
                    </div>
                    <div class="row">
                        <div class="col-12 p-0">
                            <div class="slider-nav">
                                <?php
                        foreach($images as $img1)
                        {
                           
                             echo '<div><img src="'. base_url('assets/uploads/admin/product/thumbnail/').$img1['f_name'].'" class="img-fluid  " alt="product"></div>';
                        }
                       
                
                        ?>
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 rtl-text">
                    <div class="product-right">
                        <h2><?= count($products)>0?ucwords($products[0]['ProductName']):'';?></h2>
                        <h4><del><i class="fa fa-inr" aria-hidden="true"></i><?= count($products)>0?ucwords($products[0]['ProductPrice']):'';?></del><span><?= $percentage;?>% off</span></h4>
                        <h3><i class="fa fa-inr" aria-hidden="true"></i><?= count($products)>0?ucwords($products[0]['Productsaleprice']):'';?></h3>
                        <ul class="color-variant">
                            <?php
                            //Fetch All color
                            if(count($color)>0)
                            {
                            foreach($color as $var)
                            {
                                
                                    echo '<input type="radio" name="color" value="'.$var['varid'].'" id="color" class="form-radio color" style="background:'.strtolower($var['data']).';">';
                            
                            }
                            echo '<div style="margin-top:10px;"><span id="colorMSG" style="color:red; font-weight:bold;"></span></div>';
                        }
                            ?>
                            
                            
                        </ul>
                        <div class="product-description border-product">
                            <h6 class="product-title size-text"><?= count($color)>0?'select size':'';?> <span><a href="" data-toggle="modal" data-target="#sizemodal"><!--size chart--></a></span></h6>
                            <div class="modal fade" id="sizemodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">&nbsp;</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        </div>
                                        <div class="modal-body"><img src="<?= base_url();?>assets/images/size-chart.jpg" alt="" class="img-fluid "></div>
                                    </div>
                                </div>
                            </div>
                            

                                    
                                    <?php
                            //Fetch All size
                                    if(count($size)>0)
                                    {
                                echo '<div class="size-box">
                                <ul>
                                    <select name="size" id="size" class="form-control size" style="width: 155px;">
                                        <option value="">Select Size</option>';
 
                            foreach($size as $var1)
                            {
                                
                                    echo '<option value="'.$var1['varid'].'">'.$var1['data'].'</option>';
                                
                            }
                            echo '</select>  <span id="sizeMSG" style="color:red; font-weight:bold;"></span>
                                </ul>
                            </div>';
                        }
                            ?>
                           
                            <h6 class="product-title">quantity</h6>
                            <div class="qty-box">
                                <div class="input-group"><span class="input-group-prepend"><button type="button" class="btn quantity-left-minus" data-type="minus" data-field=""><i class="ti-angle-left"></i></button> </span>
                                    <input type="text" name="quantity_post_details" class="form-control input-number" value="1" id="quantity_post_details"> <span class="input-group-prepend"><button type="button" class="btn quantity-right-plus" data-type="plus" data-field=""><i class="ti-angle-right"></i></button></span></div>
                            </div>
                        </div>
                        <div class="product-buttons">
                            <a href="#" class="btn btn-normal addCart" data-pid="<?= count($products)>0?ucwords($products[0]['hexa_id']):'';?>" data-pname="<?= count($products)>0?ucwords($products[0]['ProductName']):'';?>" data-price="<?= count($products)>0?ucwords($products[0]['Productsaleprice']):'';?>">add to cart</a> 
                            <button class="addCart" data-pid="<?= count($products)>0?ucwords($products[0]['hexa_id']):'';?>" data-pname="<?= count($products)>0?ucwords($products[0]['ProductName']):'';?>" data-price="<?= count($products)>0?ucwords($products[0]['Productsaleprice']):'';?>" style="background: none; border: none; text-transform: uppercase;"><a href="<?= base_url('viewcart');?>" class="btn btn-normal" >Buy Now</a></button></div>
                        <div class="border-product">
                            <h6 class="product-title">product details</h6>
                            <p><?= count($products)>0?ucwords($products[0]['ProductShortDesc']):'';?></p>
                        </div>
                        <div class="border-product">
                            <div class="product-icon">
                                <ul class="product-social">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                     <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                   
                                    
                                </ul>
                                
                            </div>
                        </div>
                      
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</section>
<!-- Section ends -->

<!-- product-tab starts -->
<section class=" tab-product  tab-exes">
    <div class="custom-container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <div class="creative-card creative-inner">
                    <ul class="nav nav-tabs nav-material" id="top-tab" role="tablist">
                        <li class="nav-item"><a class="nav-link active" id="top-home-tab" data-toggle="tab" href="#top-home" role="tab" aria-selected="true">Description</a>
                            <div class="material-border"></div>
                        </li>
                       
                        <li class="nav-item"><a class="nav-link" id="review-top-tab" data-toggle="tab" href="#top-review" role="tab" aria-selected="false">Write Review</a>
                            <div class="material-border"></div>
                        </li>
                    </ul>
                    <div class="tab-content nav-material" id="top-tabContent">
                        <div class="tab-pane fade show active" id="top-home" role="tabpanel" aria-labelledby="top-home-tab">
                            <p align="justify"><?= count($products)>0?ucwords($products[0]['ProductLongDesc']):'';?></p>
                        </div>
                       
                        <div class="tab-pane fade" id="top-contact" role="tabpanel" aria-labelledby="contact-top-tab">
                            <div class="mt-4 text-center">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/BUWzX78Ye_8" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="top-review" role="tabpanel" aria-labelledby="review-top-tab">
                             <form class="theme-form" action="<?=base_url('review-action');?>" method="post" id="reviewForm">
                                <span id="reviewMsg"></span>
                                <div class="form-row">
                                    <div class="col-md-12">
                                       &nbsp;
                                    </div>
                                    <div class="col-md-6">
                                        <label for="name">Name</label>
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter Your name" required="">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="review">Review Title</label>
                                        <input type="text" class="form-control" id="review" name="title" placeholder="Enter your Review Subjects" required>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="review">Review Description</label>
                                        <textarea class="form-control" placeholder="Write Your Testimonial Here" name="description" id="exampleFormControlTextarea1" rows="6" required=""></textarea>
                                    </div>
                                    <input type="hidden" name="pid" value="<?= $product_id;?>">              
                                    <div class="col-md-12" style="margin-top: 10px;">
                                        <button class="btn btn-normal" type="submit"><span id="rBtn">Submit Your Review</span><span id="rBtn1" style="display: none;">Please Wait....</span></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- product-tab ends -->

<!-- related products -->
<section class="section-big-py-space  ratio_asos bg-light">
    <div class="custom-container">
        <div class="row">
            <div class="col-12 product-related">
                <h2>related products</h2>
            </div>
        </div>
        <div class="row ">
            <div class="col-12 product">
                <div class="product-slide no-arrow">
                <?php
                foreach($related_product as $rel)
                {    
                  $img_pro = single_row('tbl_image_upload',['refrence_id'=>$rel['ProductImage']],'f_name');  
                 echo '<div>
                 <a href="'.base_url('product-detail/'.url_title($rel['ProductName'],'-',true).'/'.$rel['hexa_id']).'" title="Product Details" target="_blank">
                        <div class="product-box">
                            <div class="product-imgbox">
                                <div class="product-front">
                                    <img src="'.base_url('assets/uploads/admin/product/thumbnail/').single_row('tbl_image_upload',['refrence_id'=>$rel['ProductImage']],'f_name').'" class="img-fluid  " alt="product">
                                </div>
                                <div class="product-back">
                                    <img src="'.base_url('assets/uploads/admin/product/thumbnail/').single_row('tbl_image_upload',['refrence_id'=>$rel['ProductImage']],'f_name').'" class="img-fluid  " alt="product">
                                </div>
                            </div>
                            <div class="product-detail detail-center ">
                                <div class="detail-title">
                                    <div class="detail-left">
                                        <div class="rating-star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <a href="">
                                            <h6 class="price-title">
                                                '.$rel['ProductName'].'
                                            </h6>
                                        </a>
                                    </div>
                                    <div class="detail-right">
                                        <div class="check-price">
                                             <i class="fa fa-inr" aria-hidden="true"></i> '.$rel['ProductPrice'].'
                                        </div>
                                        <div class="price">
                                            <div class="price">
                                                <i class="fa fa-inr" aria-hidden="true"></i> '.$rel['Productsaleprice'].'
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="icon-detail">
                                   ';

                        
                        //wish list start
                        if($this->session->userdata('userSess'))
                        {
                         echo '<a href="#" title="Add to Wishlist" class="addWishlist" data-pid='. $rel['hexa_id'].' data-pname="'.$rel['ProductName'].'" data-price='.$rel['Productsaleprice'].' data-img='.$img_pro.'>
                          <i class="ti-heart" aria-hidden="true"></i>
                        </a>';
                         }
                         else
                         {
                       echo '<a href="'.base_url('login').'" title="Add to Wishlist">
                          <i class="ti-heart" aria-hidden="true"></i>
                        </a>';
                        //wishlist end
                        
                                    
                }
                echo '<a href="'.base_url('product-detail/'.url_title($rel['ProductName'],'-',true).'/'.$rel['hexa_id']).'" title="Product Details" target="_blank">
                                        <i class="ti-search" aria-hidden="true"></i>
                                    </a>
                                    
                                </div>
                            </div>
                        </div>
                        </a>
                    </div>';
            }
                ?>
                   
                    
                  
                
               
                </div>
            </div>
        </div>
    </div>
</section>
<!-- related products -->


<?php require_once('inc/footer.php');?>

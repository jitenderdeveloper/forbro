<!--hot deal start-->
<section class="hot-deal b-g-white section-big-pb-space space-abjust">
  <div class="custom-container">
    
    

<!--- End latest-->

    <div class="row hot-2">
      <div class="col-12">
        <!--title start-->
        <div class="title3 b-g-white text-left">
          <h4>Featured Product</h4>
        </div>
        <!--titel end-->
      </div>

      <div class="col-lg-12">
         <div class="col pr-0">
        <div class="theme-tab product mb--5">
          <div class="tab-content-cls ">
            
            
              <div class="product-slide-6 product-m no-arrow">
                <?php
                foreach($featured as $fet)
                {
                  $img_fet = single_row('tbl_image_upload',['refrence_id'=>$fet['ProductImage']],'f_name');
                  ?>
                  <div>
                      <a href="<?= base_url('product-detail/'.url_title($fet['ProductName'],'-',true).'/'.$fet['hexa_id']);?>" target="_blank">
                  <div class="product-box">
                    <div class="product-imgbox">
                      <div class="product-front">
                        
                        <img src="<?= base_url('assets/uploads/admin/product/thumbnail/').$img_fet;?>" class="img-fluid  " alt="product">
                      
                      </div>
                      <div class="product-back">
                          <img src="<?= base_url('assets/uploads/admin/product/thumbnail/').$img_fet;?>" class="img-fluid  " alt="product">
                      </div>
                      <div class="product-icon icon-inline">
                        <?php
                        /*
                        if($this->session->userdata('userSess'))
                        {
                        echo '<a href="#" class="addCart"  data-pid='. $fet['hexa_id'].' data-pname="'.$fet['ProductName'].'" data-price='.$fet['Productsaleprice'].' >
                          <i class="ti-bag"></i></a>';
                        }
                        else
                        {
                           echo '<a href="#" class="addCart" data-pid='. $fet['hexa_id'].' data-pname="'.$fet['ProductName'].'" data-price='.$fet['Productsaleprice'].'   >
                          <i class="ti-bag"></i></a>';
                        }*/
                        ?>
                          
                        </button>
                        <?php
                        if($this->session->userdata('userSess'))
                        {
                         echo '<a href="#" title="Add to Wishlist" class="addWishlist" data-pid='. $fet['hexa_id'].' data-pname="'.$fet['ProductName'].'" data-price='.$fet['Productsaleprice'].' data-img='.$img_fet.'>
                          <i class="ti-heart" aria-hidden="true"></i>
                        </a>';
                         }
                         else
                         {
                       echo '<a href="'.base_url('login').'" title="Add to Wishlist">
                          <i class="ti-heart" aria-hidden="true"></i>
                        </a>';
                      }
                      ?>
                        <a href="<?= base_url('product-detail/'.url_title($fet['ProductName'],'-',true).'/'.$fet['hexa_id']);?>" target="_blank">
                          <i class="ti-search" aria-hidden="true"></i>
                        </a>
                        
                      </div>
                      <!--<div class="new-label1">
                        <div>&nbsp;</div>
                      </div>
                      <div class="on-sale1">
                        on sale
                      </div>-->
                    </div>
                    <div class="product-detail detail-inline ">
                      <div class="detail-title">
                        <div class="detail-left">
                          <!--
                          <div class="rating-star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>-->
                         <a href="<?= base_url('product-detail/'.url_title($fet['ProductName'],'-',true).'/'.$fet['hexa_id']);?>" target="_blank">
                            <h6 class="price-title"><?= ucwords($fet['ProductName']);?>
                             
                            </h6>
                            </a>
                          
                        </div>
                        <div class="detail-right">
                          <div class="check-price">
                            <i class="fa fa-inr" aria-hidden="true"></i> <?= $fet['ProductPrice'].'.00';?>
                          </div>
                          <div class="price">
                            <div class="price">
                             <i class="fa fa-inr" aria-hidden="true"></i> <?= $fet['Productsaleprice'].'.00';?>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  </a>
                </div>
                <?php
              }
              ?>
                
      </div>
     
    </div>
  </div>
</div>
      </div>
     
    </div>
    <!-- End featured-->
    <div class="row hot-2">
      <div class="col-12">
        <!--title start-->
        <div class="title3 b-g-white text-left">
          <h4>Top Sale Product</h4>
        </div>
        <!--titel end-->
      </div>

      <div class="col-lg-12">
       <div class="col pr-0">
        <div class="theme-tab product mb--5">
          <div class="tab-content-cls ">
            
            
              <div class="product-slide-6 product-m no-arrow">
                <?php
                foreach($top_sale as $top)
                {
                   $img_top = single_row('tbl_image_upload',['refrence_id'=>$top['ProductImage']],'f_name');
                  ?>
                  <div>
                      <a href="<?= base_url('product-detail/'.url_title($top['ProductName'],'-',true).'/'.$top['hexa_id']);?>" target="_blank">
                  <div class="product-box">
                    <div class="product-imgbox">
                      <div class="product-front">
                       <img src="<?= base_url('assets/uploads/admin/product/thumbnail/').$img_top;?>" class="img-fluid  " alt="product">
                        
                      </div>
                      <div class="product-back">
                         <img src="<?= base_url('assets/uploads/admin/product/thumbnail/').$img_top;?>" class="img-fluid  " alt="product">
                      </div>
                      <div class="product-icon icon-inline">
                       <?php
                       /*
                        if($this->session->userdata('userSess'))
                        {
                        echo '<a href="#" class="addCart"  data-pid='. $top['hexa_id'].' data-pname='.$top['ProductName'].' data-price="'.$top['Productsaleprice'].'" >
                          <i class="ti-bag"></i></a>';
                        }
                        else
                        {
                           echo '<a href="#" class="addCart" data-pid='. $top['hexa_id'].' data-pname='.$top['ProductName'].' data-price="'.$top['Productsaleprice'].'"   >
                          <i class="ti-bag"></i></a>';
                        }*/
                        ?>
                        </button>
                         <?php
                        if($this->session->userdata('userSess'))
                        {
                         echo '<a href="#" title="Add to Wishlist" class="addWishlist" data-pid='. $top['hexa_id'].' data-pname="'.$top['ProductName'].'" data-price='.$top['Productsaleprice'].' data-img='.$img_top.'>
                          <i class="ti-heart" aria-hidden="true"></i>
                        </a>';
                         }
                         else
                         {
                       echo '<a href="'.base_url('login').'" title="Add to Wishlist">
                          <i class="ti-heart" aria-hidden="true"></i>
                        </a>';
                      }
                      ?>
                      <a href="<?= base_url('product-detail/'.url_title($top['ProductName'],'-',true).'/'.$top['hexa_id']);?>" target="_blank">
                          <i class="ti-search" aria-hidden="true"></i>
                        </a>
                        
                      </div>
                      <!--<div class="new-label1">
                        <div>&nbsp;</div>
                      </div>
                      <div class="on-sale1">
                        on sale
                      </div>-->
                    </div>
                    <div class="product-detail detail-inline ">
                      <div class="detail-title">
                        <div class="detail-left">
                          <!--
                          <div class="rating-star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>-->
                         <a href="<?= base_url('product-detail/'.url_title($top['ProductName'],'-',true).'/'.$top['hexa_id']);?>" target="_blank">
                            <h6 class="price-title"><?= ucwords($top['ProductName']);?>
                             
                            </h6>
                          </a>
                        </div>
                        <div class="detail-right">
                          <div class="check-price">
                            <i class="fa fa-inr" aria-hidden="true"></i> <?= $top['ProductPrice'].'.00';?>
                          </div>
                          <div class="price">
                            <div class="price">
                             <i class="fa fa-inr" aria-hidden="true"></i> <?= $top['Productsaleprice'].'.00';?>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  </a>
                </div>
                <?php
              }
              ?>
                
      </div>
     
    </div>
  </div>
</div> 
      </div>
      <!-- Top Sale End-->
     
    </div>
    <div class="row hot-2">
      <div class="col-12">
        <!--title start-->
        <div class="title3 b-g-white text-left">
          <h4>Special Product</h4>
        </div>
        <!--titel end-->
      </div>

      <div class="col-lg-12">
        <div class="col pr-0">
        <div class="theme-tab product mb--5">
          <div class="tab-content-cls ">
            
            
              <div class="product-slide-6 product-m no-arrow">
                <?php
                foreach($special as $sp)
                {
                  $img_sp = single_row('tbl_image_upload',['refrence_id'=>$sp['ProductImage']],'f_name');
                  ?>
                  <div>
                       <a href="<?= base_url('product-detail/'.url_title($sp['ProductName'],'-',true).'/'.$sp['hexa_id']);?>" target="_blank">
                  <div class="product-box">
                    <div class="product-imgbox">
                      <div class="product-front">
                       
                       <img src="<?= base_url('assets/uploads/admin/product/thumbnail/').$img_sp;?>" class="img-fluid  " alt="product">
                            
                      </div>
                      <div class="product-back">
                       <img src="<?= base_url('assets/uploads/admin/product/thumbnail/').$img_sp;?>" class="img-fluid  " alt="product">
                      </div>
                      <div class="product-icon icon-inline">
                       <?php
                       /*
                        if($this->session->userdata('userSess'))
                        {
                        echo '<a href="#" class="addCart" data-pid='. $sp['hexa_id'].' data-pname="'.$sp['ProductName'].'" data-price='.$sp['Productsaleprice'].' >
                          <i class="ti-bag"></i></a>';
                        }
                        else
                        {
                           echo '<a href="#" class="addCart" data-pid='. $sp['hexa_id'].' data-pname="'.$sp['ProductName'].'" data-price='.$sp['Productsaleprice'].'>
                          <i class="ti-bag"></i></a>';
                        }*/
                        ?>
                        </button>
                         <?php
                        if($this->session->userdata('userSess'))
                        {
                         echo '<a href="#" title="Add to Wishlist" class="addWishlist" data-pid='. $sp['hexa_id'].' data-pname="'.$sp['ProductName'].'" data-price='.$sp['Productsaleprice'].' data-img='.$img_sp.'>
                          <i class="ti-heart" aria-hidden="true"></i>
                        </a>';
                         }
                         else
                         {
                       echo '<a href="'.base_url('login').'" title="Add to Wishlist">
                          <i class="ti-heart" aria-hidden="true"></i>
                        </a>';
                      }
                      ?>
                        <a href="<?= base_url('product-detail/'.url_title($sp['ProductName'],'-',true).'/'.$sp['hexa_id']);?>" target="_blank">
                          <i class="ti-search" aria-hidden="true"></i>
                        </a>
                        
                      </div>
                      <!--<div class="new-label1">
                        <div>&nbsp;</div>
                      </div>
                      <div class="on-sale1">
                        on sale
                      </div>-->
                    </div>
                    <div class="product-detail detail-inline ">
                      <div class="detail-title">
                        <div class="detail-left">
                          <!--
                          <div class="rating-star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>-->
                         <a href="<?= base_url('product-detail/'.url_title($sp['ProductName'],'-',true).'/'.$sp['hexa_id']);?>" target="_blank">
                            <h6 class="price-title"><?= ucwords($sp['ProductName']);?>
                             
                            </h6>
                          </a>
                        </div>
                        <div class="detail-right">
                          <div class="check-price">
                            <i class="fa fa-inr" aria-hidden="true"></i> <?= $sp['ProductPrice'].'.00';?>
                          </div>
                          <div class="price">
                            <div class="price">
                             <i class="fa fa-inr" aria-hidden="true"></i> <?= $sp['Productsaleprice'].'.00';?>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  </a>
                </div>
                <?php
              }
              ?>
                
      </div>
     
    </div>
  </div>
</div> 
      </div>
     
    </div>
  </div>
</section>
<!--hot deal start-->
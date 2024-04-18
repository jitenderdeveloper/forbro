<!-- slider tab  -->
<section class="section-py-space ratio_square product">
  <div class="custom-container">
    <div class="row">
      <div class="col-lg-12">
        <div class="col pr-0">
        <div class="theme-tab product mb--5">
          <div class="tab-content-cls ">
            
            
              <div class="product-slide-6 product-m no-arrow">
                <?php
                foreach($latest as $lat)
                {
                   $img_lat = single_row('tbl_image_upload',['refrence_id'=>$lat['ProductImage']],'f_name');
                  ?>
                  
                  <div>
                    <a href="<?= base_url('product-detail/'.url_title($lat['ProductName'],'-',true).'/'.$lat['hexa_id']);?>" target="_blank">
                  <div class="product-box">
                    <div class="product-imgbox">
                      <div class="product-front">
                          
                        
                      <img src="<?= base_url('assets/uploads/admin/product/thumbnail/').$img_lat;?>" class="img-fluid  " alt="product">
                        
                      </div>
                      <div class="product-back">
                         <img src="<?= base_url('assets/uploads/admin/product/thumbnail/').$img_lat;?>" class="img-fluid  " alt="product">
                      </div>
                      <div class="product-icon icon-inline">
                        <?php
                        /*
                        if($this->session->userdata('userSess'))
                        {
                        echo '<a href="#" class="addCart" data-pid='. $lat['hexa_id'].' data-pname="'.$lat['ProductName'].'" data-price='.$lat['Productsaleprice'].' >
                          <i class="ti-bag"></i>';
                        }
                        else
                        {
                           echo '<a href="#" class="addCart" data-pid='. $lat['hexa_id'].' data-pname="'.$lat['ProductName'].'" data-price='.$lat['Productsaleprice'].'   >
                          <i class="ti-bag"></i>';
                        }*/
                        ?>
                        
                        <?php
                        //wish list start
                        if($this->session->userdata('userSess'))
                        {
                         echo '<a href="#" title="Add to Wishlist" class="addWishlist" data-pid='. $lat['hexa_id'].' data-pname="'.$lat['ProductName'].'" data-price='.$lat['Productsaleprice'].' data-img='.$img_lat.'>
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
                      ?>
                        <a href="<?= base_url('product-detail/'.url_title($lat['ProductName'],'-',true).'/'.$lat['hexa_id']);?>" target="_blank">
                          <i class="ti-search" aria-hidden="true"></i>
                        </a> 
                        
                      </div>
                      <div class="new-label1">
                        <div>new</div>
                      </div>
                      <div class="on-sale1">
                        on sale
                      </div>
                    </div>
                    <div class="product-detail detail-inline ">
                      <div class="detail-title">
                        <div class="detail-left">
                        
                          
                            <a href="<?= base_url('product-detail/'.url_title($lat['ProductName'],'-',true).'/'.$lat['hexa_id']);?>" target="_blank"><h6 class="price-title"><?= ucwords($lat['ProductName']);?>
                             
                            </h6></a>
                        
                        </div>
                        <div class="detail-right">
                          <div class="check-price">
                            <i class="fa fa-inr" aria-hidden="true"></i> <?= $lat['ProductPrice'].'.00';?>
                          </div>
                          <div class="price">
                            <div class="price">
                             <i class="fa fa-inr" aria-hidden="true"></i> <?= $lat['Productsaleprice'].'.00';?>
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
</section>
<!-- slider tab end -->


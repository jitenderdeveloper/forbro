<!-- slider tab  -->
<section class="section-py-space ratio_square product">
  <div class="custom-container">
    <div class="row">
      <div class="col pr-0">
        <div class="theme-tab product mb--5">
          <div class="tab-content-cls ">
            <?php
            // Category loop
            $i=0;
            foreach($category as $cat1)
            { 
              ++$i;
              if($i==1)
              {
                ?>
            <div id="tab-<?= $cat1['CategoryID'];?>" class="tab-content active default">
              <div class="product-slide-6 product-m no-arrow">
                <?php
                //get all product by current category
               $t= 0;
                foreach($product as $pro)
                {
                 
                  if($cat1['CategoryID']==$pro['ProductCategoryID'])
                  {
                     $img_pro = single_row('tbl_image_upload',['refrence_id'=>$pro['ProductImage']],'f_name');
                   
                  ?>
                <div>
                  <div class="product-box">
                    <div class="product-imgbox">
                      <div class="product-front">
                        <img src="<?= base_url('assets/uploads/admin/product/').$img_pro;?>" class="img-fluid  " alt="product">
                      </div>
                      <div class="product-back">
                        <img src="<?= base_url('assets/uploads/admin/product/').single_row('tbl_image_upload',['refrence_id'=>$pro['ProductImage']],'f_name');?>" class="img-fluid  " alt="product">
                      </div>
                      <div class="product-icon icon-inline">
                        <?php
                        if($this->session->userdata('userSess'))
                        {
                        echo '<button class="addCart" data-pid="'. $pro['hexa_id'].'" data-pname="'.$pro['ProductName'].'" data-price='.$pro['Productsaleprice'].' >
                          <i class="ti-bag"></i>';
                        }
                        else
                        {
                           echo '<button class="addCart" data-pid='. $pro['hexa_id'].' data-pname="'.$pro['ProductName'].'" data-price='.$pro['Productsaleprice'].'   >
                          <i class="ti-bag"></i>';
                        }
                        ?>
                        </button>
                        <?php
                        //wish list start
                        if($this->session->userdata('userSess'))
                        {
                         echo '<a href="#" title="Add to Wishlist" class="addWishlist" data-pid='. $pro['hexa_id'].' data-pname="'.$pro['ProductName'].'" data-price='.$pro['Productsaleprice'].' data-img='.$img_pro.'>
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
                        <a href="<?= base_url('product-detail/'.url_title($pro['ProductName'],'-',true).'/'.$pro['hexa_id']);?>" target="_blank" >
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
                          <div class="rating-star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                          <a href="#">
                            <h6 class="price-title">
                              <?= ucwords($pro['ProductName']);?>
                            </h6>
                          </a>
                        </div>
                        <div class="detail-right">
                          <div class="check-price">
                            <i class="fa fa-inr" aria-hidden="true"></i> <?= $pro['ProductPrice'].'.00';?>
                          </div>
                          <div class="price">
                            <div class="price">
                              <i class="fa fa-inr" aria-hidden="true"></i> <?= $pro['Productsaleprice'].'.00';?>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
             
                <?php
              
              }
            }
              ?>


                
            </div>
          </div>
            <?php
          }
          else
          {
            ?>
            <div id="tab-<?= $cat1['CategoryID'];?>" class="tab-content">
              <div class="product-slide-6 product-m no-arrow">
                <?php
                //get all product by current category
               
                foreach($product as $pro)
                {
                 
                  if($cat1['CategoryID']==$pro['ProductCategoryID'])
                  {
                   $img_pro = single_row('tbl_image_upload',['refrence_id'=>$pro['ProductImage']],'f_name');
                  ?>
                <div>
                  <div class="product-box">
                    <div class="product-imgbox">
                      <div class="product-front">
                        <img src="<?= base_url('assets/uploads/admin/product/').$img_pro;?>" class="img-fluid  " alt="product">
                      </div>
                      <div class="product-back">
                        <img src="<?= base_url('assets/uploads/admin/product/').single_row('tbl_image_upload',['refrence_id'=>$pro['ProductImage']],'f_name');?>" class="img-fluid  " alt="product">
                      </div>
                      <div class="product-icon icon-inline">
                        <?php
                        if($this->session->userdata('userSess'))
                        {
                        echo '<button class="addCart" data-pid="'. $pro['hexa_id'].'" data-pname="'.$pro['ProductName'].'" data-price='.$pro['Productsaleprice'].'>
                          <i class="ti-bag"></i>';
                        }
                        else
                        {
                           echo '<button class="addCart" data-pid='. $pro['hexa_id'].' data-pname="'.$pro['ProductName'].'" data-price='.$pro['Productsaleprice'].'   >
                          <i class="ti-bag"></i>';
                        }
                        ?>
                        </button>
                       <?php
                        //wish list start
                        if($this->session->userdata('userSess'))
                        {
                         echo '<a href="#" title="Add to Wishlist" class="addWishlist" data-pid='. $pro['hexa_id'].' data-pname="'.$pro['ProductName'].'" data-price='.$pro['Productsaleprice'].' data-img='.$img_pro.'>
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
                           <a href="<?= base_url('product-detail/'.url_title($pro['ProductName'],'-',true).'/'.$pro['hexa_id']);?>" target="_blank" >
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
                          <div class="rating-star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                          <a href="#">
                            <h6 class="price-title">
                              <?= ucwords($pro['ProductName']);?>
                            </h6>
                          </a>
                        </div>
                        <div class="detail-right">
                          <div class="check-price">
                            <i class="fa fa-inr" aria-hidden="true"></i> <?= $pro['ProductPrice'].'.00';?>
                          </div>
                          <div class="price">
                            <div class="price">
                              <i class="fa fa-inr" aria-hidden="true"></i> <?= $pro['Productsaleprice'].'.00';?>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <?php         
              }//end if of second 
            }
              ?>

                 
                    
                  </div>
                </div>
              </div>
            </div>
            <?php
          }
          //End category loop condtion else
        }//end category loop
        ?>
           
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- slider tab end -->


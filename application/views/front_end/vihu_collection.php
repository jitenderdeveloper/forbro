<?php
require_once('inc/head.php');
require_once('inc/header.php');
?>


<!-- section start -->
<section class="section-big-pt-space ratio_asos bg-light">
<div class="collection-wrapper">
<div class="custom-container">
<div class="row">
<div class="col-sm-3 collection-filtercategory-page-side ">
<!-- side-bar colleps block stat -->
<form id="filterForm">
    <input type="hidden" name="category" id="category" value="<?= $this->input->get('category')??'';?>">
    <input type="hidden" name="keywords" id="keywords" value="<?= $this->input->get('keywords')??'';?>">
<?php include('inc/sidebar-filter.php');?>
<!-- silde-bar colleps block end here -->
<!-- side-bar single product slider start -->
<div class="theme-card creative-card creative-inner">
<h5 class="title-border">new product</h5>
<div class="offer-slider slide-1">
    <div>
        <?php
        $m=0;
        foreach($latest as $l)
        {
            ++$m;
            if($m>3)
            {
                break;
            }
            else
            {
        echo '<div class="media">
            <a href=""><img class="img-fluid "  src="'.base_url('assets/uploads/admin/product/thumbnail/').single_row('tbl_image_upload',['refrence_id'=>$l['ProductImage']],'f_name').'" alt=""></a>
            <div class="media-body align-self-center">
                <div class="rating"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i></div><a href="'.base_url('product-detail/'.url_title($l['ProductName'],'-',true).'/'.$l['hexa_id']).'" target="_blank"><h6>'.$l['ProductName'].'</h6></a>
                <h4><i class="fa fa-inr" aria-hidden="true"></i>'.$l['Productsaleprice'].'</h4></div>
        </div>';
    }
        }
    ?>
    </div>
    <div>
        
       <?php
        $m1=0;
        foreach($latest as $l1)
        {
            ++$m1;
            if($m1<4)
            {
               continue;
            }
            else
            {
        echo '<div class="media">
            <a href=""><img class="img-fluid "  src="'.base_url('assets/uploads/admin/product/thumbnail/').single_row('tbl_image_upload',['refrence_id'=>$l1['ProductImage']],'f_name').'" alt=""></a>
            <div class="media-body align-self-center">
                <div class="rating"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i></div><a href="'.base_url('product-detail/'.url_title($l1['ProductName'],'-',true).'/'.$l1['hexa_id']).'" target="_blank"><h6>'.$l1['ProductName'].'</h6></a>
                <h4><i class="fa fa-inr" aria-hidden="true"></i>'.$l1['Productsaleprice'].'</h4></div>
        </div>';
    }
        }
    ?>
    </div>
</div>
</div>
<!-- side-bar single product slider end -->

</div>
<div class="collection-content col">
<div class="page-main-content">
<div class="collection-product-wrapper">

    <div class="product-top-filter">
        <div class="row">
            <div class="col-12">
                <div class="product-filter-content">
                    
                    <div class="collection-view">
                        <ul>
                            <li><i class="fa fa-th grid-layout-view"></i></li>
                            <li><i class="fa fa-list-ul list-layout-view"></i></li>
                        </ul>
                    </div>
                    <div class="collection-grid-view">
                        <ul>
                           &nbsp;
                        </ul>
                    </div>
                    <div class="product-page-per-view">
                        <select name="price-sort" id="price-sort" class="comman-search-class1">
                            <option value="">Sorting By Price</option>
                            <option value="ASC" <?= $this->input->get('price-sort')=='ASC'?'Selected':'';?>>Price Low To High</option>
                            <option value="DESC" <?= $this->input->get('price-sort')=='DESC'?'Selected':'';?>>Price High To Low</option>
                           
                        </select>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
    </form>

    <div class="product-wrapper-grid">
        <div class="row">
            <?php
            $i=0;
            foreach ($collection as $res) {
               $img_res = single_row('tbl_image_upload',['refrence_id'=>$res['ProductImage']],'f_name');
            ?>
            <a href="<?= base_url('product-detail/'.url_title($res['ProductName'],'-',true).'/'.$res['hexa_id']);?>" target="_blank">
            <div class="col-md-4 col-6 col-grid-box">
                <div class="product">
                    <div class="product-box">
                        <div class="product-imgbox">
                            <div class="product-front">
                                <!----
                                <img src="<?= base_url();?>assets/images/product/2.jpg" class="img-fluid" alt="product">----------->
                                
                                <img src="<?= base_url('assets/uploads/admin/product/thumbnail/').$img_res;?>" class="img-fluid" alt="product">
                            </div>
                            <div class="product-back">
                                <img src="<?= base_url('assets/uploads/admin/product/thumbnail/').$img_res;?>" class="img-fluid" alt="product"><!---
                                <img src="<?= base_url();?>assets/images/product/2.jpg" class="img-fluid" alt="product">------->
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
                                    <p><?= $res['ProductShortDesc'];?></p>
                                    <a href="">
                                        <h6 class="price-title">
                                            <?= $res['ProductName'];?>
                                        </h6>
                                    </a>
                                </div>
                                <div class="detail-right">
                                    <div class="check-price">
                                        <i class="fa fa-inr" aria-hidden="true"></i> <?=$res['ProductPrice'];?>
                                    </div>
                                    <div class="price">
                                        <div class="price">
                                            <i class="fa fa-inr" aria-hidden="true"></i> <?=$res['Productsaleprice'];?>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="icon-detail">
                                <?php
                                /*
                                 if($this->session->userdata('userSess'))
                                {
                                 echo '<button class="addCart" data-pid="'. $res['hexa_id'].'" data-pname="'.$res['ProductName'].'" data-price="'.$res['Productsaleprice'].'" title="Add to cart"><i class="ti-bag" ></i>
                                </button>';
                             }
                             else
                             {

                             echo '<button class="addCart" data-pid="'. $res['hexa_id'].'" data-pname="'.$res['ProductName'].'" data-price="'.$res['Productsaleprice'].'" title="Add to cart"><i class="ti-bag" ></i>
                                </button>';       
                             }*/
                             ?>
                             
                                   
                                 <?php
                        //wish list start
                        if($this->session->userdata('userSess'))
                        {
                         echo '<a href="#" title="Add to Wishlist" class="addWishlist" data-pid='. $res['hexa_id'].' data-pname="'.$res['ProductName'].'" data-price='.$res['Productsaleprice'].' data-img='.$img_res.'>
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
                                <a href="<?= base_url('product-detail/'.url_title($res['ProductName'],'-',true).'/'.$res['hexa_id']);?>" target="_blank">
                                    <i class="ti-search" aria-hidden="true"></i>
                                </a>
                                <!---------
                                <a href="compare.html" title="Compare">
                                    <i class="fa fa-exchange" aria-hidden="true"></i>
                                </a>-------------->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
            <?php
        }
            ?>
          
        </div>
    </div>
 <?php
 if($this->pagination->create_links())
 {
    ?>
    <div class="product-pagination">
        <div class="theme-paggination-block">
            <div class="row">
                
                <div class="col-md-12">
                   <nav aria-label="Page navigation pagination">
                        <?= $this->pagination->create_links();?>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <?php
}
?>
<br/>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<!-- section End -->

<?php require_once('inc/footer.php');?>
<script type="text/javascript">
$(function(){
$(document).on('click','.comman-search-class',function(){
$("#filterForm").submit();
});
$(document).on('change','.comman-search-class1',function(){
$("#filterForm").submit();
});
});
function submit() {
   $("#filterForm").submit();
}
</script>
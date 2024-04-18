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
                        <h2>wishlist</h2>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                            <li><a href="#">wishlist</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb End -->

<!--section start-->
<section class="wishlist-section section-big-py-space bg-light">
    <div class="custom-container">
        <div class="row">
            <div class="col-sm-12">
                <table class="table cart-table table-responsive-xs">
                    <thead>
                    <tr class="table-head">
                        <th scope="col">date</th>
                        <th scope="col">image</th>
                        <th scope="col">product name</th>
                        <th scope="col">price</th>
                        <th scope="col">availability</th>
                        <th scope="col">action</th>
                    </tr>
                    </thead>
                    <?php
                    if(count($items)<1)
                    {
                     echo '<tbody>
                     <tr>
                     <td colspan="6" align="center">No product in wishlist</td>
                     </tr>
                     </tbody>';
                    }
                    else
                    {
                        foreach($items as $it)
                        {
                        $d = date_create($it['created_at']);
                         echo '<tbody>
                    <tr>
                     <td>'.date_format($d ,'d-F-Y' ).'</td>
                        <td>
                            <a href="#"><img src="'.base_url('assets/uploads/admin/product/thumbnail/').$it['image_path'].'" alt="product" class="img-fluid  "></a>
                        </td>
                        <td><a href="#">'.$it['pname'].'</a>
                            <div class="mobile-cart-content row">
                                <div class="col-xs-3">
                                    <p>in stock</p>
                                </div>
                                <div class="col-xs-3">
                                    <h2 class="td-color"><i class="fa fa-inr" aria-hidden="true"></i>'.number_format($it['pprice']).'</h2></div>
                                <div class="col-xs-3">
                                    <h2 class="td-color"><a href="#" class="icon mr-1"><i class="ti-close"></i></a>
                                 <a href="#" class="icon mr-3"><i class="ti-close"></i> </a> <a class="addCart"  data-pid='. $it['product_id'].' data-pname='.$it['pname'].' data-price="'.$it['pprice'].'" ><i class="ti-shopping-cart"></i></a></h2></div>
                            </div>
                        </td>
                        <td>
                            <h2><i class="fa fa-inr" aria-hidden="true"></i>'.number_format($it['pprice']).'</h2></td>
                        <td>
                            <p>in stock</p>
                        </td>
                        <td><a href="'.base_url('user/dashboard/delete/wishlist/').$it['wish_id'].'" class="icon mr-3"><i class="ti-close"></i> </a> <a class="addCart"  data-pid='. single_row('tbl_products',['ProductID'=>$it['product_id']] ,'hexa_id').' data-pname='.$it['pname'].' data-price="'.$it['pprice'].'" ><i class="ti-shopping-cart"></i></a></td>
                    </tr>
                    </tbody>';
                        }
                    }
                    ?>
                    
                   
                </table>
                 
            </div>
        </div>
        <?php
        if($this->pagination->create_links())
        {
            ?>
        <div class="product-pagination">
        <div class="theme-paggination-block">
            <div class="row">
                <div class="col-xl-10 col-md-6 col-sm-12">
                    <nav aria-label="Page navigation">
                       &nbsp;
                    </nav>
                </div>
                <div class="col-xl-2 col-md-6 col-sm-12">
                   <nav aria-label="Page navigation">
                        <?= $this->pagination->create_links();?>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <?php
}
?>
    </div>

    </div>
</section>
<!--section end-->

<?php require_once('inc/footer.php');?>
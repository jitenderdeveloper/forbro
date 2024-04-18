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
                        <h2>cart</h2>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                            <li><a href="#">cart</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb End -->


<!--section start-->
<div class="cartDiv">
<section class="cart-section section-big-py-space bg-light">
    <div class="custom-container">
        <div class="row">
            <div class="col-sm-12">

                <table class="table cart-table table-responsive-xs">
                    <thead>
                    <tr class="table-head">
                        <th scope="col">image</th>
                        <th scope="col">product name</th>
                        <th scope="col">product size</th>

                        <th scope="col">price</th>
                        <th scope="col">quantity</th>
                        <th scope="col">action</th>
                        <th scope="col">total</th>
                    </tr>
                    </thead>
                    <?php
                   // echo '<pre>';
                   // print_r($cart);
                    $total=0;
                    if(count($cart)<1)
                    {
                   echo ' <tbody>
                    <tr>
                    <td colspan="6"><h2>Cart Empty</h2></td></tr></tbody>';
                    }
                    else
                    {
                    foreach($cart as $c)
                    {
                        $total+=$c['price']*$c['qty'];
                       $img = get_img($c['id']);
                       $pname = single_row('tbl_products',['ProductID'=>$c['id']],'ProductName');
                      
                        ?>
                    <tbody>
                    <tr>
                        <td>
                            <a href="#">
                                <div><img src="<?= base_url('assets/uploads/admin/product/thumbnail/').$img;?>" lt="cart"  class=""></div>
                        
                                
                               </a>
                        </td>

                        <td><a href="#"><?= $pname;?></a>
                            <div class="mobile-cart-content row">
                                <div class="col-xs-3">
                                    <div class="qty-box">
                                        <div class="input-group">
                                            <input type="text" name="quantity" class="form-control input-number" value="1">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <h2 class="td-color"><i class="fa fa-inr" aria-hidden="true"></i><?= $c['price'].'.00';?></h2></div>
                                <div class="col-xs-3">
                                    <h2 class="td-color"><a href="#" class="icon"><i class="ti-close"></i></a></h2></div>
                            </div>
                        </td>
                        <td><?= single_row('tbl_productvariation',['varid'=>$c['options']['Size']],'data');?></td>
                        <td>
                            <h2><i class="fa fa-inr" aria-hidden="true"></i><?= $c['price'].'.00';?></h2></td>
                        <td>
                            <div class="qty-box">
                                <div class="input-group">
                                    <input type="number" name="quantity" class="form-control input-number updateCart" value="<?= $c['qty'];?>" data-id="<?= $c['rowid'];?>" >
                                </div>
                            </div>
                        </td>
                        <td><a href="#" class="icon deleteCart" data-id="<?= $c['rowid'];?>"><i class="ti-close"></i></a></td>
                        <td>
                            <h2 class="td-color"><i class="fa fa-inr" aria-hidden="true"></i><?= number_format($c['price']*$c['qty']);?></h2></td>
                    </tr>
                    </tbody>
                    <?php
                }
            }
                ?>
                    
                </table>
                <?php
                if(count($cart)>0)
                {
                echo '<table class="table cart-table table-responsive-md">
                    <tfoot>
                    <tr>
                        <td>total price :</td>
                        <td>
                            <h2><i class="fa fa-inr" aria-hidden="true"></i>'.number_format($total).'</h2></td>
                    </tr>
                    </tfoot>
                </table></div>
        </div>
        <div class="row cart-buttons">';
        if($sess)
        {
            echo '<div class="col-12"><a href="'.base_url('user/dashboard/check-out').'" class="btn btn-normal ml-3">check out</a></div></div>';
        }else
        {
         echo '<div class="col-12"><a href="'.base_url('login').'" class="btn btn-normal ml-3">check out</a></div></div>';
        }
   
       
            }

                ?>
                 </div>
</section>
            </div>
<!--section end-->



<?php require_once('inc/footer.php');?>
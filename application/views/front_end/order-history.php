<?php require_once('inc/head.php');?>
<?php require_once('inc/header.php');?>

<!-- breadcrumb start -->
<div class="breadcrumb-main">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="breadcrumb-contain">
                    <div>
                        <h2>order-history</h2>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                            <li><a href="#">order-history</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb End -->

<!--section start-->
<section class="cart-section order-history section-big-py-space">
    <div class="custom-container">
        <div class="row">
            <div class="col-sm-12">
                <table class="table cart-table table-responsive-x">
                    <thead>
                    <tr class="table-head">
                         <th scope="col">Sno</th>
                         <th scope="col">Order Date</th>
                        <th scope="col">product</th>
                        <th scope="col">description</th>
                        <th scope="col">price</th>
                    
                        <th scope="col">status</th>
                    </tr>
                    </thead>
                    <?php
                   
                    if(count($orders)<1)
                    {
                      echo '<tr>
                      <td colspan="7" align="center"><b>No product in your order list</b></td>
                      </tr>';
                    }
                    else
                    {
                    $i=0;
                    foreach($orders as $ord)
                    {
                        $d = date_create($ord['created_at']);
                    $ref = single_row('tbl_products',['ProductID'=>$ord['product_id']],'ProductImage');
                    echo '<tbody>
                    <tr>
                    <td>'.++$i.'</td>
                     <td>'.date_format($d ,'d-F-Y' ).'</td>
                        <td>
                            <a href="#"><img src="'.base_url('assets/uploads/admin/product/thumbnail/').single_row('tbl_image_upload',['refrence_id'=>$ref],'f_name').'" alt="product" class="img-fluid  "></a>
                        </td>
                        <td><a href="#">order no: <span class="dark-data">'.$ord['custom_order_no'].'</span> <br>'.$ord['product_name'].'</a>
                            <div class="mobile-cart-content row">
                                <div class="col-xs-3">
                                    <div class="qty-box">
                                        <div class="input-group">
                                            <input type="text" name="quantity" class="form-control input-number" value="1">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <h4 class="td-color">'.$ord['product_price'].'</h4><span>Size: '.single_row('tbl_productvariation',['varid'=>$ord['product_size']],'data').'</span> | <span>Quntity: '.$ord['product_qty'].'</span></div>
                                <div class="col-xs-3">
                                    <h2 class="td-color"><a href="#" class="icon"><i class="ti-close"></i></a></h2></div>
                            </div>
                        </td>
                        <td>
                            <h4><i class="fa fa-inr" aria-hidden="true"></i>
'.number_format($ord['product_price']).'</h4> <span>Size: '.single_row('tbl_productvariation',['varid'=>$ord['product_size']],'data').'</span> | <span>Quntity: '.$ord['product_qty'].'</span></td>
                       
                        <td>
                            <div class="responsive-data">
                                <h4 class="price">'.$ord['product_price'].'</h4>
                                <span>Size: '.single_row('tbl_productvariation',['varid'=>$ord['product_size']],'data').'</span> | <span>Quntity: '.$ord['product_qty'].'</span>
                            </div>';
                            if($ord['order_shipped1']==0)
                            {
                                echo '<span class="dark-data"><font color="red">Pending</font></span>'; 
                            }else if($ord['order_shipped1']==1)
                            {
                                echo '<span class="dark-data"><font color="green">Shipped</font></span> (jul 01, 2019)';
                            }else if($ord['order_shipped1']==2)
                            {
                                $a = date_create($ord['deliver_date1']);
                                $ddate = date_format($a , 'd-M-Y');
                                 echo '<span class="dark-data"><font color="green">Delivered</font></span> ('.$ddate.')';
                            }
                            
                        echo '</td>
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
            {?>
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
</section>
<!--section end-->


<?php require_once('inc/footer.php');?>
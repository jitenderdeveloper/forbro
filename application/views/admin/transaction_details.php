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
                        <h3>Transaction Detail
                            <small>Bigdeal Admin panel</small>
                        </h3>
                    </div>
                </div>
                <div class="col-lg-6">
                    <ol class="breadcrumb pull-right">
                        <li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
                        <li class="breadcrumb-item">Physical</li>
                        <li class="breadcrumb-item active">Transaction Detail</li>
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
                <table class="table cart-table table-responsive-xs" style="border: 2px dotted;">
                    <thead>
                    <tr class="table-head">
                      <th>Sno</th>
                        <th scope="col">Image</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">SKU Code</th>
                        <th scope="col">Qty</th>
                        <th scope="col">Price</th>
                    </tr>
                    </thead>
                    <tbody>
                      <?php
                      $i=0;
                      $sum = 0;
                      foreach($orders as $order)
                      {
                        $sum+=$order->product_price*$order->product_qty;
                      echo '<tr>
                      <td>'.++$i.'</td>
                      <td><img src="'.base_url('assets/uploads/admin/product/').single_row('tbl_image_upload',['refrence_id'=>$order->ProductImage],'f_name').'" alt="" class="img-fluid img-30 mr-2 blur-up lazyloaded"></td>
                      <td>'.$order->ProductName.'</td>
                      <td>'.$order->ProductSKU.'</td>
                      <td>'.$order->product_qty.'</td>
                      <td>'.$order->product_price.'</td>
                      </tr>';
                      }
                      ?>
                      <tr>
                        <td colspan="6" align="right">Total Amount : <i class="fa fa-inr" aria-hidden="true"></i><b><?= number_format($sum);?></b></td>
                      </tr>

                    </tbody>
                  </table>
                  <br/>
                  <h2>Transaction Detail</h2>

              <table width="50%" style="border:2px dotted;" class="table">
                <?php
                foreach($transactions as $tr)
                {
                echo '<tr>
                    <th>Order No</th>
                    <td>'.$tr->order_no.'</td>
                  </tr>
                  <tr>
                    <th>Transaction Id</th>
                    <td>'.$tr->txn_id.'</td>
                  </tr>
                  <tr>
                    <th>Transaction Amount</th>
                    <td>'.number_format($tr->amount).'</td>
                  </tr>
                  <tr>
                    <tr>
                    <th>Transaction Date</th>
                    <td>'.$tr->txn_date.'</td>
                  </tr>
                    <th>Payment Mode</th>
                    <td>'.$tr->payment_mode.'</td>
                  </tr>
                  <tr>
                    <th>Bank Name</th>
                    <td>'.$tr->bank_name.'</td>
                  </tr>
                   <tr>
                    <th>Bank Id</th>
                    <td>'.$tr->bank_id.'</td>
                  </tr>
                   <tr>
                    <th>Gateway Name</th>
                    <td>'.$tr->gateway_name.'</td>
                  </tr>
                   <tr>
                    <th>Transaction Status</th>
                    <td>'.$tr->txn_status.'</td>
                  </tr>
                   <tr>
                    <th>Currency</th>
                    <td>'.$tr->currency.'</td>
                  </tr>';
              }
              ?>
              </table>

            </div>
        </div>
    </div>
    <!-- Container-fluid Ends-->
</div>

<?php require_once('inc/footer.php');?>
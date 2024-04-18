<?php 
require_once('inc/head.php');
require_once('inc/header.php');
require_once('inc/left_sidebar.php');
?>
<style type="text/css">
    label
    {
        font-weight: bold;
    } 
</style>
<div class="page-body">
<!-- Container-fluid starts-->
<div class="container-fluid">
<div class="page-header">
<div class="row">
<div class="col-lg-6">
<div class="page-header-left">
<h3>Order Details 
<small>Bigdeal Admin panel</small>
</h3>
</div>
</div>
<div class="col-lg-6">
<ol class="breadcrumb pull-right">
<li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
<li class="breadcrumb-item">Physical</li>
<li class="breadcrumb-item active">Order Details </li>
</ol>
</div>
</div>
</div>
</div>
<!-- Container-fluid Ends-->

<!-- Container-fluid starts-->
<div class="container-fluid">
<div class="row">
<div class="col-sm-12">
<div class="card">
<div class="card-header">
<h5>Order Details </h5>
</div>
<div class="card-body">
<div class="btn-popup pull-right">



</div>
<div class="table-responsive">
<!--<div id="basicScenario" class="product-physical"></div>-->
<?php
if($this->session->flashdata('error'))
{
    echo $this->session->flashdata('error');
}
?>

                    <h4>Products</h4>
                    <br/>
<table class="table cart-table table-responsive-xs" style="border: 2px dotted;">
                    <thead>
                    <tr class="table-head">
                      <th>Sno</th>
                        <th scope="col">Image</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">SKU Code</th>
                        <th scope="col">Size</th>
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
                        $sum+=$order->product_price;
                      echo '<tr>
                      <td>'.++$i.'</td>
                      <td><img src="'.base_url('assets/uploads/admin/product/').single_row('tbl_image_upload',['refrence_id'=>$order->ProductImage],'f_name').'" alt="" class="img-fluid img-30 mr-2 blur-up lazyloaded"></td>
                      <td>'.$order->ProductName.'</td>
                      <td>'.$order->ProductSKU.'</td>
                      <td>'.single_row('tbl_productvariation',['varid'=>$order->product_size],'data').'</td>
                      <td>'.$order->product_qty.'</td>
                      <td>'.$order->product_price.'</td>
                      </tr>';
                      }
                      ?>
                      <tr>
                        <td colspan="7" align="right">Total Amount : <i class="fa fa-inr" aria-hidden="true"></i><b><?= number_format($sum);?></b></td>
                      </tr>

                    </tbody>
                  </table>
                    </div>
                    <div class="table-responsive">
  <h4>Shipping Address</h4>
  <br>
<table class="table cart-table table-responsive-xs" style="border: 2px dotted;">
  
            <tbody>
              <tr>
              <td colspan="5" >
                <b><i class="fa fa-address-card" aria-hidden="true"></i>
Shipping Address</b>
<p>&nbsp;</p>
<h3>
<?php
foreach($address as $ad)
{
  echo '<p><b>'.ucwords(strtolower($ad->name)).'</b></p>
  <p><i class="fa fa-mobile" aria-hidden="true"></i>
'.$ad->mobile.'</p>
<p>'.($ad->complete_address).'</p>
';
}
?>
</h3>
              </td>
            </tr>

            </tbody>
                  </table>
                  <h4>Shipping Status</h4>
<br/>
<table class="table cart-table table-responsive-xs" style="border: 2px dotted;">
                    <thead>
                    <tr class="table-head">
                        <th scope="col">Change Status</th>
                        <th scope="col">Current Status</th>
                    </tr>
                     <tr class="table-head">
                       <td><button data-toggle="modal" data-target="#myModal"><span class="badge badge-secondary">Change Status</span></button></td>
                       <td>
                         <?php
                         switch ($ship_status) {
                           case 0:
                             $st = '<span class="badge badge-danger">Pending</span>';
                             break;
                              case 1:
                             $st = '<span class="badge badge-warning">Shipped</span>';
                             break;
                              case 2:
                             $st = '<span class="badge badge-success">Successfully Delivered</span>';
                             break;
                           
                           default:
                             $st='';
                             break;
                         }
                         echo $st;
                         ?>

                       </td>
                    </tr>
                    </thead>
                  </table>
                  <h4>Order Status</h4>
<br/>
<table class="table cart-table table-responsive-xs" style="border: 2px dotted;">
                    <thead>
                    <tr class="table-head">
                        <th scope="col">Change Order Status</th>
                        <th scope="col">Current Order Status</th>
                    </tr>
                     <tr class="table-head">
                       <td><button  data-toggle="modal" data-target="#myModal1"><span class="badge badge-secondary">Change Status</span></button></td>
                       <td>
                         <?php
                         switch ($order_status) {
                           case 0:
                             $st = '<span class="badge badge-danger">Hold</span>';
                             break;
                              case 1:
                             $st = '<span class="badge badge-danger">Pending</span>';
                             break;
                              case 2:
                             $st = '<span class="badge badge-warning">Processing</span>';
                             break;
                              case 3:
                             $st = '<span class="badge badge-success">Complete</span>';
                             break;
                              case 4:
                             $st = '<span class="badge badge-success">Return</span>';
                             break;
                           
                           
                           default:
                             $st='';
                             break;
                         }
                         echo $st;
                         ?>

                       </td>
                    </tr>
                    </thead>
                  </table>
                  
                    </div>


</div>
</div>
</div>
</div>
</div>
</div>
<!-- Container-fluid Ends-->
</div>

<!-- Change Shipping Status-->
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <form method="post" action="<?= base_url('admin/updateshipping-status/'.$this->uri->segment(3));?>">
    <div class="modal-content">
      <div class="modal-header">
                <h4 class="modal-title">Update Shipping Status</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <p><label>Select Status</label>
          <select id="sstatus" name="sstatus" class="form-control" required="">
            <option value="">Select Shipping Status</option>
            <option value="0">Pending</option>
            <option value="1">Shipped</option>
            <option value="2">Delivered</option>
          </select></p>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary" >Submit</button>
      </div>
    </div>
  </form>

  </div>
</div>

<!-- Change Shipping Status-->
<!-- Modal -->
<div id="myModal1" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <form method="post" action="<?= base_url('admin/updateorder-status/'.$this->uri->segment(3));?>">
    <div class="modal-content">
      <div class="modal-header">
                <h4 class="modal-title">Update Order Status</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <p><label>Select Order Status</label>
          <select id="ostatus" name="ostatus" class="form-control" required="">
            <option value="">Select Order Status</option>
            <option value="0">Hold</option>
            <option value="1">Pending</option>
            <option value="2">Processing</option>
            <option value="3">Complete</option>
            <option value="4">Return</option>
          </select></p>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary" >Submit</button>
      </div>
    </div>
  </form>

  </div>
</div>

<?php require_once('inc/footer.php');?>

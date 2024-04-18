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
<h3>Orders
<small>Bigdeal Admin panel</small>
</h3>
</div>
</div>
<div class="col-lg-6">
<ol class="breadcrumb pull-right">
<li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
<li class="breadcrumb-item">Physical</li>
<li class="breadcrumb-item active">Orders</li>
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
<h5>Manage Orders </h5>
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
<table class="display" id="basic-1">
                            <thead>
                            <tr>
                              <th>Sno</th>
                                <th>Order Id</th>
                                <th>Total Product</th>
                                <th>Payment Type</th>
                                <th>Order Status</th>
                                <th>Date</th>
                                <th>Total</th>
                                <th>Order Details</th>
                                <th>Transaction Details</th>
                                <th>Invoice</th>
                            </tr>
                            </thead>
                            <tbody>
                              <?php
                              $html = '';
                              $i=0;
                              foreach($orders as $order)
                              {
                                 $d = date_create($order->order_date);
                              $date = date_format($d , 'd-M-Y');
                                $html.='<tr>
                                <td>'.++$i.'</td>
                                <td>'.$order->custom_order_no.'</td>
                                <td>
                                '.$this->Admin_model->num_rows('tbl_orderdetails',['order_id'=>$order->order_id]).'
                                </td>';
                                if($order->payment_mode==1)
                                {
                                  $html.='<td><span class="badge badge-secondary">COD</span></td>';
                                }
                                else
                                { 
                                $html.='<td><span class="badge badge-success">Online Payments</span></td>';
                                }
                                switch($order->order_status)
                                {
                                    case '0':
                                    $html.='
                                <td><span class="badge badge-danger">Hold</span></td>';
                                break;
                                  case '1':
                                    $html.='
                                <td><span class="badge badge-warning">Pending</span></td>';
                                break;
                                case '2':
                                 $html.='
                                <td><span class="badge badge-secondary">Processing</span></td>';
                                break;
                                 case '3':
                                 $html.='
                                <td><span class="badge badge-success">Delivered</span></td>';
                                break;
                                 case '4':
                                 $html.='
                                <td><span class="badge badge-secondary">Return</span></td>';
                                break;
                                default:
                                 case '4':
                                 $html.='
                                <td><span class="badge badge-secondary">No Status</span></td>';
                                break;
                                }                          
                                
                                $html.='
                                
                                <td>'.$date.'</td>
                                <td><i class="fa fa-inr" aria-hidden="true"></i>'.$order->order_amount.'</td>
                                <td><a href="'.base_url('admin/order-details/').$order->order_id.'" title="Show Order Details" target="_blank"><span class="badge badge-success">Order Details</span></a></td>';
                                if($order->payment_mode==1)
                                {
                                  $html.='<td><span class="badge badge-secondary">COD</span></td>';
                                }
                                else
                                { 
                                $html.='<td><a href="'.base_url('admin/transaction-details/'.$order->custom_order_no).'" title="Show Transaction Details" target="_blank"><span class="badge badge-danger">Transaction Details</span></a></td>';
                                }
                            $html.='
                            <td><a href="'.base_url('admin/invoice/'.$order->custom_order_no).'" target="_blank"><span class="badge badge-secondary">Invoice</span></td>
                            </tr>';
                              }
                              echo $html;
                              ?>
                            
                           
                            </tbody>
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


<?php require_once('inc/footer.php');?>

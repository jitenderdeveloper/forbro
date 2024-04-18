<?php 
require_once('inc/head.php');
require_once('inc/header.php');
if(count($this->cart->contents())<1)
{
    return redirect('user/dashboard');
}
?>
<style type="text/css">
._2RMAtd {
height: 48px;
text-transform: uppercase;
color: #878787;
font-size: 16px;
font-weight: 500;
padding: 14px 24px;
border-radius: 2px 2px 0 0;
}
._1fM65H._2RMAtd {
color: #fff;
background-color: #ff6000;
}
._1fM65H ._1Tmvyj {
background-color: #fff;
position: relative;
top: -2px;
}
._1Tmvyj {
font-size: 12px;
color: #2874f0;
background-color: #f0f0f0;
border-radius: 2px;
padding: 3px 7px;
vertical-align: baseline;
margin-right: 17px;
}
</style>

<!-- breadcrumb start -->
<div class="breadcrumb-main ">
<div class="container">
<div class="row">
<div class="col">
<div class="breadcrumb-contain">
<div>
<h2>checkout</h2>
<ul>
<li><a href="#">home</a></li>
<li><i class="fa fa-angle-double-right"></i></li>
<li><a href="#">checkout</a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- breadcrumb End -->

<!-- section start -->
<section class="section-big-py-space bg-light">

<div class="custom-container">
<div class="checkout-page contact-page">
<div class="checkout-form">




<div class="row">

<div class="col-lg-6 col-sm-12 col-xs-12">

<div class="checkout-title">
<h3>&nbsp;</h3></div>
<h3 class="_1fM65H _2RMAtd"><b>Delivery Address</b></h3><p>&nbsp;</p>
<b>
    <span id="allAddress"></span>
</b>
<br/>
<a href="#" data-toggle="collapse" data-target="#demo"><h3 class="_1fM65H _2RMAtd"><span class="_1Tmvyj">+</span><span class="_1_m52b"><b>Add New Address</b></span></h3></a>


<div id="demo" class="collapse">
<form method="post" action="<?= base_url('user/dashboard/addAddress');?>" id="addAddressForm">
<div class="checkout-title">
<h3>Billing Details</h3></div>
<div class="theme-form">
<span id="addressMsg"></span>
<div class="row check-out ">

<div class="form-group col-md-6 col-sm-6 col-xs-12">
<label>Name</label>
<input type="text" name="name" id="name" value="" placeholder="Name" required="">
</div>
<div class="form-group col-md-6 col-sm-6 col-xs-12">
<label class="field-label">Phone</label>
<input type="text" name="mobile" id="mobile" value="" placeholder="10-digit mobile number" required="">
</div>
<div class="form-group col-md-6 col-sm-6 col-xs-12">
<label class="field-label">Postal Code</label>
<input type="number" name="postal" value="" placeholder="6-digit Postal code" id="postal" onblur="get_location(this.value)" required="">
</div>
<div class="form-group col-md-6 col-sm-6 col-xs-12">
<label class="field-label">Country</label>
<input type="text" name="country" value="" placeholder="Country" id="adcountry" required="">
</div>
<div class="form-group col-md-6 col-sm-6 col-xs-12">
<label class="field-label">State</label>
<input type="text" name="state" value="" placeholder="State" id="adstate" required="">
</div>
<div class="form-group col-md-6 col-sm-6 col-xs-12">
    <label class="field-label">City</label>
<input type="text" name="city" value="" placeholder="City" id="adcity" required="">
</div>


<div class="form-group col-md-12 col-sm-12 col-xs-12">
<label class="field-label">Address</label>
<textarea name="address" id="address" class="form-control" required="" placeholder="Complete address"></textarea>
</div>
<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
<button type="submit" class="btn-normal btn">Add</button>
</div>
</div>
</div>
</div>
</form>

</div>


<!------------------- Check out Form------------->

   
<div class="col-lg-6 col-sm-12 col-xs-12">

    <form method="post" onsubmit="return check()" action="" id="paymentForm">

<div class="checkout-details theme-form  section-big-mt-space">
    <span id="mainMsg"></span>
<div class="order-box">
<div class="title-box">

<div>Product <span>Total</span></div>
</div>
<ul class="qty">
    <?php
    $total = 0;
    foreach($this->cart->contents() as $cart)
    {
        $total+=$cart['price']*$cart['qty'];
        $pname = single_row('tbl_products',['ProductID'=>$cart['id']],'ProductName');
    echo '<li>'.$pname.' × '.$cart['qty'].' <span><i class="fa fa-inr" aria-hidden="true"></i>'.number_format($cart['price']*$cart['qty']).'</span></li>';
}
?>

</ul>
<ul class="sub-total">
<li>Subtotal <span class="count"><i class="fa fa-inr" aria-hidden="true"></i><?= number_format($total);?></span></li>
<li>Shipping
<div class="shipping">
<div class="shopping-option">
    <!--<input type="checkbox" name="free-shipping" id="free-shipping">-->
    <label for="free-shipping">
<?php
if($total<900)
{
$ship_charge = 60;
 echo '<i class="fa fa-inr" aria-hidden="true"></i>'.$ship_charge;   
}
else
{
    $ship_charge = 0;
echo 'Free Shipping';
}
?>
</label>
</div>

</div>
</li>
</ul>
<ul class="total">
<li>Total <span class="count"><i class="fa fa-inr" aria-hidden="true"></i><?= number_format($total+$ship_charge);?></span></li>
</ul>
</div>
<div class="payment-box">
<div class="upper-box">
<div class="payment-options">
<ul>
<li>
    <div class="radio-option">
        <input type="radio" name="payment_mode" id="payment-2" value="0" required="" title="Please select payment mode" class="payment_mode">
        <label for="payment-2">Cash On Delivery<span class="small-text">Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</span></label>
    </div>
</li>
<li>
    <div class="radio-option paypal">
        <input type="radio" name="payment_mode" id="payment-3" value="1" required="" title="Please select payment mode" class="payment_mode">
        <label for="payment-3">Debit Card/Credit Card/UPI/Paytm Wallet<span class="image"><img src="assets/images/paypal.png" alt=""></span></label>
    </div>
</li>
</ul>
</div>
</div>

<!------------ ALl hidden form value----->
  <input type="hidden" name="address_id" id="address_id" >
  <input type="hidden" name="total_amount" id="total_amount" value="<?= $total;?>" required="">
<div class="text-right">
<button type="submit" class="btn-normal btn">Place Order</button>
</div>
</div>
</div>
</form>
</div>

</div>
</div>

</div>
</div>
</div>
</section>
<!-- section end -->

<?php require_once('inc/footer.php');?>

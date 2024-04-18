<style type="text/css">
    .invoice-title h2, .invoice-title h3 {
    display: inline-block;
}

.table > tbody > tr > .no-line {
    border-top: none;
}

.table > thead > tr > .no-line {
    border-bottom: none;
}

.table > tbody > tr > .thick-line {
    border-top: 2px solid;
}

</style>
<title>Vihu-Admin Invoice</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">


<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row">
        <div class="col-xs-2">&nbsp;</div>
        <div class="col-xs-8" >
    		<div class="invoice-title">
    			<h2>Invoice</h2><h3 class="pull-right">Order # <?= $order_no;?></h3>
    		</div>
    		<hr>
            <div class="row">
                <div class="col-xs-12">
                    <center>
                   <h1><b>Vihu Store</b></h1>
                   <p>Plot No. 6/90, Khayati Villa, Near Khaitan Public school Rajendra Nagar, Sahibabad, Uttar Pradesh 201005</p>
               </center>
                </div>
            </div>
            <br>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    				<strong>Billed To:</strong><br>
                    <?php
                    foreach($bill_to as $bill)
                    {
                     echo ucwords($bill->name)."<br/>$bill->mobile</br>$bill->email";
                    }
                    ?>
    					
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
        			<strong>Shipped To:</strong><br>
                    <?php
                    foreach($address as $ad)
                    {
                        $ad1 = ucwords($ad->address);
                        echo ucwords($ad->name)."<br/>$ad->mobile<br/>$ad1<br/>$ad->city,$ad->state<br/>$ad->country-$ad->pincode";
                    }
                    ?>
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong>From:</strong><br>
                        Pious I Services Private Limited<br>
                        Plot No. 6/90, Khayati Villa<br>
                        Rajendra Nagar Sector 2, Ghaziabad - 201005

    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong>Order Date:</strong><br>
    					<?= $order_date;?><br><br>
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    <br/>
    
    <div class="row">
        <div class="col-md-2">&nbsp;</div>
    	<div class="col-md-8">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong>Item</strong></td>
                                    <td class="text-center"><strong>Size</strong></td>
        							<td class="text-center"><strong>Price</strong></td>
        							<td class="text-center"><strong>Quantity</strong></td>
        							<td class="text-right"><strong>Totals</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							 <?php
                                 $subtotal = 0;
                                 foreach($orders as $ord)
                                 {
                    
                                    $subtotal+=$ord->product_price*$ord->product_qty;
                                echo '<tr>
        							<td>'.single_row('tbl_products',['ProductID'=>$ord->product_id],'ProductName').'<br/><center>'.$ord->ProductSKU.'</center></td>
                                    <td>'.single_row('tbl_productvariation',['varid'=>$ord->product_size],'data').'</td>
    								<td class="text-center">'.$ord->product_price.'.00</td>
    								<td class="text-center">'.$ord->product_qty.'</td>
    								<td class="text-right">'.$ord->product_price*$ord->product_qty.'.00</td>
    							</tr>';
                               
                            }
                                ?>
                               
    							<tr>
    								<td class="thick-line"></td>
                                    <td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line text-center"><strong>Subtotal</strong></td>
    								<td class="thick-line text-right"><?= $subtotal.'.00';?></td>
    							</tr>
    							<tr>

    								<td class="no-line"></td>
                                    <td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Shipping</strong></td>
    								<td class="no-line text-right">
                                     <?php
                                     if($subtotal<899)
                                     {
                                        $shipping = 60;
                                     }  
                                     else
                                     {
                                        $shipping = 0;
                                     }
                                     echo $shipping;
                                     ?>

                                    </td>
    							</tr>
    							<tr>
                                    <td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Total</strong></td>
    								<td class="no-line text-right"><?= $shipping+$subtotal.'.00';?></td>
    							</tr>
    						</tbody>
    					</table>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
</div>
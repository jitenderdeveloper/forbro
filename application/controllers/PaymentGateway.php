<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * 
 */
class PaymentGateway extends CI_Controller
{
	
    public function __construct()
	{
		parent::__construct();
		if(!$this->session->userdata('userSess'))
		{
			return redirect('/');
		}
	}
public function online_payment()
{
$user_id = $this->session->userdata['userSess']['id'];
 $payment_mode = $this->input->post('payment_mode');
 $amount = $this->cart->total();
 if($amount<899)
 {
$total_amount = intval($amount+60);
 }else
 {
   $total_amount = intval($amount);
 }
 $address = $this->input->post('address_id');
	 $this->form_validation->set_rules('payment_mode', 'Payment Mode', 'trim|required');
 $this->form_validation->set_rules('total_amount', 'Total Amount', 'trim|required|numeric');
 $this->form_validation->set_rules('address_id', 'Address', 'trim|required|numeric');
	//$this->form_validation->set_rules('mode','Payment Gateway','required');
	if($this->form_validation->run()==TRUE)
	{
     header("Pragma: no-cache");
header("Cache-Control: no-cache");
header("Expires: 0");
// following files need to be included

require_once APPPATH.'third_party/paytm/lib/config_paytm.php';
require_once APPPATH.'third_party/paytm/lib/encdec_paytm.php';

$checkSum = "";
$paramList = array();
$ORDER_ID = rand(floatval(10000000),floatval(99999999)).rand(floatval(10000000),floatval(99999999)); 
$CUST_ID = $user_id;
$INDUSTRY_TYPE_ID = 'Retail';
$CHANNEL_ID = 'WEB';
$TXN_AMOUNT = intval($total_amount);
$paramList["MID"] = PAYTM_MERCHANT_MID;
$paramList["ORDER_ID"] = $ORDER_ID;
$paramList["CUST_ID"] = $CUST_ID;
$paramList["INDUSTRY_TYPE_ID"] = $INDUSTRY_TYPE_ID;
$paramList["CHANNEL_ID"] = $CHANNEL_ID;
$paramList["TXN_AMOUNT"] = $TXN_AMOUNT;
$paramList["WEBSITE"] = PAYTM_MERCHANT_WEBSITE;
$paramList["CALLBACK_URL"] = base_url('user/dashboard/response'); 
$paramList['MERC_UNQ_REF'] = $address;
$checkSum = getChecksumFromArray($paramList,PAYTM_MERCHANT_KEY);
$this->load->view('test',compact('checkSum','paramList'));
   }  
else
{
    $this->session->set_flashdata('error','<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'.str_replace(array('<p>','</p>'),'',validation_errors()).'
  </div>');
    return redirect('user/dashboard/check-out');
	}

}

//paytm payment gateway response and then add credit
public function response()
{
header("Pragma: no-cache");
header("Cache-Control: no-cache");
header("Expires: 0");
require_once APPPATH.'third_party/paytm/lib/config_paytm.php';
require_once APPPATH.'third_party/paytm/lib/encdec_paytm.php';
$user_id = $this->session->userdata['userSess']['id'];
$paytmChecksum = "";
$paramList = array();
$isValidChecksum = "FALSE";

$paramList = $_POST;
$paytmChecksum = isset($_POST["CHECKSUMHASH"]) ? $_POST["CHECKSUMHASH"] : "";
$isValidChecksum = verifychecksum_e($paramList, PAYTM_MERCHANT_KEY, $paytmChecksum);
if($isValidChecksum == "TRUE") {
	//echo "<b>Checksum matched and following are the transaction details:</b>" . "<br/>";
	if ($_POST["STATUS"] == "TXN_SUCCESS") {
		
  $data = [
  'order_user_id' => $user_id,
  'custom_order_no' => $_POST['ORDERID'],
  'address_id' => $_POST['MERC_UNQ_REF'],
  'order_amount' => $_POST['TXNAMOUNT'],
  'payment_mode'=>2,
  'order_date' => date('Y-m-d h:i:s'),
  'order_tracking_number'=> 'VIHU'.rand(floatval(10000000),floatval(99999999)).rand(floatval(10000000),floatval(99999999))
  ];	
  if($this->Main_model->insert('tbl_orders',$data))
  {
  	  $insert_id = $this->db->insert_id();
  	  $trans = array(
  	  	'order_id' => $insert_id,
 'order_no'=>$_POST['ORDERID'],
 'user_id'=>$user_id,
 'amount'=>$_POST['TXNAMOUNT'],
 'txn_id'=>$_POST['TXNID'],
 'payment_mode'=>$_POST['PAYMENTMODE'],
 'txn_status'=>$_POST['STATUS'],
 'currency'=>$_POST['CURRENCY'],
 'txn_date'=>$_POST['TXNDATE'],
 'gateway_name'=>(isset($_POST['GATEWAYNAME']))?$_POST['GATEWAYNAME']:'',
 'bank_id'=>(isset($_POST['BANKTXNID']))?$_POST['BANKTXNID']:'',
 'bank_name'=>(isset($_POST['BANKNAME']))?$_POST['BANKNAME']:'',
 'checkSum'=>$_POST['CHECKSUMHASH']
    );
  	  foreach($this->cart->contents() as $cart)
 	{
 	
 		$sub = array();
     $stock = array();
 	$sub = array('order_id'=> $insert_id , 'product_id'=> $cart['id'] , 'product_name'=>$cart['name'] , 'product_price'=>$cart['price'] , 'product_qty'=>$cart['qty'] ,'product_size'=>$cart['options']['Size'] , 'product_color'=>$cart['options']['Color']);
    $stock = array('user_id'=>$user_id,'product_id'=> $cart['id'] , 'in_qty'=>0,'out_qty'=>$cart['qty']);//stock array
 		//$id_arr = array($cart['id']);
 		$arr1[] = $cart['id'];
 		$arr[] = $sub;
    $stock_arr[] = $stock;
     $this->Main_model->delete('tbl_wishlist',['product_id'=>$cart['id'] ,'user_id'=>$user_id]);

 	}
   if($this->db->insert_batch('tbl_orderdetails',$arr))
   {
    $this->db->insert_batch('tbl_stock',$stock_arr);//insert stock
   	$this->load->library('mail');
   	$email = $this->session->userdata['userSess']['email'];
   	$name = $this->session->userdata['userSess']['name'];
   	$msg = ' <h2>thank you</h2>
                    <p>Your order successfully placed....</p>
                    <p>Order Id :'.$_POST['ORDERID'].'</p>
                    <p>Total Amount :INR'.$_POST['TXNAMOUNT'].'</p>';
   	$ids_exp = implode(',',$arr1);
   	$this->db->where_in('product_id',$ids_exp)->where('user_id',$user_id)->delete('tbl_usercart');
   	$this->cart->destroy();
   	$msg1 = $this->load->view('email-temp/comman' , compact('msg') ,true);
   	$this->mail->send_mail(trim($email),'Vihu-Order-Success', $msg1 , $name);//send email
   	$this->Main_model->insert('tbl_transaction',$trans);
    $this->session->set_flashdata('order_id', $_POST['ORDERID']);
   	return redirect('user/dashboard/payment-success');
   }	
	}
}
	else
	 {
      	
	 	$this->session->set_flashdata('order_id',$_POST['ORDERID']);
		return redirect('user/dashboard/payment-failure');
	 }
	

}
else 
{
	//echo "<b>Checksum mismatched.</b>";
	$this->session->set_flashdata('order_id',$_POST['ORDERID']);
		return redirect('user/dashboard/payment-failure');
}
}
}
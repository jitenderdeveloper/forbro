<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * 
 */
class UserAccountAjax extends CI_Controller
{
		
	public function __construct()
	{
		parent::__construct();
		if(!$this->session->userdata('userSess'))
		{
			return redirect('/');
		}
	}
	public function add_address()
	{
		$name = $this->input->post('name');
		$mobile = $this->input->post('mobile');
		$postal = $this->input->post('postal');
		$country = $this->input->post('country');
		$state = $this->input->post('state');
		$city = $this->input->post('city');
		$address = $this->input->post('address');
		$this->form_validation->set_rules('name', 'name', 'trim|required');
		$this->form_validation->set_rules('mobile', 'Mobile', 'trim|required|min_length[10]|max_length[10]|numeric');
		$this->form_validation->set_rules('postal', 'Postal Code', 'trim|required|min_length[6]|max_length[6]|numeric');
		$this->form_validation->set_rules('country', 'Country', 'trim|required');
		$this->form_validation->set_rules('state', 'State', 'trim|required');
		$this->form_validation->set_rules('city', 'City', 'trim|required');
		$this->form_validation->set_rules('address', 'Address', 'trim|required');
		if ($this->form_validation->run() == TRUE ) {
			$user_id = $this->session->userdata['userSess']['id'];
			$data = [
             'user_id'=>$user_id,
             'name'=>$name,
             'mobile'=>$mobile,
             'pincode'=>$postal,
             'country'=>$country,
             'state'=>$state,
             'city'=>$city,
             'address'=>$address,
             'complete_address'=>ucwords($address).','.$city.','.$state.' - '.$postal
			];
			if($this->Main_model->insert('tbl_address',$data))
			{
				$arr['SUCCESS'] = 'OK';
			}
			
		} else {
			 $arr['ERROR'] = 'ERROR';
             $arr['MSG'] =  validation_errors();
		}
		echo json_encode($arr);
	}
	//Get loccation by zip code
	public function get_location()
   {
$zip = $this->input->post('zip');
if(isset($zip))
{
$url = "http://www.postalpincode.in/api/pincode/$zip";
$c = curl_init();
curl_setopt($c, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($c, CURLOPT_URL, $url);
$contents = curl_exec($c);
curl_close($c);
$result = json_decode($contents, true);
$arr = array('district'=>strtoupper($result['PostOffice'][0]['District']) ,'state'=>strtoupper($result['PostOffice'][0]['State']) ,'country'=>$result['PostOffice'][0]['Country']);
$a = json_encode($arr);
echo $a;
}
}

/*=================== Cash On Delivery Payment==============*/
public function cash_payment($value='')
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
 if ($this->form_validation->run() == TRUE && $total_amount>0) 
 {
  $order_id = rand(floatval(10000000),floatval(99999999)).rand(floatval(10000000),floatval(99999999));
  $data = [
  'order_user_id' => $user_id,
  'custom_order_no' => $order_id,
  'address_id' => $address,
  'order_amount' => $total_amount,
  'payment_mode'=>1,
  'order_date' => date('Y-m-d h:i:s'),
  'order_tracking_number'=> 'VIHU'.rand(floatval(10000000),floatval(99999999)).rand(floatval(10000000),floatval(99999999))

  ];	
  if($this->Main_model->insert('tbl_orders',$data))
  {
  	  $insert_id = $this->db->insert_id();
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
   	$this->load->library('sms');	
   	$email = $this->session->userdata['userSess']['email'];
   	$name = $this->session->userdata['userSess']['name'];
   	$msg = ' <h2>thank you</h2>
                    <p>Your order successfully placed....</p>
                    <p>Order Id :'.$order_id.'</p>
                    <p>Total Amount :INR'.$total_amount.'</p>';
   	$ids_exp = implode(',',$arr1);
   	$this->db->where_in('product_id',$ids_exp)->where('user_id',$user_id)->delete('tbl_usercart');
   	$this->cart->destroy();
   	$this->session->set_flashdata('order_id', $order_id);
   	$msg1 = $this->load->view('email-temp/comman' , compact('msg') ,true);
   	$this->mail->send_mail(trim($email),'Vihu-Order-Success', $msg1 , $name);//send email

   	return redirect('user/dashboard/payment-success');
   }	
  }
 	
 } 
 else 
 {
 	$this->session->set_flashdata('error', '<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><strong>Error!</strong> '.validation_errors().'</div>');
 	return redirect('user/dashboard/check-out');
 }

}

/*=================== Add to wish list============ */
 public function addto_wishlist()
 {
  $user_id = $this->session->userdata['userSess']['id'];
  $pid1 = $this->input->post('pid');
  if(isset($pid1))
  {
     $pid = single_row('tbl_products',['hexa_id'=>$pid1],'ProductID');
    if($this->Main_model->num_rows('tbl_wishlist',['product_id'=>$pid , 'user_id'=>$user_id])>0)
    {
      $arr['SUCCESS'] = 'ERROR';
    }
    else
    {
     $img = $this->input->post('img');
     $pname = single_row('tbl_products',['ProductID'=>$pid],'ProductName');
     $price = single_row('tbl_products',['ProductID'=>$pid],'Productsaleprice');
    
      $data = [
        'user_id' => $user_id,
      'product_id'      => $pid,
      'image_path'     => $img,
      'pprice'   => $price,
       'pname'    => $pname
     ];  
    if($this->Main_model->insert('tbl_wishlist',$data))
    {
        $user_id = $this->session->userdata['userSess']['id'];
        $this->Main_model->insert('tbl_usercart',['user_id'=>$user_id ,'product_id'=>$pid ,'color'=>'' ,'size'=>'' , 'qty'=>1]);
        $arr['SUCCESS'] = 'OK';
    }
    else
    {
        $arr['SUCCESS'] = 'ERROR';
    }
   }
     echo json_encode($arr);
     exit();
  }
}
//count total item in wishlist
public function total_item_wishlist()
{
  $type = $this->input->post('type');
  if($type=='total_item_wishlist')
  {
    $user_id = $this->session->userdata['userSess']['id'];
    $arr['total'] = $this->Main_model->num_rows('tbl_wishlist',['user_id'=>$user_id]);
  }
  echo json_encode($arr);
}
//fetch wishlist item right sidebar
public function fetchwishlist_alldata()
 {
  $val = $this->input->post('all');
  $user_id = $this->session->userdata['userSess']['id'];
  if(isset($val) && $val=='all')
  {
   $data = $this->Main_model->fetch_data_by_limit('tbl_wishlist',['user_id'=>$user_id],'updated_at DESC',0,5);
   $html = '';
   foreach($data as $d)
   {
    $html.='<li>
          <div class="media">
            <a href="'.base_url('product-detail/'.url_title($d['pname'],'-',true).'/'.$d['product_id']).'" target="_blank">
              <img alt="" class="mr-3" src="'.base_url('assets/uploads/admin/product/').$d['image_path'].'">
            </a>
            <div class="media-body">
              <a href="#">
                <h4>'.$d['pname'].'</h4>
              </a>
             
              <h4>
                <span><i class="fa fa-inr" aria-hidden="true"></i> '.number_format($d['pprice']).'</span>
              </h4>
            </div>
          </div>
         
        </li>';
   }
   $html.='<li>
          <div class="buttons">
            <a href="'.base_url('user/dashboard/wishlist').'" class="btn btn-normal btn-block  view-cart">view wislist</a>
          </div>
        </li>';
        $arr['item'] = $html;

  echo json_encode($arr);
  }
}
//user account change password
public function change_password($value='')
{
   $user_id = $this->session->userdata['userSess']['id'];
    $opass = $this->input->post('opass');
    $npass = $this->input->post('password');
    $cpass = $this->input->post('cpass');
    $this->form_validation->set_rules('opass','Old Password','required');
    $this->form_validation->set_rules('password','New Password','required');
    $this->form_validation->set_rules('cpass','Confirm Password','required|matches[password]');
    if($this->form_validation->run()==TRUE)
    {
      $b = $this->Main_model->num_rows('tbl_registration',['password'=>md5($opass) , 'id'=>$user_id]);
      if($b>0)
      {
         $this->Main_model->update('tbl_registration',['id'=>$user_id],['password'=>md5($npass)]);
         $arr['SUCCESS'] = 'OK'; 
      }
      else
      {
         $arr['ERROR'] = 'ERROR';
         $arr['MSG'] = 'Old password wrong!';
      }
      }
      else
      {
        $arr['ERROR'] = 'ERROR';
         $arr['MSG'] = validation_errors();
      }
      echo json_encode($arr);
 }
 //get user single address
 public function get_one_address()
 {
   $id = $this->input->post('id');
   if(isset($id))
   {
    $data = $this->Main_model->fetch_data('tbl_address',['id'=>$id],'');
    $arr = [
    'id' => $data[0]['id'],
    'name' => $data[0]['name'],
    'mobile' => $data[0]['mobile'],
    'pincode' => $data[0]['pincode'],
    'country' => $data[0]['country'],
    'state' => $data[0]['state'],
    'city' => $data[0]['city'],
    'address' => $data[0]['address'],

    ];
    echo json_encode($arr);
    exit();
   }
 }
 //update address
 public function edit_address($id)
  {
    $name = $this->input->post('name');
    $mobile = $this->input->post('mobile');
    $postal = $this->input->post('postal');
    $country = $this->input->post('country');
    $state = $this->input->post('state');
    $city = $this->input->post('city');
    $address = $this->input->post('address');
    $this->form_validation->set_rules('name', 'name', 'trim|required');
    $this->form_validation->set_rules('mobile', 'Mobile', 'trim|required|min_length[10]|max_length[10]|numeric');
    $this->form_validation->set_rules('postal', 'Postal Code', 'trim|required|min_length[6]|max_length[6]|numeric');
    $this->form_validation->set_rules('country', 'Country', 'trim|required');
    $this->form_validation->set_rules('state', 'State', 'trim|required');
    $this->form_validation->set_rules('city', 'City', 'trim|required');
    $this->form_validation->set_rules('address', 'Address', 'trim|required');
    if ($this->form_validation->run() == TRUE ) {
      $user_id = $this->session->userdata['userSess']['id'];
      $data = [
             'name'=>$name,
             'mobile'=>$mobile,
             'pincode'=>$postal,
             'country'=>$country,
             'state'=>$state,
             'city'=>$city,
             'address'=>$address,
             'complete_address'=>ucwords($address).','.$city.','.$state.' - '.$postal
      ];
      if($this->Main_model->update('tbl_address', ['id'=>$id] ,$data))
      {
        $arr['SUCCESS'] = 'OK';
      }
      
    } else {
       $arr['ERROR'] = 'ERROR';
      $arr['MSG'] =  validation_errors();
    }
    echo json_encode($arr);
  }
}
<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class FrontAjax extends CI_Controller
{
    public function __construct($value='')
    {
        parent::__construct();
    }
 public function quick_view_get()
 {
 	$pid = $this->input->post('id');
 	if(isset($pid))
 	{
 	  $ref = single_row('tbl_products',['ProductID'=>$pid],'ProductImage');
 	  $img = single_row('tbl_image_upload',['refrence_id'=>$ref],'f_name');
 	  $data = $this->Main_model->fetch_data('tbl_products',['ProductID'=>$pid],'');
 	  $arr['img'] = base_url('assets/uploads/admin/product/'.$img);
 	  $arr['pname'] = $data[0]['ProductName'];
 	  $arr['pprice'] = $data[0]['ProductPrice'];
 	  $arr['pdescription'] = $data[0]['ProductShortDesc'];
 	  $arr['link'] = base_url('product-detail/'.url_title($data[0]['ProductName'],'-',true).'/'.urlencode(base64_encode($data[0]['ProductImage'])).'/'.$data[0]['ProductID']);
 	  echo json_encode($arr);
 	  exit();
 	}
 }
 /*=============== Add To Cart Start==============*/
 public function addto_cart()
 {
 	$pid1 = $this->input->post('pid');
  $size = $this->input->post('size');
  $color = $this->input->post('color');
 	if(isset($pid1))
 	{
   $pid = single_row('tbl_products',['hexa_id'=>trim($pid1)],'ProductID');
 	 $sku = single_row('tbl_products',['ProductID'=>$pid],'ProductSKU');
 	 $price = single_row('tbl_products',['ProductID'=>$pid],'Productsaleprice');
   $qty = $this->input->post('qty');
   $cart_data = $this->cart->contents();
   $i=0;
   foreach($cart_data as $cart)
   {
    if($cart['id']==$pid && $cart['options']['Size']==$size)
    {
     ++$i;
    }else { --$i; }
   }
      $data = [
      'id'      => $pid,
      'qty'     => intval($qty),
      'price'   => $price,
      'name'    => $sku,
      'options' => array('Size' => $size??'', 'Color' => $color??'')
      ];
 	 if(!$this->session->userdata('userSess'))
 	 {
 	
    if($price>0 && $i<1)
    {
      $this->cart->insert($data);
    	$arr['SUCCESS'] = 'OK';
    }
    else
    {
    	$arr['SUCCESS'] = 'ERROR';
    }
     
 	 }
 	 else//when user login add to cart
 	 {
    if($price>0 && $i<1)
    {
      $this->cart->insert($data);
        $user_id = $this->session->userdata['userSess']['id'];
        $this->Main_model->insert('tbl_usercart',['user_id'=>$user_id ,'product_id'=>$pid ,'color'=>$color ,'size'=>$size , 'qty'=>$qty]);
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
 /*================ Fetch Cart Total=============*/
 public function fetchcart_data()
 {
 	$val = $this->input->post('cart_total');
 	if(isset($val) && $val=='total')
 	{
 	if(!$this->session->userdata('userSess'))
 	 {
 	 	$arr['total'] = count($this->cart->contents());	
 	 	
 	 }
 	 else
 	 {
     
      $arr['total'] = count($this->cart->contents());
 	 }
     echo json_encode($arr);
     exit();
 	}
 }
 public function fetchcart_alldata()
 {
 	$val = $this->input->post('all');
 	if(isset($val) && $val=='all')
 	{
 	if(!$this->session->userdata('userSess'))
 	 {
 	 	foreach($this->cart->contents() as $con)
 	 	{
 	 		$sub = array();
 	 	}
 	 }
 	 else
 	 {

 	 }
 }
}
//Delete Cart Data
public function deletecart_data()
{
 	$val = $this->input->post('delete');
 	$rowid = $this->input->post('rowid');
 	if(isset($rowid) && $val=='delete')
 	{
 	if(!$this->session->userdata('userSess'))
 	 {
 	 	if($this->cart->remove($rowid))
 	 	{
 	 		$arr['SUCCESS'] ='OK';
 	 	}
 	 	else
 	 	{
 	 		$arr["SUCCESS"] = 'ERROR';
 	 	}
 	 }
 	 else
 	 {
        if($this->cart->remove($rowid))
        {
            $arr['SUCCESS'] ='OK';
        }
        else
        {
            $arr["SUCCESS"] = 'ERROR';
        }
 	 }
 	 echo json_encode($arr);
 }
}
//Update Cart Data
public function updatecart_data()
{
	$val = $this->input->post('type');
 	$rowid = $this->input->post('rowid');
 	$qty = $this->input->post('qty');
 	if(isset($rowid) && $val=='update_cart')
 	{

 	if(!$this->session->userdata('userSess'))
 	 {
 	 	$data = array(
        'rowid' => $rowid,
        'qty'   => $qty
          );
 	 	if($this->cart->update($data))
 	 	{
 	 		$arr['SUCCESS'] ='OK';
 	 	}
 	 	else
 	 	{
 	 		$arr["SUCCESS"] = 'ERROR';
 	 	}
 	 }
 	 else
 	 {
     $data = array(
        'rowid' => $rowid,
        'qty'   => $qty
          );
        if($this->cart->update($data))
        {
           // $user_id = $this->session->userdata['userSess']['id'];
            //$this->Main_model->update('tbl_usercart',['user_id'=>$user_id])
            $arr['SUCCESS'] ='OK';
        }
        else
        {
            $arr["SUCCESS"] = 'ERROR';
        }
 	 }
 	 echo json_encode($arr);
 }
}
 /*========================= Cart Logic End================*/

 //send otp
public function send_otp()
{
$this->load->library('sms');	
$mobile = $this->input->post('mobile');
if(isset($mobile))
{
$number = rand(10000,99999);	
 $a = json_decode($this->sms->transactional_sms('MFBOSS',trim($mobile),'MOBILEOTP',trim($number),'','','',''),true);
if($a['Status']=='Success')
{
   $this->session->set_tempdata('otp_session',$number, 300);//for 5 minute 1m=60 second
	echo 1;
}
else
{
	echo 0;
}
}
}
//verify otp
public function verify_otp()
{
$this->load->library('sms');	
$val = $this->input->post('val');
$session_id = $this->session->userdata('sms_otp');
if(isset($val))
{
$otp_val = $this->session->tempdata('otp_session');
if(isset($otp_val))
{
if(trim($val)==trim($otp_val))
{
echo 1;
}
else
{
	echo 'Please Enter Valid OTP';
}
}
else
{
	echo 'OTP Expire';
}
}
}
//User Registration action
public function user_register($value='')
{
 $name = $this->input->post('name');
 $mobile = $this->input->post('mobile');
 $otp = $this->input->post('otp');
 $email = $this->input->post('email');
 $password = $this->input->post('password');	
 $this->form_validation->set_rules('name', 'name', 'trim|required');
 $this->form_validation->set_rules('mobile', 'Mobile', 'trim|required|min_length[10]|max_length[10]|numeric|is_unique[tbl_registration.mobile]');
 $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[tbl_registration.email]');
 $this->form_validation->set_rules('password', 'Password', 'required');
$this->form_validation->set_rules('cpassword', 'Confirm Password', 'required|matches[password]');
if ($this->form_validation->run() == TRUE or FALSE) {
	$otp_val = $this->session->tempdata('otp_session');
	if($otp_val==$otp)
	{
     $data = [
     'email'=>trim($email),
     'mobile'=>trim($mobile),
     'name'=>trim($name),
     'password'=>md5($password),
     'mobile_verify'=>1,
     'token1'=>trim(md5($email)),
     'token2'=>trim(sha1($email))
     ];
     if($this->Main_model->insert('tbl_registration',$data))
     {
     	$link = base_url('verify-email?type=account-verify&token1='.md5($email).'&token2='.sha1($email));
     	$msg = '<h2>Vihu Store Verify Account Link</h2><br/>'.$link.'';
     	$this->load->library('mail');
     	$this->mail->send_mail(trim($email),'Vihu-Store Verify Email',$msg , trim($name));
     	$arr['SUCCESS'] = 'OK';
     }
	}
	else
	{
	$arr['ERROR'] = 'ERROR';
	$arr['MSG'] =  'Enter valid otp';
	}
	
} else {
	$arr['ERROR'] = 'ERROR';
	$arr['MSG'] =  validation_errors();
}
echo json_encode($arr);
	
}

//Login User
public function verify_login()
{
  $email = $this->input->post('email');
  $password = $this->input->post('password');
  $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
 $this->form_validation->set_rules('password', 'Password', 'required');
 if ($this->form_validation->run() == TRUE) {
   $check  = $this->Main_model->num_rows('tbl_registration',['email'=>trim($email)]);

   if($check>0)
   {
    $data = $this->Main_model->fetch_data('tbl_registration',['email'=>trim($email)] ,'');
    if($data[0]['email_verify']==1)
    {
        if($data[0]['password']==md5($password))
        {
          $array = array(
                'userSess' => $data[0]
            );         
            $this->session->set_userdata( $array );
            if(count($this->cart->contents())>0)
            {
               $arr['SUCCESS'] = 'OK1';  
            }else
            {
            $arr['SUCCESS'] = 'OK';  
          }
        }else{
            $arr['ERROR'] = 'ERROR';
    $arr['MSG'] =  'Password incorrect!';
    }
        }
    else{
          $arr['ERROR'] = 'ERROR';
    $arr['MSG'] =  'Please first verify email & after than login';
    }

   }else{
     $arr['ERROR'] = 'ERROR';
    $arr['MSG'] =  'Email id incorrect!';
   }
 } else {
     $arr['ERROR'] = 'ERROR';
    $arr['MSG'] =  validation_errors();
 }
 echo json_encode($arr);
 exit();
}

/*=================== Search Get Data===============*/
function compareOrder($a, $b)
{
  return $a['order'] - $b['order'];
}
public function search_data()
{
  $val = $this->input->get('term');
  if(isset($val))
  {
    $category = $this->Main_model->category(trim($val));
    $pname = $this->Main_model->pname(trim($val));
    $keyword = array_merge($category,$pname);
    $arr = array();
    if(count($keyword)>0)
    {
      foreach($keyword as $key)
      {
       
        $arr[] = $key->ProductName??'';
        //$arr[] = $key->CategoryName??'';
          
      }
      echo json_encode($arr);
    }
    
  }
}

/*================ Verify Email============= */
public function verify_email()
{
 $token1 = $this->input->get('token1');
 $token2 = $this->input->get('token2');
 $type = $this->input->get('type');
 if(isset($token1) && isset($token2) && $type=='account-verify')
 {
    if($this->Main_model->update('tbl_registration',['token1'=>trim($token1) , 'token2'=>trim($token2)] , ['email_verify'=>1]))
    {
      return redirect('email-verified');
    }
 }
 else
 {
  return redirect('/');
 }
}
/*================= Forget Password Action============= */
public function forget_password()
{
      $this->load->library('mail');
      $base_url = base_url();
    $email= trim($this->input->post('email'));
    $this->form_validation->set_rules('email','Email','trim|required|valid_email');
    if($this->form_validation->run()==FALSE)
    {
      // invalid login
      $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible" style="border:2px solid #721C24; color:red; font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-times-circle-o" aria-hidden="true"></i>
</strong> <b>'.validation_errors().'</b>
  </div>');
      return redirect('forget-pwd');
    }
    else
    {
    if($this->Main_model->num_rows('tbl_registration',['email'=>$email])>0)
    {
      $verilink=base_url('new-password?type=password-reset&token1='.md5($email).'&token2='.sha1($email));
      $msg = '<h2>Vihu Store Password Reset Link</h2><br/>'.$verilink.'';
      if($this->mail->send_mail($email,'Vihu-Forget-Password', $msg , '')==1)
      {
        $this->Main_model->update('tbl_registration',['email'=>$email],['is_pwd_change'=>1]);
      // invalid login
      $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible" style="font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-check-circle" aria-hidden="true"></i>
</strong> <b>Password link has been send to your register email id.</b>
  </div>');
      return redirect('forget-pwd');
      }     
    }
    else
    {
      // invalid login
      $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible" style="border:2px solid #721C24; color:red; font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-times-circle-o" aria-hidden="true"></i>
</strong> <b>Email id not exist</b>
  </div>');
      return redirect('forget-pwd');
    }
}
}
/*=============== Password change Action============*/
public function update_password($token1 , $token2)
{
  if(isset($token1) && isset($token2))
  {
    $this->form_validation->set_rules('password', 'password', 'trim|required');
     $this->form_validation->set_rules('cpassword','confirm password','trim|required|matches[password]');
    if ($this->form_validation->run() == FALSE)
    {
     // invalid login
      $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible" style="border:2px solid #721C24; color:red; font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-times-circle-o" aria-hidden="true"></i>
</strong> <b>'.validation_errors().'
  </b></div>');
      return redirect("new-password?type=password-reset&token1=$token1&token2=$token2");
    }
    else
    {
    $npass=$this->input->post('password');
    $data = array('password' => md5($npass));
    if($this->Main_model->update('tbl_registration',['token1'=>trim($token1) , 'token2'=>trim($token2)] ,$data))//update password
    {
     $this->Main_model->update('tbl_registration',['token1'=>trim($token1) , 'token2'=>trim($token2)],['is_pwd_change'=>0]);//reset link expire
     $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible" style="font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-check-circle" aria-hidden="true"></i>
  </strong> <b>Password changed successfully....</b>
  </div>');
      return redirect('forget-pwd');
    }
    else
      {
   $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible" style="border:2px solid #721C24; color:red; font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-times-circle-o" aria-hidden="true"></i>
</strong> <b>Something wrong
  </b></div>');
    return redirect("new-password?type=password-reset&token1=$token1&token2=$token2");
    }
  }
  }
  else
  {
    return redirect('/');
  }
}
//Contact Us action
public function contact_action()
  {
    $this->load->library('mail');
    $name = $this->input->post('name');
    $phone = $this->input->post('phone');
    $email = $this->input->post('email');
    $msg = $this->input->post('msg');

    $this->form_validation->set_rules('name', 'Name', 'trim|required');
    $this->form_validation->set_rules('phone', 'Phone', 'trim|required|min_length[10]|max_length[10]');
    $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
    $this->form_validation->set_rules('msg', 'Message', 'trim|required');

    if ($this->form_validation->run()== TRUE) {
      
      $message = "<table style='border-collapse: collapse; border: 1px solid black;'>
        <tr style='border: 1px solid black;'>
            <td style='border: 1px solid black;'><b> Name : </b></td>
          <td style='border: 1px solid black;'>". $name ."</td>
        </tr>

        <tr>
          <td style='border: 1px solid black;'><b> Email : </b></td>
          <td style='border: 1px solid black;'>". $email ."</td>
        </tr>

        <tr>
          <td style='border: 1px solid black;'><b> Phone : </b></td>
          <td style='border: 1px solid black;'>". $phone ."</td>
        </tr>

        <tr>
          <td style='border: 1px solid black;'><b> Message : </b></td>
          <td style='border: 1px solid black;'>". $msg ."</td>
        </tr>
      </table>";

      $this->mail->send_mail($this->input->post('email'), 'Vihu Store Contact', $message, '', '');
      $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible" style="font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-check-circle" aria-hidden="true"></i>
  </strong> <b>Your query send successfully we will contact you shortly....</b>
  </div>');
      return redirect('contact-us');
    }
    else{

      $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible" style="border:2px solid #721C24; color:red; font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-times-circle-o" aria-hidden="true"></i>
</strong> <b>'.validation_errors().'
  </b></div>');
      return redirect('contact-us');
    }
  }
  public function review_action()
  {
    $pid = $this->input->post('pid');
    $name = $this->input->post('name');
    $email = $this->input->post('email');
    $title = $this->input->post('title');
    $description = $this->input->post('description');
    $this->form_validation->set_rules('name', 'Name', 'trim|required');
    $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
    $this->form_validation->set_rules('title', 'Title', 'trim|required');
    $this->form_validation->set_rules('description', 'Description', 'trim|required');
    if ($this->form_validation->run() == TRUE) {
      $data = [
        'ProductID' => $pid,
        'name' => $name,
        'email' => $email,
        'title' => $title,
        'desc' => $description
      ];
      if($this->Main_model->insert('tbl_review',$data))
      {
        $arr['SUCCESS'] = 'OK';
      }
    } else {
      $arr['ERROR'] = validation_errors();
    }
    echo json_encode($arr);
  }


}
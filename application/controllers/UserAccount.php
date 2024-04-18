<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * 
 */
class UserAccount extends CI_Controller
{
	
	public function __construct()
	{
		parent::__construct();
		if(!$this->session->userdata('userSess'))
		{
			return redirect('/');
		}
	}
	public function checkout()
	{
		$this->load->view('front_end/checkout');
	}
	public function get_address()
	{
		$user_id = $this->session->userdata['userSess']['id'];
		$data = $this->Main_model->fetch_data('tbl_address',['user_id'=>$user_id],'updated_at DESC');
		$this->load->view('front_end/getaddress', compact('data'), FALSE);
	}
	public function orders()
	{
		$user_id = $this->session->userdata['userSess']['id'];
		$pageno = (!empty($this->input->get('per_page')))?$this->input->get('per_page'):1;
		$limit = 10;
		$offset = intval(($pageno - 1) * $limit);	
		$config['base_url'] = base_url('user/dashboard/orders');
		$config['enable_query_strings'] = TRUE;
		$config['page_query_string'] = TRUE;
		$config['total_rows'] = $this->Main_model->num_rows_order($user_id);
		$config['per_page'] =$limit;
		$config['use_page_numbers'] = TRUE;
$config['full_tag_open'] = '<ul class="pagination" >';
$config['full_tag_close'] = '</ul>';
$config['attributes'] = ['class' => 'page-link'];
$config['first_link'] = false;
$config['last_link'] = false;
$config['first_tag_open'] = '<li class="page-item">';
$config['first_tag_close'] = '</li>';
$config['prev_link'] = '&laquo';
$config['prev_tag_open'] = '<li class="page-item">';
$config['prev_tag_close'] = '</li>';
$config['next_link'] = '&raquo';
$config['next_tag_open'] = '<li class="page-item">';
$config['next_tag_close'] = '</li>';
$config['last_tag_open'] = '<li class="page-item">';
$config['last_tag_close'] = '</li>';
$config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
$config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
$config['num_tag_open'] = '<li class="page-item">';
$config['num_tag_close'] = '</li>';
$this->pagination->initialize($config);
 $data['orders'] = $this->Main_model->get_order($user_id , $config['per_page'] , $offset);//fetch all data
	$this->load->view('front_end/order-history',$data);

	}
	//All wishlist item
	public function wishlist()
	{
	 $user_id = $this->session->userdata['userSess']['id'];
	 $user_id = $this->session->userdata['userSess']['id'];
		$pageno = (!empty($this->input->get('per_page')))?$this->input->get('per_page'):1;
		$limit = 10;
		$offset = intval(($pageno - 1) * $limit);	
		$config['base_url'] = base_url('user/dashboard/wishlist');
		$config['enable_query_strings'] = TRUE;
		$config['page_query_string'] = TRUE;
		$config['total_rows'] = $this->Main_model->num_rows('tbl_wishlist',['user_id'=>$user_id]);
		$config['per_page'] =$limit;
		$config['use_page_numbers'] = TRUE;
$config['full_tag_open'] = '<ul class="pagination" >';
$config['full_tag_close'] = '</ul>';
$config['attributes'] = ['class' => 'page-link'];
$config['first_link'] = false;
$config['last_link'] = false;
$config['first_tag_open'] = '<li class="page-item">';
$config['first_tag_close'] = '</li>';
$config['prev_link'] = '&laquo';
$config['prev_tag_open'] = '<li class="page-item">';
$config['prev_tag_close'] = '</li>';
$config['next_link'] = '&raquo';
$config['next_tag_open'] = '<li class="page-item">';
$config['next_tag_close'] = '</li>';
$config['last_tag_open'] = '<li class="page-item">';
$config['last_tag_close'] = '</li>';
$config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
$config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
$config['num_tag_open'] = '<li class="page-item">';
$config['num_tag_close'] = '</li>';
$this->pagination->initialize($config);
 $data['items'] = $this->Main_model->fetch_data_by_limit('tbl_wishlist',['user_id'=>$user_id],'updated_at DESC' ,  $offset , $config['per_page']);//fetch all data
	$this->load->view('front_end/wishlist',$data);
	}
	//User profile details
	public function my_account()
	{
	$user_id = $this->session->userdata['userSess']['id'];
	$data = $this->Main_model->fetch_data('tbl_registration',['id'=>$user_id],'');
	
	$profile = [
   'name' => $data[0]['name'],
   'email' => $data[0]['email'],
   'mobile' => $data[0]['mobile'],
   'address'=>$this->Main_model->fetch_data('tbl_address',['user_id'=>$user_id],'updated_at DESC'),
   'address1'=> $data[0]['address'],
   'postal'=> $data[0]['pin_code'],
   'city'=> $data[0]['city'],
   'state'=> $data[0]['state'],
   'country'=> $data[0]['country'],
   'gst_no'=> $data[0]['gst_no'],
   'profile'=> $data[0]['profile_pic']
	];
	$this->load->view('front_end/dashboard',$profile);
	}
	public function payment_success()
	{
	$this->load->view('front_end/payment_success');
	}
	public function payment_failure()
	{
	 $this->load->view('front_end/payment_failure');
	}

}
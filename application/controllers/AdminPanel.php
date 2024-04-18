<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdminPanel extends CI_Controller {

	public function __construct()
	{
		parent:: __construct();
		$this->load->model('Admin_model');
		if(!$this->session->userdata('sessiondata'))
		{
			redirect('admin');
		}
		
	}

	public function dashboard()
	{
		 $data['orders'] = $this->Admin_model->fetch_data('tbl_orders',[],'updated_at DESC');
		 $data['total_product'] = $this->Admin_model->count_all('tbl_products',[],'ProductID');
		 $data['total_orders'] = $this->Admin_model->count_all('tbl_orders',[],'id');
		  $data['total_sum'] = $this->Admin_model->sum('tbl_orders',[],'order_amount');
		$this->load->view('admin/dashboard',$data);
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect('admin');
	}

	public function change_pass()
	{
		$this->load->view('admin/change_password');
	}

	public function category()
	{
		$data['category'] = $this->Admin_model->fetch_data('tbl_productcategories',['parent_catid'=>0],'CategoryID DESC');
		$this->load->view('admin/category',$data);
	}

	public function sub_category()
	{
		$data['category'] = $this->Admin_model->fetch_data('tbl_productcategories',['parent_catid'=>0],'CategoryID DESC');
		$data['subcat'] = $this->Admin_model->fetch_data('tbl_productcategories',['parent_catid!='=>0],'CategoryID DESC');
		$this->load->view('admin/sub_category',$data);
	}
	public function product_list()
	{
		$user_id = $this->session->userdata['sessiondata']['id'];
		$data['products'] = $this->Admin_model->fetch_data('tbl_products',[],'updated_at DESC');
		$data['category'] = $this->Admin_model->fetch_data('tbl_productcategories',['parent_catid'=>0],'CategoryID DESC');
		$data['brand'] = $this->Admin_model->fetch_data('tbl_brand',[],'brandid DESC');
		$this->load->view('admin/product_list',$data);
	}
	public function product_detail($title , $id)
	{
        if(isset($id))
        {
        	$data['products'] = $this->Admin_model->fetch_data('tbl_products',['ProductID'=>$id],'');
        	$ref_id = $data['products'][0]->ProductImage;
        	$data['images'] = $this->Admin_model->fetch_data('tbl_image_upload',['refrence_id'=>$ref_id],'');
        	$data['variation'] = $this->Admin_model->fetch_data('tbl_productvariation',['ProductID'=>$id],'');
		$this->load->view('admin/product_detail',$data);
     	}
	}

	public function add_product()
	{
		$data['category'] = $this->Admin_model->fetch_data('tbl_productcategories',['parent_catid'=>0],'CategoryID DESC');
		$data['brand'] = $this->Admin_model->fetch_data('tbl_brand',[],'brandid DESC');

		$this->load->view('admin/add_product',$data);
	}

	public function edit_pass_action()
	{
		$user_id = $this->session->userdata['sessiondata']['id'];

		$this->form_validation->set_rules('oldPass', 'Old Password', 'trim|required');
		$this->form_validation->set_rules('newPass', 'New Password', 'trim|required');
		$this->form_validation->set_rules('rePass', 'Re Password', 'trim|required|matches[newPass]');

		if($this->form_validation->run()==FALSE)
		{
			$this->session->set_flashdata('error', validation_errors());
			return redirect('admin/change-password');
		}
		else{
			if($this->Main_model->num_rows('admin', ['password'=>md5($this->input->post('oldPass')), 'id'=>$user_id])>0)
			{

				$newPass = $this->input->post('newPass');

				$this->Main_model->update_user($user_id, array('password' =>md5($newPass)));

				$this->session->set_flashdata('error', 'Password Change Successfully....');
				return redirect('admin/change-password');
			}
			else{
				$this->session->set_flashdata('error', 'The old password wrong');
				return redirect('admin/change-password');
			}
		}
	}

	public function password_check($oldPass)
	{
		$user_id = $this->session->set_userdata('id');

		$admin = $this->Main_model->get_user($user_id);

		if ($admin->password !== $oldPass) {
			
			$this->form_validation->set_message('password_check', 'The {Old Password } does not match');
			return false;
		}

		return true;
	}
	//All Brand 
	public function brand()
	{
		$data['brand'] = $this->Admin_model->fetch_data(' tbl_brand',[],'brandid DESC');
	  $this->load->view('admin/brand',$data);
	}
	//Show All images
	public function edit_images($id)
	{
		$ref_id = base64_decode(urldecode($id));
	     if(isset($ref_id))
	     {
	     	$data['get_img'] = $this->Admin_model->fetch_data('tbl_image_upload',['refrence_id'=>$ref_id],'fid DESC');
          $this->load->view('admin/edit_images',$data);
	     }
	  
	}
	//Show Variation
	public function all_variation($id='')
	{
		$id = base64_decode(urldecode($id));
	     if(isset($id
	     ))
	     {
	     	$data['id'] = $id;
	     	$data['get_variation'] = $this->Admin_model->fetch_data('tbl_productvariation',['ProductID'=>$id],'varid DESC');
          $this->load->view('admin/all_variation',$data);
	     }
	}
	/*================= All Orders============ */
	public function all_orders()
	{
	 $data['orders'] = $this->Admin_model->fetch_data('tbl_orders',[],'updated_at DESC');
	 $this->load->view('admin/all_orders',$data);
	}
	public function order_details($id='')
	{
		if(isset($id))
		{
		 $data['orders'] = $this->Admin_model->get_order_product($id);
		 $address_id = single_row('tbl_orders',['order_id'=>$id],'address_id');
		 $data['address']   = $this->Admin_model->fetch_data('tbl_address',['id'=>$address_id],'');
		  $data['ship_status']  = single_row('tbl_orders',['order_id'=>$id],'order_shipped');
		  		  $data['order_status']  = single_row('tbl_orders',['order_id'=>$id],'order_status');
		

		  $this->load->view('admin/order_details',$data);
		}
	
	}
	//transaction details
	public function transaction_details($id='')
	{
		if(isset($id))
		{
			$id1 = single_row('tbl_orders',['custom_order_no'=>$id],'order_id');
		$data['orders'] = $this->Admin_model->get_order_product($id1);
		 $data['transactions']   = $this->Admin_model->fetch_data('tbl_transaction',['order_no'=>$id],'');
		  $this->load->view('admin/transaction_details',$data);
		}
	
	}
	//slider
	public function add_slider()
	{
		$this->load->view('admin/add_slider');
	}
	//manage slider
	public function manage_slider()
	{
		$data['sliders']   = $this->Admin_model->fetch_data('tbl_slider',[],'');
		$this->load->view('admin/manage_slider',$data);
	}
	public function invoice($id1='')
	{
		if(isset($id1))
		{
		$id = single_row('tbl_orders',['custom_order_no'=>$id1],'order_id');
		$user_id = single_row('tbl_orders',['custom_order_no'=>$id1],'order_user_id');	
		$data['orders'] = $this->Admin_model->get_order_product($id);
		 $address_id = single_row('tbl_orders',['order_id'=>$id],'address_id');
		 $data['address']   = $this->Admin_model->fetch_data('tbl_address',['id'=>$address_id],'');
		 $data['order_no'] = $id1;
		 $date = single_row('tbl_orders',['custom_order_no'=>$id1],'order_date');
		 $a = date_create($date);
		 $data['order_date'] = date_format($a,'F n, Y');
		 $data['bill_to'] = $this->Admin_model->fetch_data('tbl_registration',['id'=>$user_id],'');
		$this->load->view('admin/invoice',$data);
	    }
	}

//CMS
	public function add_page($id)
	{
		$data['pd']= $this->Admin_model->fetch_data('tbl_cms',['id'=>$id],'');
		$this->load->view('admin/add_page',$data);
	}
	//manage slider
	public function manage_page()
	{
		$data['cms']= $this->Admin_model->fetch_data('tbl_cms',[],'');
		$this->load->view('admin/manage_page',$data);
	}

}

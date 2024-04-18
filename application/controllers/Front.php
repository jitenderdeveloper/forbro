<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Front extends CI_Controller {
  public function __construct()
  {
  	parent::__construct();
  	$this->load->model('Search_model');
  }
  
	public function index()
	{
		
		$data['popup_offers'] = $this->Main_model->fetch_data_by_limit('popup_offers', ['status'=>0], 'id DESC', 0,1);
		$data['category'] = $this->Main_model->fetch_data_by_limit('tbl_productcategories', [], 'CategoryName ASC', 0,6);
		$data['product'] = $this->Main_model->fetch_data('tbl_products', [], 'created_at DESC');
		$data['latest'] = $this->Main_model->fetch_data_by_limit('tbl_products', [''], 'created_at DESC',0,5);
		$data['featured'] = $this->Main_model->fetch_data_by_limit('tbl_products', ['Featured'=>1], 'created_at DESC',0,5);
		$data['top_sale'] = $this->Main_model->fetch_data_by_limit('tbl_products', ['top_sale'=>1], 'created_at DESC',0,5);
		$data['special'] = $this->Main_model->fetch_data_by_limit('tbl_products', ['special'=>1], 'created_at DESC',0,5);
		$data['sliders'] = $this->Main_model->fetch_data_by_limit('tbl_slider', [], 'created_at DESC',0,3);
		$this->load->view('front_end/index', $data);
	}

	public function master()
	{
		$page_name = strtolower(str_replace(' ', '-',$this->uri->segment(1)));
		if(isset($page_name))
		{
		$data['d'] = $this->Main_model->fetch_data('tbl_cms', ['pagename'=>$page_name], '');	
		$this->load->view('front_end/master',$data);	
		}
		else
		{
			redirect('/');
		}

	}

	public function contact()
	{
		$this->load->view('front_end/contact');
	}
	public function login()
	{
		$this->load->view('front_end/login');
	}
	public function signup()
	{
		$this->load->view('front_end/signup');
	}
	public function forget_pwd()
	{
		$this->load->view('front_end/forget_pwd');
	}

	public function about()
	{

		$this->load->view('front_end/about');
	}

	public function order_success()
	{
		$this->load->view('front_end/order-success');
	}

	public function dashboard()
	{
		$this->load->view('front_end/dashboard');
	}

	public function order_history()
	{
		$this->load->view('front_end/order-history');
	}

	public function faq()
	{
		$this->load->view('front_end/faq');
	}
	public function wishlist()
	{
		$this->load->view('front_end/wishlist');
	}

	public function cart()
	{
		$data['cart'] = $this->cart->contents();
		$this->load->view('front_end/cart',$data);
	}

	public function profile()
	{
		$this->load->view('front_end/profile');
	}

	public function checkout()
	{
		$this->load->view('front_end/checkout');
	}

	public function error()
	{
		$this->load->view('front_end/inc/404');
	}

	public function vihu_collection()
	{
	
		$data = $this->Main_model->fetch_data('tbl_image_upload', [], '');
		
		$data['brand'] = $this->Main_model->fetch_data('tbl_brand', [''], 'brand_name ASC');//fetch all brand
		$data['color'] = $this->Main_model->distinct_data('tbl_productvariation', ['type'=>'color'], 'data ASC' , 'data');//fetch all co,lor
		$data['size'] = $this->Main_model->distinct_data('tbl_productvariation', ['type'=>'size'], 'data ASC' , 'data');//fetch all size
		$pageno = (!empty($this->input->get('per_page')))?$this->input->get('per_page'):1;
		$limit = 9;
		$offset = intval(($pageno - 1) * $limit);	
		$config['base_url'] = base_url('vihu-collection');
		$config['reuse_query_string'] = true;
		$config['enable_query_strings'] = TRUE;
		$config['page_query_string'] = TRUE;
		$config['total_rows'] = $this->Search_model->num_rows($this->input->get());
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
        $data['collection'] = $this->Search_model->get_data($this->input->get() , $config['per_page'] , $offset);//fetch all data
        $data['latest'] = $this->Main_model->fetch_data_by_limit('tbl_products',[],'created_at DESC',0,6);

		$this->load->view('front_end/vihu_collection', $data);
	}

	public function product_detail($title , $id)
	{
     $ref_id = single_row('tbl_products',['hexa_id'=>$id],'ProductImage');
     if(isset($id))
     {
				$product_name = single_row('tbl_products',['ProductID'=>$id],'ProductName');
				$pid = single_row('tbl_products',['hexa_id'=>$id],'ProductID');
				$data['products'] = $this->Main_model->fetch_data('tbl_products',['hexa_id'=>$id],'');
				$data['images'] = $this->Main_model->fetch_data('tbl_image_upload',['refrence_id'=>$ref_id],'');
				$data['color'] = $this->Main_model->fetch_data('tbl_productvariation',['ProductID'=>$pid ,'type'=>'color'],'');
				$data['size'] = $this->Main_model->fetch_data('tbl_productvariation',['ProductID'=>$pid ,'type'=>'size'],'');
				$data['related_product'] =  $this->Main_model->related_product($product_name);
		$this->load->view('front_end/product_detail', $data);
	}
	}


	/*public function delete_product_cart()
	{
		$id = $this->uri->segment(3);

		if (isset($id)) {
			
			$this->Main_model->delete('product_cart', ['id'=>$id]);

		}
	}*/

	public function review_action()
	{
		$this->form_validation->set_rules('name', 'Name', 'trim|required');
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('title', 'Review Title', 'trim|required');
		$this->form_validation->set_rules('description', 'Description', 'trim|required');
		if($this->form_validation->run()==FALSE)
		{
			echo validation_errors();
		}
		else{

			$url = $this->security->xss_clean($this->input->post('url'));
			$name = $this->security->xss_clean($this->input->post('name'));
			$email = $this->security->xss_clean($this->input->post('email'));
			$title = $this->security->xss_clean($this->input->post('title'));
			$desc = $this->security->xss_clean($this->input->post('description'));

			if($this->Main_model->review_action($url, $name, $email, $title, $desc))
			{
				echo 1;
			}
			else{
				echo 0;
			}
		}
	}

	//Email verified view
	public function email_verified()
	{
	  $this->load->view('front_end/verify_email_msg');
	}
	//password change view
	public function new_password()//change password view
	{
		$this->load->view('front_end/change_password');
	}
	//terms and condition page
	public function terms_condition()
	{
		$this->load->view('front_end/terms_condition');
	}
	public function logout()
	{
		$this->session->unset_userdata('userSess');
		return redirect('/');
	}
}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdminPanel extends CI_Controller {

	public function __construct()
	{
		parent:: __construct();
		$this->load->model('Admin_model');
		if(!$this->session->userdata('sessiondata'))
		{
			redirect('login-panel');
		}
	}

	public function dashboard()
	{
		$this->load->view('admin/dashboard');
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect('login-panel');
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
		$data['products'] = $this->Admin_model->fetch_data('tbl_products',[],'updated_at DESC');
		$this->load->view('admin/product_list',$data);
	}
	public function product_detail()
	{
		$this->load->view('admin/product_detail');
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
			if($this->Main_model->num_rows('admin', ['password'=>trim($this->input->post('oldPass')), 'id'=>$user_id])>0)
			{

				$newPass = $this->input->post('newPass');

				$this->Main_model->update_user($user_id, array('password' => $newPass));

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

	public function cms()
	{
		$data['d'] = $this->Main_model->fetch_data('cms', ['status'=>0], '');
		$this->load->view('admin/cms', $data);
	}

	public function cms_editor()
    {
    	$id = $this->uri->segment(3);
    	$data['d'] = $this->Main_model->fetch_data('cms', ['status'=>0,'id'=>$id], 'id DESC');
    	$this->load->view('admin/cms_editor', $data);
    }

    public function cms_editor_action()
    {
    	$u_id = $this->input->post('uid');

    	$title = $this->input->post('title');
    	$description = $this->input->post('description');

    	if (isset($u_id))
    	{
	    	if ($this->Main_model->update('cms', ['id'=>$u_id], [
	    		'title' => $title,
	    		'description' =>$description
	    	]))
	    	{
	    		$this->session->set_flashdata('error', 'Successfully Add...');
	    		return redirect('admin/cms');
	    	}
	    	else{

	    		$this->session->set_flashdata('error', 'Not Add Something error..');
	    		return redirect('admin/cms');
	    	}
    	}
    	else
    	{
    		$this->session->set_flashdata('error', 'Please Check Your Query');
			return redirect('admin/dashboard');
    	}
    }

    public function cms_delete()
    {
    	$id = $this->uri->segment(3);

    	if(isset($id))
    	{
    		$this->Main_model->delete('cms', ['id'=>$id]);

    		$this->session->set_flashdata('error', 'Successfully Delete');
    		return redirect('admin/cms');
    	}
    	else{
    		$this->session->set_flashdata('error', 'Check your query..');
    		return redirect('admin/dashboard');
    	}
    }

    public function offer_modal()
    {
    	$data['d'] = $this->Main_model->fetch_data('popup_offers', ['status'=>0], 'id DESC');
    	$this->load->view('admin/offer_modal', $data);
    }

    public function popup_offer_action()
    {
    	$this->form_validation->set_rules('url', 'Url', 'trim|required');
    	$this->form_validation->set_rules('name', 'Button Name', 'trim|required');

    	if ($this->form_validation->run()==FALSE){

    		$this->session->set_flashdata('error', validation_errors());
    		redirect('admin/offer-modal');
    	}
    	else{

    		$img = $this->security->xss_clean($this->input->post('img'));
    		$url = $this->security->xss_clean($this->input->post('url'));
    		$btn = $this->security->xss_clean($this->input->post('name'));

    		$ext = strtolower(basename($_FILES['img']['name']));
    		$config['file_name'] = time().'.'.$ext;
    		$config['upload_path'] = './uploads/popup_offers/';
    		$config['allowed_types'] = 'gif|jpg|png';
    		
    		$this->upload->initialize($config);
    		
    		if(! $this->upload->do_upload('img'))
            {
                $error = $this->upload->display_errors();

				$this->session->set_flashdata('error', $error);
				return redirect('admin/offer-modal');
			}
    		else
			{
				$file_name = $this->upload->data('file_name');

				if($this->Main_model->upload_offers_action($file_name, $url,$btn))
				{
					$this->session->set_flashdata('error', 'Successfully Add');
					return redirect('admin/offer-modal');
				}
				else{
					$this->session->set_flashdata('error', 'Something error please try again');
					return redirect('admin/offer-modal');
				}
			}
    	}
    }

    public function popup_offers_delete()
    {
    	$id = $this->uri->segment(3);

    	if (isset($id)) {

    		$config['upload_path'] = './uploads/popup_offers/';
    		$this->upload->initialize($config);

    		$path = $this->Main_model->single_row('popup_offers', ['id'=>$id], 'pop_img_path');
    		unlink($config['upload_path'].$path);

    		$this->Main_model->delete('popup_offers', ['id'=>$id]);

    		$this->session->set_flashdata('error', 'Successfully Deleted');
			redirect('admin/offer-modal');
    	}
    	else
		{
			return redirect('dashboard');
		}
    }

}

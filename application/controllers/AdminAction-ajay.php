<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class AdminAction extends CI_Controller
{
	
	public function __construct()
	{
		parent:: __construct();
		$this->load->model('Admin_model');
		if(!$this->session->userdata('sessiondata'))
		{
			redirect('login-panel');
		}
	}
	//Update Category Action
	public function update_category()
	{
		$id = $this->input->post('uid');
		$category = $this->input->post('ucategory');
		$description = $this->input->post('udescription');
		$img = $_FILES['ucatimg']['name'];
		if(isset($id))
		{
			$get_old_cat = $this->Admin_model->single_row('tbl_productcategories',['CategoryID'=>$id],'CategoryName');
			$get_old_img = $this->Admin_model->single_row('tbl_productcategories',['CategoryID'=>$id],'Img');

			($category!=$get_old_cat)?$this->form_validation->set_rules('ucategory', 'Category', 'trim|required|is_unique[tbl_productcategories.CategoryName]'):$this->form_validation->set_rules('ucategory', 'Category', 'trim|required');
			if ($this->form_validation->run() == TRUE) {

			if(!empty($img))
			{
				$a = explode('.', $img);
				$config['file_name'] = time().'.'.strtolower(end($a));
				$config['upload_path'] = './assets/uploads/admin/category/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size']  = '100';
				$this->upload->initialize($config);
				
				if ( ! $this->upload->do_upload('ucatimg')){
					$arr['ERROR'] = $this->upload->display_errors();
				}
				else{
					$file_name = $this->upload->data('file_name');
					$get_old_img!=null?unlink($config['upload_path'].$get_old_img):'';
				}
			}
			$data = [
               'CategoryName'=>$category,
               'Cateogy_slug'=>url_title($category,'-',true),
               'Description'=>$description,
               'parent_catid'=>0,
               'Img'=>isset($file_name)?$file_name:$get_old_img
			];
		   $this->Admin_model->update('tbl_productcategories',['CategoryID'=>$id],$data);
		   $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong> Category updated successfully...</div>');
		   return redirect('admin/category');
		}
	else {
		 $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Error!</strong> '.validation_errors().'</div>');
		 return redirect('admin/category');
	    }
	}
	}

//insert sub category action
	public function subcat_insert()
	{
		$category = $this->input->post('category');
		$subcat = $this->input->post('scat');
		$img = $_FILES['scatimg']['name'];
		if(isset($category))
		{
			$this->form_validation->set_rules('scat', 'Sub Category', 'trim|required|is_unique[tbl_productcategories.CategoryName]');
			$this->form_validation->set_rules('category', 'Category', 'trim|required');
			if ($this->form_validation->run() == TRUE) {

			if(!empty($img))
			{
				$a = explode('.', $img);
				$config['file_name'] = 'sub-cat'.time().'.'.strtolower(end($a));
				$config['upload_path'] = './assets/uploads/admin/category/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size']  = '100';
				$this->upload->initialize($config);
				
				if ( ! $this->upload->do_upload('scatimg')){
					 $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Error!</strong> '.$this->upload->display_errors().'</div>');
		 return redirect('admin/sub-category');
				}
				else{
					$file_name = $this->upload->data('file_name');
				}
			}
			$data = [
               'CategoryName'=>$subcat,
               'Cateogy_slug'=>url_title($subcat,'-',true),
               'parent_catid'=>$category,
               'Img'=>isset($file_name)?$file_name:NULL
			];
		   $this->Admin_model->insert('tbl_productcategories',$data);
		   $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong>Sub category added successfully...</div>');
		   return redirect('admin/sub-category');
		}
	else {
		 $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Error!</strong> '.validation_errors().'</div>');
		 return redirect('admin/sub-category');
	    }
	}
}
//Update Sub Category Action
	public function update_subcategory()
	{
		$id = $this->input->post('uid');
		$category = $this->input->post('uccategory');
		$subcategory = $this->input->post('ucategory');
		$description = $this->input->post('udescription');
		$img = $_FILES['ucatimg']['name'];
		if(isset($id))
		{
			$get_old_cat = $this->Admin_model->single_row('tbl_productcategories',['CategoryID'=>$id],'CategoryName');
			$get_old_img = $this->Admin_model->single_row('tbl_productcategories',['CategoryID'=>$id],'Img');

			($subcategory!=$get_old_cat)?$this->form_validation->set_rules('ucategory', 'Sub Category', 'trim|required|is_unique[tbl_productcategories.CategoryName]'):$this->form_validation->set_rules('ucategory', 'Sub Category', 'trim|required');
			$this->form_validation->set_rules('uccategory', 'Category', 'trim|required');
			if ($this->form_validation->run() == TRUE) {

			if(!empty($img))
			{
				$a = explode('.', $img);
				$config['file_name'] = time().'.'.strtolower(end($a));
				$config['upload_path'] = './assets/uploads/admin/category/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size']  = '100';
				$this->upload->initialize($config);
				
				if ( ! $this->upload->do_upload('ucatimg')){
					$arr['ERROR'] = $this->upload->display_errors();
				}
				else{
					$file_name = $this->upload->data('file_name');
					$get_old_img!=null?unlink($config['upload_path'].$get_old_img):'';
				}
			}
			$data = [
               'CategoryName'=>$subcategory,
               'Cateogy_slug'=>url_title($subcategory,'-',true),
               'Description'=>$description,
               'parent_catid'=>$category,
               'Img'=>isset($file_name)?$file_name:$get_old_img
			];
		   $this->Admin_model->update('tbl_productcategories',['CategoryID'=>$id],$data);
		   $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong> Sub category updated successfully...</div>');
		   return redirect('admin/sub-category');
		}
	else {
		 $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Error!</strong> '.validation_errors().'</div>');
		 return redirect('admin/sub-category');
	    }
	}
	}
	/*================ Add Brand==============*/
	public function insert_brand()
	{
		$brand = $this->input->post('brand');
		$img = $_FILES['img']['name'];
		if(isset($brand))
		{
			$this->form_validation->set_rules('brand', 'brand', 'trim|required|is_unique[tbl_brand.brand_name]');
			if ($this->form_validation->run() == TRUE) {
			if(!empty($img))
			{
				$a = explode('.', $img);
				$config['file_name'] = time().'.'.strtolower(end($a));
				$config['upload_path'] = './assets/uploads/admin/brand/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size']  = '1024';
				$this->upload->initialize($config);
				
				if ( ! $this->upload->do_upload('img')){
					 $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Error!</strong> '.$this->upload->display_errors().'</div>');
		 return redirect('admin/brand');	
					
				}
				else{
					$file_name = $this->upload->data('file_name');
				}
			}
			$data = [
               'brand_name'=>$brand,
               'brand_logo'=>isset($file_name)?$file_name:NULL
			];
		   $this->Admin_model->insert('tbl_brand',$data);
		   $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong> Brand added successfully...</div>');
		   return redirect('admin/brand');
		}
	else {
		 $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Error!</strong> '.validation_errors().'</div>');
		 return redirect('admin/brand');	
	    }
	}
	
	}





/*====================== Delete ================*/
public function delete($type , $id)
{
	if(isset($id))
	{
		switch ($type) {
			//delete main category
			case 'category':
			$config['upload_path'] = './assets/uploads/admin/category/';
			$this->upload->initialize($config);
			$get_old_img = $this->Admin_model->single_row('tbl_productcategories',['CategoryID'=>$id],'Img');
			($get_old_img!=null)?unlink($config['upload_path'].$get_old_img):'';
			   if($this->Admin_model->delete('tbl_productcategories',['CategoryID'=>$id]))
			   {
                   
		     $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong> Category deleted successfully...</div>');
		         return redirect('admin/category');
			   }
				
				break;
				//delete main category
			case 'sub-category':
			$config['upload_path'] = './assets/uploads/admin/category/';
			$this->upload->initialize($config);
			$get_old_img = $this->Admin_model->single_row('tbl_productcategories',['CategoryID'=>$id],'Img');
			($get_old_img!=null)?unlink($config['upload_path'].$get_old_img):'';
			   if($this->Admin_model->delete('tbl_productcategories',['CategoryID'=>$id]))
			   {
                   
		     $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong>Sub category deleted successfully...</div>');
		         return redirect('admin/sub-category');
			   }
				
				break;
				//delete main category
			case 'brand':
			$config['upload_path'] = './assets/uploads/admin/brand/';
			$this->upload->initialize($config);
			$get_old_img = $this->Admin_model->single_row('tbl_brand',['brandid'=>$id],'brand_logo');
			($get_old_img!=null)?unlink($config['upload_path'].$get_old_img):'';
			   if($this->Admin_model->delete('tbl_brand',['brandid'=>$id]))
			   {
                   
		     $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong>Brand deleted successfully...</div>');
		         return redirect('admin/brand');
			   }
				
				break;
			
			default:
				# code...
				break;
		}
	}
}

}
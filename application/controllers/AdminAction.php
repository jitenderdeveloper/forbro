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
			redirect('admin');
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
				$config['allowed_types'] = 'gif|jpg|png|jpeg';
				
				$this->upload->initialize($config);
				
				if ( ! $this->upload->do_upload('ucatimg')){
				
					$this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Error!</strong> '.$this->upload->display_errors().'</div>');
		 return redirect('admin/category');

				}
				else{
					$file_name = $this->upload->data('file_name');
					$get_old_img!=null?unlink($config['upload_path'].$get_old_img):'';
					$this->load->library('resize_image');	
                   $this->resize_image->resize($config['upload_path'],$file_name,150,150);
                  
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
	/*============== Update Product Action================*/
public function update_product($id)
{
	$category = $this->input->post('category');
	$subcategory = $this->input->post('subcategory');
	$brand = $this->input->post('brand');
	$skucode = $this->input->post('skucode');
	$hsn = $this->input->post('hsn');
	$productname = $this->input->post('productname');
	$pprice = $this->input->post('pprice');
	$psprice = $this->input->post('psprice');
	$pqty = $this->input->post('pqty');
	$pweight = $this->input->post('pweight');
	$psdescription = $this->input->post('psdescription');
	$pldescription = $this->input->post('pldescription');
	$feature = (!empty($this->input->post('feature')))?1:0;
	$top_sale = (!empty($this->input->post('top_sale')))?1:0;
	$special_sale = (!empty($this->input->post('special_sale')))?1:0;
	$this->form_validation->set_rules('category', 'Category', 'trim|required');
	//$this->form_validation->set_rules('subcategory', 'Sub Category', 'trim|required');
	$this->form_validation->set_rules('brand', 'Brand', 'trim|required');
	$this->form_validation->set_rules('skucode', 'SKU Code', 'trim|required');
	$this->form_validation->set_rules('productname', 'Product Name', 'trim|required');
	$this->form_validation->set_rules('pprice', 'Product Price', 'trim|required');
	$this->form_validation->set_rules('psprice', 'Selling Price', 'trim|required');
	$this->form_validation->set_rules('pqty', 'Product Qty', 'trim|required');
	$this->form_validation->set_rules('psdescription', 'Product Short Description', 'trim|required');
	$this->form_validation->set_rules('pldescription', 'Product Large Description', 'trim|required');
	if ($this->form_validation->run() == TRUE && isset($id)) 
	{
		$data = [
		'ProductCategoryID'=>$category,
		'sub_category'=> $subcategory,
		'ProductName'=>$productname,
		'ProductShortDesc'=>$psdescription,
		'ProductLongDesc'=>$pldescription,
		'ProductPrice'=>$pprice,
		'ProductStock'=>$pqty,
		'Productsaleprice'=>$psprice,
		'ProductWeight'=>$pweight,
		'ProductSKU'=>$skucode,
		'hsn'=>$hsn,
		'Featured'=>$feature,
		'special'=>$special_sale,
		'top_sale'=>$top_sale,
		'product_brand'=>$brand
	];
	if($this->Admin_model->update('tbl_products',['ProductID'=>$id] ,$data))
	{
		 
		   $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong> Product updated successfully...</div>');
		   return redirect('admin/product-list');
	}
	} 
	else 
	{
	 $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Error!</strong> '.validation_errors().'</div>');
		 return redirect('admin/product-list');
	}
	
}
//Insert Varaition
public function insert_variation($id='')
{
	if(isset($id))
	{
		$red = urlencode(base64_encode($id));
		
	 $this->form_validation->set_rules('value[]', 'Value', 'trim|required');
	 if ($this->form_validation->run() == TRUE) 
	 {
	 	$value = $this->input->post('value');
	 	$type = $this->input->post('type');
	 	$price = $this->input->post('price');
	 	for($i=0; $i<count($value); $i++)
	 	{
	 		$sub = array();
	 		$sub['type'] = $type;
	 		$sub['ProductID'] = $id;
	 		$sub['price'] = $price[$i];
	 		$sub['data'] = $value[$i];
	 		$arr[] = $sub;
	 	}
	 	if($this->db->insert_batch('tbl_productvariation',$arr))
	 	{
	 		 $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong> Variation added successfully...</div>');
		   		 return redirect('admin/all-variation/'.$red);	

	 	}
	 } else {
	 	 $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Error!</strong> '.validation_errors().'</div>');
		 return redirect('admin/all-variation/'.$red);	
	 }
	}
}
//Add product qty
public function add_qty()
{
	$qty = $this->input->post('qty');
	$pid = $this->input->post('main_id');
	$this->form_validation->set_rules('qty', 'Qty', 'trim|required|numeric');
	if ($this->form_validation->run() == TRUE) 
	{
		$data = [
		'product_id'=>$pid,
		'in_qty'=> $qty,
	];
	if($this->Admin_model->insert('tbl_stock',$data))
	{
		 
		   $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong> Qty added successfully...</div>');
		   return redirect('admin/product-list');
	}
	} 
	else 
	{
	 $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Error!</strong> '.validation_errors().'</div>');
		 return redirect('admin/product-list');
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
			case 'product_img':
			$config['upload_path'] = './assets/uploads/admin/product/';
			$this->upload->initialize($config);
			$get_old_img = $this->Admin_model->single_row('tbl_image_upload',['fid'=>$id],'f_name');
			$ref_id = $this->Admin_model->single_row('tbl_image_upload',['fid'=>$id],'refrence_id');
			($get_old_img!=null)?unlink($config['upload_path'].$get_old_img):'';
			($get_old_img!=null)?unlink($config['upload_path'].'thumbnail/'.$get_old_img):'';
			   if($this->Admin_model->delete('tbl_image_upload',['fid'=>$id]))
			   {
                   
			       $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong>Product image deleted successfully...</div>');
			         return redirect('admin/edit-images/'.urlencode(base64_encode($ref_id)));
			   }
				
				break;	
				case 'variation':
				$pid = $this->Admin_model->single_row('tbl_productvariation',['
					varid'=>$id] ,'ProductID');
			   if($this->Admin_model->delete('tbl_productvariation',['varid'=>$id]))
			   {
                   
			       $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong>Varitaion deleted successfully...</div>');
			         return redirect('admin/all-variation/'.urlencode(base64_encode($pid)));
			   }
				
				break;
				//delete main slider
			case 'slider':
			$config['upload_path'] = './assets/uploads/admin/slider/';
			$this->upload->initialize($config);
			$get_old_img = $this->Admin_model->single_row('tbl_slider',['SlideId'=>$id],'imgpath');
			($get_old_img!=null)?unlink($config['upload_path'].$get_old_img):'';
			   if($this->Admin_model->delete('tbl_slider',['SlideId'=>$id]))
			   {
                   
		     $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong> Slider deleted successfully...</div>');
		         return redirect('admin/manage-slider');
			   }
				
				break;
			
			default:
				# code...
				break;
		}
	}
}
//delete product
public function delete_product($id , $img_id)
{
	if(isset($id) && isset($img_id))
	{
	$config['upload_path'] = './assets/uploads/admin/product/';
	$this->upload->initialize($config);
	if($this->Admin_model->delete('tbl_products',['ProductID'=>$id]) && $this->Admin_model->delete('tbl_stock',['product_id'=>$id]) && $this->Admin_model->delete('tbl_productvariation',['ProductID'=>$id]))
	{
		$img = $this->Admin_model->fetch_data('tbl_image_upload',['refrence_id'=>$img_id],'');
		foreach($img as $im)
	{
       unlink($config['upload_path'].$im->f_name);
	}
       $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong>Product deleted successfully...</div>');
		         return redirect('admin/product-list');
	}
	}
	else
	{
		return redirect('admin/product-list');
	}
}
//Update Shipping Status
public function updateshipping_status($id='')
{
	$status = $this->input->post('sstatus');
	if(isset($id))
	{
		$this->form_validation->set_rules('sstatus', 'Shipping Status', 'trim|required');
		if ($this->form_validation->run() == TRUE ) 
		{
		 if($this->Admin_model->update('tbl_orders', ['order_id'=>$id] , ['order_shipped'=>$status]))
		 {
		 	$this->Admin_model->update('tbl_orderdetails', ['order_id'=>$id] , ['order_shipped1'=>$status]);
            $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible" style="font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-check-circle" aria-hidden="true"></i>
</strong> <b>Order shipping status updated successfully</b>
  </div>');
      return redirect('admin/order-details/'.$id);
		 }
		}else 
		{
	$this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible" style="border:2px solid #721C24; color:red; font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-times-circle-o" aria-hidden="true"></i>
</strong> <b>'.validation_errors().'</b>
  </div>');
      return redirect('admin/order-details/'.$id);
		}
	
	}
}

//Update Order Status
public function updateorder_status($id='')
{
	$status = $this->input->post('ostatus');
	if(isset($id))
	{
		$this->form_validation->set_rules('ostatus', 'Order Status', 'trim|required');
		if ($this->form_validation->run() == TRUE ) 
		{
		 if($this->Admin_model->update('tbl_orders', ['order_id'=>$id] , ['order_status'=>$status]))
		 {

            $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible" style="font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-check-circle" aria-hidden="true"></i>
</strong> <b>Order status updated successfully</b>
  </div>');
      return redirect('admin/order-details/'.$id);
		 }
		}else 
		{
	$this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible" style="border:2px solid #721C24; color:red; font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-times-circle-o" aria-hidden="true"></i>
</strong> <b>'.validation_errors().'</b>
  </div>');
      return redirect('admin/order-details/'.$id);
		}
	
	}
}
}
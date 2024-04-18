<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * 
 */
class AdminAjax extends CI_Controller
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
	//Insert category
	public function insert_category()
	{
		$category = $this->input->post('category');
		$description = $this->input->post('description');
		$img = $_FILES['catimg']['name'];
		if(isset($category))
		{
			$this->form_validation->set_rules('category', 'Category', 'trim|required|is_unique[tbl_productcategories.CategoryName]');
			if ($this->form_validation->run() == TRUE) {

			if(!empty($img))
			{
				$a = explode('.', $img);
				$config['file_name'] = time().'.'.strtolower(end($a));
				$config['upload_path'] = './assets/uploads/admin/category/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size']  = '100';
				$this->upload->initialize($config);
				
				if ( ! $this->upload->do_upload('catimg')){
					$arr['ERROR'] = $this->upload->display_errors();
				}
				else{
					$file_name = $this->upload->data('file_name');
				}
			}
			$data = [
               'CategoryName'=>$category,
               'Cateogy_slug'=>url_title($category,'-',true),
               'Description'=>$description,
               'parent_catid'=>0,
               'Img'=>isset($file_name)?$file_name:NULL
			];
		   $this->Admin_model->insert('tbl_productcategories',$data);
		  $arr['SUCCESS'] = 'OK';	
		}
	else {
		$arr['ERROR'] = validation_errors();		
	    }
	}
	echo json_encode($arr);
	exit();
}
//fetch category data for update
public function get_category()
{
	$cat_id = $this->input->post('id');
	if(isset($cat_id))
	{

		$get_data = $this->Admin_model->fetch_data('tbl_productcategories',['CategoryID'=>$cat_id],'');
		$arr['id'] = $get_data[0]->CategoryID;
		$arr['category'] = $get_data[0]->CategoryName;
		$arr['description'] = $get_data[0]->Description;
		$arr['sub_cat'] = $get_data[0]->Description;
		$arr['sub_cat_id'] = 
		$arr['img'] = $get_data[0]->Img!=null?base_url('assets/uploads/admin/category/').$get_data[0]->Img:'';

	}
	echo json_encode($arr);
 }
 //Get sub category in add product
 public function get_subcategory()
 {
 	$id = $this->input->post('id');
 	if(isset($id))
 	{
 		$get_data = $this->Admin_model->fetch_data('tbl_productcategories',['parent_catid'=>$id],'CategoryID DESC');
 		$arr = array();
 		foreach($get_data as $d)
 		{
 			$sub  = array();
 			$sub['catid'] = $d->CategoryID;;
 			$sub['cat'] = ucwords($d->CategoryName);
 			$arr[] = $sub;
 		}
 		echo json_encode($arr);
 	}
 	exit();

 }
 /*================= Upload product image===============*/
 public function uploadimg_product(){

	 if (!empty($_FILES)) {
	 $prodid = $this->input->post('prodid', TRUE);
	 $f = $_FILES['file']['name'];
	 $a = explode('.', $f);
	 $config['file_name'] = time().'.'.strtolower(end($a));
	   $config['upload_path'] = './assets/uploads/admin/product/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$config['max_size']	= '2048';
		$this->upload->initialize($config);
	 if ( ! $this->upload->do_upload('file')){
	 	$error = array('error' => $this->upload->display_errors());
	 	print_r($error);
	 	$file_name='';
	 }
	 else{
	
	 	$d = array('data' => $this->upload->data());
	 	$file_name = $d['data']['file_name'];
	 	$flink = base_url('assets/uploads/admin/product/').$file_name;
	 	$ftype = $d['data']['file_type'];
	 	$fsize = $d['data']['file_size'];
	 	$arr= array(
	 		'f_name'=>$file_name,
		'f_size'=>$fsize,

		'f_link'=>$flink,

		'f_type'=>$ftype,

		'd_date'=>date('Y-m-d h:i:s'),

		'context'=>'product',

		'refrence_id'=>$prodid);
		  $this->db->insert('tbl_image_upload', $arr);
	 		 	
	 }	 
	 echo $file_name;
	}
}
public function delete_prod_img()
{
    $config['upload_path'] = './assets/uploads/admin/product/';
		$this->upload->initialize($config);
	$value = $this->input->post('value');
	unlink($config['upload_path'].$value);
	$this->db->delete('tbl_image_upload', array('f_name'=>$value));

}
/*============== Insert Product================*/
public function insert_product()
{
	$imgid = $this->input->post('imgprodid');
	$category = $this->input->post('category');
	$subcategory = $this->input->post('subcategory');
	$brand = $this->input->post('brand');
	$skucode = $this->input->post('skucode');
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
	$this->form_validation->set_rules('subcategory', 'Sub Category', 'trim|required');
	$this->form_validation->set_rules('brand', 'Brand', 'trim|required');
	$this->form_validation->set_rules('skucode', 'SKU Code', 'trim|required');
	$this->form_validation->set_rules('productname', 'Product Name', 'trim|required');
	$this->form_validation->set_rules('pprice', 'Product Price', 'trim|required');
	$this->form_validation->set_rules('psprice', 'Selling Price', 'trim|required');
	$this->form_validation->set_rules('pqty', 'Product Qty', 'trim|required');
	$this->form_validation->set_rules('psdescription', 'Product Short Description', 'trim|required');
	$this->form_validation->set_rules('pldescription', 'Product Large Description', 'trim|required');
	if ($this->form_validation->run() == TRUE) 
	{
		$data = [
		'ProductCategoryID'=>$category,
		'sub_category'=> $subcategory,
		'ProductName'=>$productname,
		'ProductShortDesc'=>$psdescription,
		'ProductPrice'=>$pprice,
		'ProductStock'=>$pqty,
		'Productsaleprice'=>$psprice,
		'ProductWeight'=>$pweight,
		'ProductSKU'=>$skucode,
		'ProductImage'=>$imgid,
		'Featured'=>$feature,
		'special'=>$special_sale,
		'top_sale'=>$top_sale,
		'product_brand'=>$brand
	];
	if($this->Admin_model->insert('tbl_products',$data))
	{
		$arr['STATUS'] = 'OK';
	}
	else
	{
		$arr['STATUS'] = 'ERROR';
		$arr['MSG'] = '<font color="red">Product not added successfully...</font>';
 	}
	} 
	else 
	{
		$arr['STATUS'] = 'ERROR';
		$arr['MSG'] = validation_errors();
	}
	echo json_encode($arr);
	exit();
}
}

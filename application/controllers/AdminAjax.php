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
			redirect('admin');
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
				$config['allowed_types'] = 'gif|jpg|png|jpeg';
				$config['max_size']  = '100';
				$this->upload->initialize($config);
				
				if ( ! $this->upload->do_upload('catimg')){
					$arr['ERROR'] = $this->upload->display_errors();
				}
				else{
					$file_name = $this->upload->data('file_name');
					$this->load->library('resize_image');	
                   $this->resize_image->resize($config['upload_path'],$file_name,150,150);
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
		//$config['max_size']	= '5120';
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
		  $this->load->library('image_lib');
$config1['image_library'] = 'gd2';
$config1['source_image'] = $config['upload_path'].$file_name;
$config1['create_thumb'] = FALSE;
$config1['maintain_ratio'] = TRUE;
$config1['width']     = 1024;
$this->image_lib->initialize($config1); 
$this->image_lib->resize();
		  $this->resizeImage($d['data']);
	 		 	
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
	unlink($config['upload_path'].'thumbnail/'.$value);
	$this->db->delete('tbl_image_upload', array('f_name'=>$value));
	

}
/*============== Insert Product================*/
public function insert_product()
{
	$user_id = $this->session->userdata['sessiondata']['id'];
	$imgid = $this->input->post('imgprodid');
	$category = $this->input->post('category');
	$subcategory = $this->input->post('subcategory');
	$brand = $this->input->post('brand');
	$skucode = $this->input->post('skucode');
	$productname = $this->input->post('productname');
	$hsn = $this->input->post('hsn');
	$pprice = $this->input->post('pprice');
	$psprice = $this->input->post('psprice');
	$pqty = $this->input->post('pqty');
	$pweight = $this->input->post('pweight');
	$psdescription = $this->input->post('psdescription');
	$pldescription = $this->input->post('pldescription');
	$feature = (!empty($this->input->post('feature')))?1:0;
	$top_sale = (!empty($this->input->post('top_sale')))?1:0;
	$special_sale = (!empty($this->input->post('special_sale')))?1:0;
	$size = $this->input->post('size');
	$this->form_validation->set_rules('category', 'Category', 'trim|required');
	//$this->form_validation->set_rules('subcategory', 'Sub Category', 'trim|required');
	$this->form_validation->set_rules('brand', 'Brand', 'trim|required');
	$this->form_validation->set_rules('skucode', 'SKU Code', 'trim|required|is_unique[tbl_products.ProductSKU]');
	$this->form_validation->set_rules('productname', 'Product Name', 'trim|required');
	$this->form_validation->set_rules('pprice', 'Product Price', 'trim|required');
	$this->form_validation->set_rules('psprice', 'Selling Price', 'trim|required');
	$this->form_validation->set_rules('pqty', 'Product Qty', 'trim|required');
	$this->form_validation->set_rules('psdescription', 'Product Short Description', 'trim|required');
	$this->form_validation->set_rules('pldescription', 'Product Large Description', 'trim|required');
	$this->form_validation->set_rules('size[]', 'Product Size', 'trim|required');
	if ($this->form_validation->run() == TRUE) 
	{
		$data = [
			'user_id'=>$user_id,
		'ProductCategoryID'=>$category,
		'sub_category'=> $subcategory,
		'ProductName'=>$productname,
		'hsn'=>$hsn,
		'ProductShortDesc'=>$psdescription,
		'ProductLongDesc'=>$pldescription,
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
	 $insert_id = $this->db->insert_id();
	 $this->Main_model->update('tbl_products',['ProductID'=>$insert_id] ,['hexa_id'=>md5($insert_id).sha1($insert_id)]);
	 $stock = [
         'user_id'=>$user_id,
         'product_id'=>$insert_id,
         'in_qty'=>$pqty,
         'out_qty'=>0
	 ];
	 foreach($size as $s)
	 {
	 	$sub = [];
	 	$sub = array('type'=>'size','data'=>$s,'ProductID'=>$insert_id,'price'=>$pprice);
	 	$size_arr[] = $sub;
	 }
	 $this->db->insert_batch('tbl_productvariation',$size_arr);
	 $this->Main_model->insert('tbl_stock',$stock);
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
//Get Product details for update
public function get_product_details()
{
	$pid = $this->input->post('id');
	if(isset($pid))
	{
		$data = $this->Admin_model->fetch_data('tbl_products',['ProductID'=>$pid],'');
		if(count($data)>0)
		{
			$arr['pid'] = $data[0]->ProductID;
			$arr['category_id'] = $data[0]->ProductCategoryID;
			$arr['category'] = ucwords($this->Admin_model->single_row('tbl_productcategories',['CategoryID'=>$data[0]->ProductCategoryID],'CategoryName'));
			$arr['subcategory_id'] = $data[0]->sub_category;
			$arr['subcategory'] = ucwords($this->Admin_model->single_row('tbl_productcategories',['CategoryID'=>$data[0]->sub_category],'CategoryName'));
			$arr['brand_id'] = $data[0]->product_brand;
			$arr['brand'] = ucwords($this->Admin_model->single_row('tbl_brand',['brandid'=>$data[0]->product_brand],'brand_name'));
			$arr['pname'] = $data[0]->ProductName;
			$arr['pprice'] = $data[0]->ProductPrice;
			$arr['psprice'] = $data[0]->Productsaleprice;
			$arr['pqty'] = $data[0]->ProductStock;
			$arr['pweight'] = $data[0]->ProductWeight;
			$arr['featured'] = $data[0]->Featured;
			$arr['top_sale'] = $data[0]->top_sale;
			$arr['special_sale'] = $data[0]->special;
			$arr['psdescription'] = $data[0]->ProductShortDesc;
			$arr['pldescription'] = $data[0]->ProductLongDesc;
			$arr['skucode'] = $data[0]->ProductSKU;
			$arr['hsn'] = $data[0]->hsn;

		}
		
		echo json_encode($arr);
		exit();
	}
}
//insert slider
public function insert_slider()
{
	$heading = $this->input->post('heading');
	$heading1 = $this->input->post('heading1');
	$blabel = $this->input->post('blabel');
	$link = $this->input->post('link');
	$price = $this->input->post('price');
	$file = $_FILES['files']['name'];
	$this->form_validation->set_rules('heading', 'Heading', 'trim|required');
	if ($this->form_validation->run() == TRUE) 
	{
		$m = explode('.', $file);
	 $config['file_name'] = time().'.'.strtolower(end($m));
	 $config['upload_path'] = './assets/uploads/admin/slider/';
	 $config['allowed_types'] = 'gif|jpg|png|jpeg';
	 $config['max_size']  = '2048';
	 $this->upload->initialize($config);
	 
	 if ( ! $this->upload->do_upload('files'))
	 {
	 	$arr['ERROR'] = 'ERROR';
	 	$arr['MSG'] = $this->upload->display_errors();
	 	$arr['Data'] = $this->upload->data();
	 }
	 else
	 {
	 	$file_name = $this->upload->data('file_name');
	 	$data = [
         'imgpath' => $file_name,
         'S_head'=>$heading,
         'S_head2'=>$heading1,
         'Button_Label'=>$blabel,
         'Button_Link'=>$link,
         'Price_tag'=>$price
	 	];
	 	$this->Admin_model->insert('tbl_slider',$data);
	 	$arr['STATUS'] = 'OK';
	 }
	}
	else 
	{
		$arr['ERROR'] = 'ERROR';
	 	$arr['MSG'] = validation_errors();
	}
	echo json_encode($arr);
	exit();
}
//insert cms
public function insert_pagetext()
{	
	$id = $this->input->post('id');
	//$page = $this->input->post('pagename');
	$heading = $this->input->post('heading');
	$pagetext = $this->input->post('pagetext');
	$file = $_FILES['files']['name'];
	$this->form_validation->set_rules('heading', 'Heading', 'trim|required');
	if ($this->form_validation->run() == TRUE) 
	{
		$m = explode('.', $file);
	 $config['file_name'] = time().'.'.strtolower(end($m));
	 $config['upload_path'] = './assets/uploads/admin/cms/';
	 $config['allowed_types'] = 'gif|jpg|png|jpeg';
	 $config['max_size']  = '2048';
	 $this->upload->initialize($config);
	 
	 if ( ! $this->upload->do_upload('files'))
	 {
	 	$arr['ERROR'] = 'ERROR';
	 	$arr['MSG'] = $this->upload->display_errors();
	 	$arr['Data'] = $this->upload->data();
	 }
	 else
	 {
	 	$file_name = $this->upload->data('file_name');
	 	$data = [
         'imgpath' => $file_name,
         'heading'=>$heading,
         'text'=>$pagetext,
         
	 	];
	 	//$this->Admin_model->insert('tbl_cms',$data);
	 	$this->Main_model->update('tbl_cms',['id'=>$id] ,$data);
	 	$arr['STATUS'] = 'OK';
	 }
	}
	else 
	{
		$arr['ERROR'] = 'ERROR';
	 	$arr['MSG'] = validation_errors();
	}
	echo json_encode($arr);
	return redirect('admin/manage-page');
	exit();
}
/*====================== Create Thumbnail==========*/
public function resizeImage($image_data)
   {
 $this->load->library('image_lib');
$original_path = './assets/uploads/admin/product';
//$resized_path = './uploads/resized';
$thumbs_path = './assets/uploads/admin/product/thumbnail';
      //your desired config for the resize() function
       /* $config = array(
            'source_image' => $image_data['full_path'], //path to the uploaded image
            'new_image' => $resized_path,
            'maintain_ratio' => true,
            'width' => 600,
            'height' => 300,
        );
        $this->image_lib->initialize($config);
        $this->image_lib->resize();*/

        // for the Thumbnail image
        $config = array(
            'source_image' => $image_data['full_path'],
            'new_image' => $thumbs_path,
            'maintain_ratio' => true,
            'width' => 250,
            //'height' => 310
        );
        $this->image_lib->initialize($config);
        $this->image_lib->resize();
   }
}

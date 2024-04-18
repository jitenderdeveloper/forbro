<?php
function single_row($table , $cond , $col)
{
	$CI =& get_instance();
	$row = $CI->Main_model->single_row($table , $cond , $col);
	return $row;
}
function get_img($pid)
{
	$CI =& get_instance();
$ref_id = $CI->Main_model->single_row('tbl_products',['ProductID'=>$pid],'ProductImage');
$img = $CI->Main_model->single_row('tbl_image_upload',['refrence_id'=>$ref_id],'f_name');
return $img;
}
function get_data($table , $cond , $sort)
{
	$CI =& get_instance();
	$data = $CI->Main_model->fetch_data($table , $cond , $sort);
	return $data;
}
function sum($table , $cond , $col)
{
	$CI =& get_instance();
	$sum = $CI->Admin_model->sum($table , $cond , $col);
	return $sum;
}
?>
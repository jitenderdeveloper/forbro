<?php
class Resize_image
{
private $CI;
public function __construct()
{
$this->CI = &get_instance();
}
public function resize($path , $file_name , $width , $height)
{
if(isset($path , $file_name))
{
$this->CI->load->library('image_lib');
$config['image_library'] = 'gd2';
$config['source_image'] = $path.$file_name;
$config['create_thumb'] = FALSE;
$config['maintain_ratio'] = TRUE;
$config['width']     = $width;
$config['height']   = $height;
$this->CI->image_lib->initialize($config); 
$this->CI->image_lib->resize();
}
}
}

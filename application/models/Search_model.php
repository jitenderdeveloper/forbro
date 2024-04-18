<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * 
 */
class Search_model extends CI_Model
{
	public function query($filter , $category)
	{

		$this->db->group_by('tbl_products.ProductID')->select('*')->from('tbl_products');
		if(isset($filter['keywords']) && !empty($filter['keywords']))
		{		
			$this->db->where('tbl_products.ProductName',$filter['keywords']);
			
		}
		//by category
		if(isset($category) && !empty($category))
		{
			
			$this->db->where('ProductCategoryID',$category);
			$this->db->or_where('sub_category',$category);
		}
		if(isset($filter['brand']) && count($filter['brand'])>0)
		{
			$this->db->where_in('product_brand',$filter['brand']);
		}
		if(isset($filter['color']) && count($filter['color'])>0)
		{
			$this->db->join('tbl_productvariation','tbl_products.ProductID = tbl_productvariation.ProductID');
			$this->db->where_in('tbl_productvariation.varid',$filter['color']);
		}
		if(isset($filter['min']) && !empty($filter['min']) && isset($filter['max']) && !empty($filter['max']))
		{
			$this->db->where('Productsaleprice>=',$filter['min'])->where('Productsaleprice<=',$filter['max']);
		}



		if(isset($filter['price-sort']) && !empty($filter['price-sort']))
		{
			$this->db->order_by('Productsaleprice',$filter['price-sort']);
		}else
		{
			$this->db->order_by('created_at','DESC');
		}
		
		

	}
	public function get_data($filter , $limit , $offset)
	{
		if(isset($filter['category']) && !empty($filter['category']))
		{
		    $cat = str_replace('-', ' ', $filter['category']);
		    $category = $this->single_row('tbl_productcategories',['CategoryName'=>$cat],'CategoryID');	
		}
			//$category = $category??'';
			$category =(empty($category))?' ':$category;

		$this->query($filter , $category);

		$query = $this->db->limit($limit , $offset)->get()->result_array();
		return $query;
	}
	public function num_rows($filter)
	{

		if(isset($filter['category']) && !empty($filter['category']))
		{
		    $cat = str_replace('-', ' ', $filter['category']);
		    $category = $this->single_row('tbl_productcategories',['CategoryName'=>$cat],'CategoryID');	
		}
		//$category = $category??'';
		$category =(empty($category))?' ':$category;
		$this->query($filter , $category);
		$query = $this->db->get()->num_rows();
		return $query;
	}
	public function single_row($table , $condition , $column)
    {
        $query = $this->db->select($column)->get_where($table , $condition);
        return $query->row($column);
    }
}
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_model extends CI_Model {

	public function single_row($table , $condtion , $columns)     
    {
        return $this->db->get_where($table , $condtion)->row($columns);
    }
    public function num_rows($table, $condition)
    {
        return $this->db->get_where($table , $condition)->num_rows();
    }

    public function fetch_data($table , $condtion, $sort)
    {
        return $this->db->order_by($sort)->get_where($table , $condtion)->result();
    }

    public function fetch_data_by_like($table , $condtion,$like)
    {
        return $this->db->like($like,'match')->get_where($table , $condtion)->result();
    } 
    public function fetch_data_by_limit($table , $condtion, $sort , $start , $limit)
    {
        return $this->db->order_by($sort)->limit($limit , $start)->get_where($table , $condtion)->result();
    }
    public function update($table , $condition , $data)
    {
        return $this->db->where($condition)->set($data)->update($table);
    }
    public function delete($table, $condition)
    {
        return $this->db->delete($table, $condition);
    }
    public function insert($table , $data)
    {
        return $this->db->insert($table , $data);
    }


   public function update_user($user_id, $userdata)
    {
        return $this->db->where('id', $user_id)->set($userdata)->update('admin');
    }
    public function get_order_product($order_id)
    {
       $query =  $this->db->select('*')->from('tbl_orderdetails')->join('tbl_products','tbl_orderdetails.product_id = tbl_products.ProductID')->where('tbl_orderdetails.order_id',$order_id)->get();
       return $query->result();
    }
    public function sum($table , $cond , $col)
    {
        return $this->db->select_sum($col)->from($table)->where($cond)->get()->row($col);
    }
    public function count_all($table , $cond , $col)
    {
        $this->db->select($col);
        $this->db->from($table);
        $this->db->where($cond);
        $num_results = $this->db->count_all_results();
        return $num_results;
    }
    
	
}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main_model extends CI_Model {

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
        return $this->db->order_by($sort)->get_where($table , $condtion)->result_array();
    }

    public function fetch_data_by_like($table , $condtion,$like)
    {
        return $this->db->like($like,'match')->get_where($table , $condtion)->result_array();
    } 
    public function fetch_data_by_limit($table , $condtion, $sort , $start , $limit)
    {
        return $this->db->order_by($sort)->limit($limit , $start)->get_where($table , $condtion)->result_array();
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

    public function login_panel_action($u_id, $pass)
    {
    	$this->db->where('username', $u_id);
    	$this->db->where('password', $pass);

    	$query = $this->db->get('admin');

    	if($query->num_rows() == 1)
    	{
    		return $query->row();
    	}

    	return false;
    }

    public function update_user($user_id, $userdata)
    {
        return $this->db->where('id', $user_id)->set($userdata)->update('admin');
    }

    public function review_action($url, $name, $email, $title, $desc)
    {
        $data  = array(
            'ProductID' => $url,
            'name'=> $name,
            'email' => $email,
            'title' => $title,
            'desc' => $desc
        );

        return $this->db->insert('review', $data);
    }
    public function pname($val)
    {
        $a = $this->db->select('ProductName','ProductID')->order_by('ProductName ASC')->like('ProductName',$val , 'match')->limit(10,0)->get('tbl_products');
        return $a->result();
    }
     public function category($val)
    {
        $a = $this->db->select('CategoryName','CategoryID')->order_by('CategoryName ASC')->like('CategoryName',$val , 'match')->limit(10,0)->get('tbl_productcategories');
        return $a->result();
    }
    public function distinct_data($table , $cond , $sort , $col)
    {
         return $this->db->distinct($col)->order_by($sort)->limit(5,0)->get_where($table , $cond)->result_array();
    }
    public function related_product($pname)
    {
        $query = $this->db->like('ProductName',$pname)->order_by('created_at DESC')->limit(10,0)->get('tbl_products')->result_array();
        return $query;
    }
    //all orders
    public function order_query($id)
    {
        $this->db->select('*')->from('tbl_orders')->order_by('tbl_orders.updated_at DESC')->join('tbl_orderdetails','tbl_orders.order_id = tbl_orderdetails.order_id')->where('tbl_orders.order_user_id',$id);
    }
    public function get_order($id , $limit , $offset)
    {
      $this->order_query($id);
      $q = $this->db->limit($limit , $offset)->get();
      return $q->result_array();
    }
    public function num_rows_order($id)
    {
      $this->order_query($id);
      $q = $this->db->get();
      return $q->num_rows();
    }
	
}

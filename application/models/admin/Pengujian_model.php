<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Pengujian_model extends CI_Model
{
	function __construct(){
		parent::__construct();
	}


  function get_data()
  {
		$data = $this->db->order_by('id', 'DESC')->get("pengujian");

		return $data->result_array();
  }
  
	function get_data_limit($limit){

		$data = $this->db->limit($limit)->order_by('id', 'DESC')->get("pengujian");
		return $data->result_array();
	}
} 

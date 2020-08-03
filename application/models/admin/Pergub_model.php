<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Pergub_model extends CI_Model
{
	function __construct(){
		parent::__construct();
	}


  function get_data()
  {
		$data = $this->db->order_by('id_pergub', 'DESC')->get("pergub");

		return $data->result_array();
  }
  
	function get_data_limit($limit){

		$data = $this->db->limit($limit)->order_by('id_pergub', 'DESC')->get("pergub");
		return $data->result_array();
	}
} 

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use PhpOffice\PhpWord\PhpWord;
use PhpOffice\PhpWord\Writer\Word2007;

class Pengaduan extends AN_Apricot
{
	function __construct(){
		parent::__construct();
		$this->load->model('admin/Pengaduan_model', 'pengaduan');
  }
  
	function index(){
		$data=$this->public_data;

		$data["informasi"]["title"]=$this->title->about_us("Kontak");
		$data["informasi"]["current_page"]="Kontak";
		$data["informasi"]["uniqueid"]="Kontak";

		$data["informasi"]["og-url"]=current_url();
		$data["informasi"]["og-title"]=$data["informasi"]["title"];
		$data["get_pengaduan"] = $this->pengaduan->get_data();
		$this->load->view($this->tema."/header",$data);
		$this->load->view($this->tema."/pengaduan",$data);
		$this->load->view($this->tema."/footer",$data);
	}
}

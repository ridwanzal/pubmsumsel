<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bidang extends AN_Apricot

{
	function __construct(){
		parent::__construct();
	}

	public function index()
	{
					show_404();
	}
	public function detail($id=0){

	if($id>0 AND ($bidang=$this->bidangs->detail_bidang($id))!=FALSE){

		$data=$this->public_data;
		$kategori = $bidang["kategori"];
		$kategori_galeri = $bidang["kategori_galeri"];
		$tag_id = $bidang["tag_id"];

		$data["artikel_kategori"]=$this->artikel->get_all_limit();
		$data['get_galeri'] = $this->galeri->get_galeri_by_kategori($kategori_galeri);
		$data["informasi"]["title"]="judul";
		$data["kategori"]=$kategori;
		$data["tag_id"]=$tag_id;
		$data["informasi"]["current_bidang"]="bidang";
		$data["informasi"]["uniqueid"]="bidang_".$id;
		$data["informasi"]["custom_javascript"]=$bidang["javascript"];

		$data["informasi"]["meta_keyword"]=$bidang["meta_keywords"]==""?$data["informasi"]["meta_keyword"]:$bidang["meta_keywords"];
		$data["informasi"]["meta_deskripsi"]=$bidang["meta_description"]==""?$data["informasi"]["meta_deskripsi"]:$bidang["meta_description"];

		$data["informasi"]["og-url"]=current_url();
		$data["informasi"]["og-title"]=$data["informasi"]["title"];
		$data["informasi"]["og-description"]=$data["informasi"]["meta_deskripsi"];
		$data["informasi"]["og-image"]=$bidang["foto"]==""?$data["informasi"]["og-image"]:$bidang["foto"];

		$data["heading"]=$bidang['judul'];
		$data["bidang"]=$bidang;
	
		$this->load->view($this->tema."/header",$data);
		$this->load->view($this->tema."/bidang",$data);
		$this->load->view($this->tema."/footer",$data);
				} else{
					show_404();
				}


	}

}

<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class All_galeri extends CI_Model{

	public $hasil;
	var $table = 'galeri';
	function __construct(){
		parent::__construct();
	}


	function get_galeri(){
		$query=$this->db->query("SELECT * FROM galeri ORDER BY galeri_id DESC");
		if($query->num_rows()>0){
			foreach ($query->result_array() AS $data){
				$this->hasil.="<tr>";
				$this->hasil.="<td>$data[galeri_nama]</td>";
				$this->hasil.="<td>$data[galeri_status]</td>";
				$this->hasil.="<td>$data[galeri_date]</td>";
				$this->hasil.="<td>$data[galeri_date_edit]</td>";
				$this->hasil.="<td>URL</td>";
				$this->hasil.="<td><a href='".base_url()."admin/galeri/$data[galeri_id]'><i class='fa fa-edit' style='cursor:pointer'></i></a> &nbsp; <i style='cursor:pointer;color:red' class='fa fa-times-circle hapus-galeri' id='$data[galeri_id]'></i> </td>";
				$this->hasil.="</tr>";
			}
		}
	}
	function get_all_galeri()
	{
		return $this->db->get($this->table);
	}


	function get_galeris($id){
		$this->id=$id;

		if($id>0){
			$query=$this->db->query("SELECT * FROM galeri WHERE galeri_id='$id'");
			if($query->num_rows()>0){
				$row=$query->row();

				$this->hasil=array(
					"id"=>$row->galeri_id,
					"nama"=>$row->galeri_nama,
					"deskripsi"=>($row->galeri_deskripsi),
					"featured"=>$row->galeri_feature_img,
					"url"=>$row->galeri_url,
					"meta_keyword"=>$row->galeri_meta_keyword,
					"meta_deskripsi"=>$row->galeri_meta_deskripsi,
					"og_image"=>$row->galeri_og_image,
					"og_deskripsi"=>$row->galeri_og_deskripsi,
					"status"=>$row->galeri_status,
					"kategori"=>$row->kategori_id
				);

				return true;

			} else {
				return false;
			}
		} else {

			$this->hasil=array(
				"id"=>0,
				"nama"=>"",
				"deskripsi"=>"",
				"featured"=>"",
				"url"=>"",
				"meta_keyword"=>"",
				"meta_deskripsi"=>"",
				"og_image"=>"",
				"og_deskripsi"=>"",
				"status"=>"",
				"kategori"=>""
			);

			return true;

		}


	}

	function ambil_gambar(){
		if($this->id > 0){
			$query=$this->db->query("SELECT * FROM foto_galeri WHERE id_galeri='".$this->id."' ORDER BY id_foto DESC");
			if($query->num_rows()>0){

				$this->photos=$query->result_array();
			}
			return true;
		} else {
			return false;
		}
	}


	function ambil_kategori(){

		$query=$this->db->query("SELECT * FROM kategori_galeri WHERE aktif='Y' AND terhapus='N' ORDER BY id DESC");

		return $query->result_array();
	}

	function ambil_kategori_umum(){

		$query=$this->db->query("SELECT * FROM kategori WHERE aktif='Y' AND terhapus='N'");

		return $query->result_array();
	}

}

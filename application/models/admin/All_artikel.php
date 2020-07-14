<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class All_artikel extends CI_Model {

	public $list_kategori;
	public $list_tag;

	function __construct()
	{
		parent::__construct();
	}

	function get_artikel(){
		$cari=$this->db->query("SELECT * FROM artikel WHERE artikel_terhapus='N' ORDER BY artikel_id DESC");
		$kategori=$this->db->query("SELECT * FROM kategori WHERE aktif='Y' AND terhapus='N'");
		$arKat=array();
		$arKat[0]="";
		if($kategori->num_rows()>0){
			foreach ($kategori->result_array() as  $value) {
				$arKat[$value['id_kategori']]=$value['nama_kategori'];
			}			
		}

		$result="";
		if($cari->num_rows()>0){
			
			foreach ($cari->result_array() as $value) {
				if($this->session->userdata('id_user')==$value['artikel_id_user'] || $this->session->userdata('id_user')==1 || $value['artikel_editable']=='Y'){
					$delete_button="<i id='$value[artikel_id]' style='color: red;cursor:pointer;' class='fa fa-times-circle btn-hapus-artikel'></i>";
					$edit_button="<a href='".base_url()."admin/artikel/$value[artikel_id]'><i class='fa fa-edit btn-edit-artikel'></i></a>";
				}else{
					$delete_button="<i class='fa fa-times-circle' disabled='disabled'></i>";
					$edit_button="<i class='fa fa-edit' disabled='disabled'></i>";
				}

				$result.="<tr class='artikel_tr' id='$value[artikel_id]'>";
				$result.="<td>$value[artikel_judul]</td>";
				$result.="<td>".@$arKat[$value['artikel_kategori']]."</td>";
				$result.="<td>$value[artikel_status]</td>";
				$result.="<td>$value[artikel_tgl_posting]</td>";
				$result.="<td>$value[artikel_tgl_last_edit]</td>";
				$result.="<td>$edit_button &nbsp; $delete_button</td>";
				$result.="</tr>";
				
			}
		}

		return $result;
	}

	
	function get_kategori(){
		$query=$this->db->query("SELECT * FROM kategori WHERE aktif='Y' AND terhapus='N' ORDER BY id_kategori");
		if($query->num_rows()>0){
			foreach($query->result_array() as $data){
				$this->list_kategori.="<option value='$data[id_kategori]' >";
				$this->list_kategori.="$data[nama_kategori]";
				$this->list_kategori.="</option>";
			}
		} else {
			$this->list_kategori=false;
		}
	}

	function get_artikel_kategori($id){
		$kategori_artikel='';
		$artikel=$this->db->query("SELECT artikel_kategori FROM artikel WHERE artikel_id='$id'");
		$_artikel=$artikel->row();
		$id_kategori=$_artikel->artikel_kategori;

		$query=$this->db->query("SELECT * FROM kategori WHERE aktif='Y' AND terhapus='N' ORDER BY id_kategori");
		if($query->num_rows()>0){
			foreach($query->result_array() as $data){
				$selected=($id_kategori==$data['id_kategori'])?'selected':'';
				$kategori_artikel.="<option value='$data[id_kategori]' $selected>";
				$kategori_artikel.="$data[nama_kategori]";
				$kategori_artikel.="</option>";
			}

			return $kategori_artikel;
		} else {
			$this->list_kategori=false;
		}
	}

	function get_tags(){
		$query=$this->db->query("SELECT * FROM tags ORDER BY id_tag DESC");
		if($query->num_rows()>0){
			foreach ($query->result_array() as $data) {
				$this->list_tag.="<span class='label label-default span-tag' id='$data[id_tag]' title='not_select'>";
				$this->list_tag.=$data["nama_tag"];
				$this->list_tag.="</span>";
			}
		} else {
			$this->list_tag=false;
		}
	}


	function get_data($id,$user){

		$query=$this->db->query("SELECT * FROM artikel WHERE artikel_id='$id' AND artikel_terhapus='N' ");

		

		if($query->num_rows()>0){

			$data=$query->row();

			if ($user==$data->artikel_id_user || $this->session->userdata('level_user')==1 || $data->artikel_editable=="Y") {

				$carifoto=$this->db->query("SELECT * FROM foto_artikel WHERE id_artikel='$id' order by id_foto DESC");

				$cari_tag=$this->db->query("SELECT * FROM tags ORDER BY id_tag DESC");
				

				$active_tag="";
				$result_tag=$cari_tag->result_array();

				
				$current_tags=explode(",", $data->artikel_tags);
				$jumlah_tag=0;
				foreach ($current_tags as $__data) {
					$jumlah_tag++;
				}


				if($jumlah_tag>0){
					$con=0;
					foreach($result_tag as $_data){
						if(in_array($_data['id_tag'],$current_tags)){
							if($con==0){
								$active_tag.=$_data['id_tag'];
							} else {
								$active_tag.=','.$_data['id_tag'];
							}
							$con++;
						}
					}
				}

				return array(
					"artikel_id"=>$data->artikel_id,
					"artikel_judul"=>($data->artikel_judul),
					"artikel_isi"=>($data->artikel_isi),
					"artikel_kategori"=>$data->artikel_kategori,
					"artikel_tags"=>$active_tag,
					"artikel_foto"=>$data->artikel_foto,
					"artikel_sbg_headline"=>$data->artikel_sbg_headline,
					"artikel_id_user"=>$data->artikel_id_user,
					"artikel_editable"=>$data->artikel_editable,
					"artikel_seo_url"=>$data->artikel_seo_url,
					"artikel_meta_description"=>$data->artikel_meta_description,
					"artikel_meta_author"=>$data->artikel_meta_author,
					"artikel_meta_keyword"=>$data->artikel_meta_keyword,
					"artikel_og_image"=>$data->artikel_og_image,
					"artikel_og_title"=>$data->artikel_og_title,
					"artikel_og_description"=>$data->artikel_og_description,
					"artikel_in_draft"=>$data->artikel_in_draft,
					"artikel_status"=>$data->artikel_status,
					"artikel_aktif"=>$data->artikel_aktif,
					"artikel_photos"=>($carifoto->num_rows()>0)?$carifoto->result_array():false
				);

			} else {
				return false;
			}
		} else {
			return false;
		}
	}
}

?>
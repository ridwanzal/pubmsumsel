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

	
	public function insert()
	{
		$judul  = $this->POST('judul_pengaduan');
		$isi    = $this->POST('isi_pengaduan');
		$tipe   = $this->POST('tipe_pengaduan');
		$lat    = $this->POST('latitude');
		$long   = $this->POST('longitude');
		$gambar = $_FILES['foto_bukti'];

		$data = [
			'judul_pengaduan' => $judul,
			'isi_pengaduan'   => $isi,
			'tipe_pengaduan'  => $tipe,
			'pengadu'         => $this->session->userdata('token')['nama'],
			'waktu_pengaduan' => date('Y-m-d H:i:s'),
			'status'          => 'Belum ditanggapi',
			'bidang_id'       => 4,
			'latitude'        => $lat,
			'longitude'       => $long
		];

		$fileExt = pathinfo($gambar['name'], PATHINFO_EXTENSION);

		$this->db->trans_start();
		$pengaduan = $this->db->insert('pengaduan', $data);
		$id = $this->db->insert_id($pengaduan);
		$this->db->trans_complete();

		if ($gambar) {
			if (!is_dir('assets/uploads/pengaduan/' . $id) . '/') {
				mkdir('./assets/uploads/pengaduan/' . $id . '/', 0777, TRUE);
			}
			
			$config['upload_path']          = './assets/uploads/pengaduan/' . $id;
			$config['allowed_types']        = 'gif|jpg|png|jpeg';
			$config['max_size']             = 190000;
			$config['file_name']            = 'Pengaduan' . '_' . $id . '_'  . date('d-m-Y') . '.' . $fileExt;

			$this->load->library('upload', $config);
			$this->upload->initialize($config);


			if ($this->upload->do_upload('foto_bukti')) {
				$upload_data = $this->upload->data();
				$file        = $config['file_name'];

				$this->db->trans_start();
				$update_pengaduan = ['gambar_pengaduan'  => $file];
				$this->db->where('id_pengaduan', $id)->update('pengaduan', $update_pengaduan);
				$this->db->trans_complete();
			} else {
				$error =  ['error' => $this->upload->display_errors()];
				$this->dump($error); exit;
				$this->flashmsg($error['error'], 'danger');
				redirect('pengaduan');
			}
		}

		if ($this->db->trans_status() === FALSE) {
			$this->flashmsg('Gagal membuat pengaduan', 'danger');
			redirect('pengaduan', $data);
		} else {
			$this->flashmsg('Sukses membuat pengaduan', 'success');
			redirect('pengaduan', $data);
		}
	}

	public function tindak_lanjut($id)
	{
		$bidang = $this->POST('bidang_pengaduan');
		if ($_POST) {
			if ($_POST['btn'] === 'Selesaikan') {
				$data = [
					'status' => 'Sudah ditanggapi'
				];
			} else {
				$data = [
					'bidang_id' => $bidang,
					'status'    => 'Sedang ditanggapi'
				];
			}

			$this->db->trans_start();
			$this->db->where('id_pengaduan', $id)->update('pengaduan', $data);
			$this->db->trans_complete();

			if ($this->db->trans_status() === FALSE) {
				$this->flashmsg('Gagal selesaikan pengaduan', 'danger');
				redirect('dashboard', $data);
			} else {
				$this->flashmsg('Sukses selesaikan pengaduan', 'success');
				redirect('dashboard', $data);
			}
		} else {
			$this->data['pengaduan']= $this->db->get_where('pengaduan', ['id_pengaduan' => $id])->result();
			$this->data['title']    = 'Tindak Lanjut';
			$this->data['bidang']   = $this->db->get('bidang')->result();
			$this->data['content']  = 'tindak_lanjut_pengaduan';
			$this->admin_template($this->data, $this->module);
		}
	}
}

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
		$judul  = $this->input->post('judul_pengaduan');
		$isi    = $this->input->post('isi_pengaduan');
		$tipe   = $this->input->post('tipe_pengaduan');
		$lat    = $this->input->post('latitude');
		$long   = $this->input->post('longitude');
		$nama   = $this->input->post('nama');
		$gambar = $_FILES['foto_bukti']["name"];


		$data = [
			'judul_pengaduan' => $judul,
			'isi_pengaduan'   => $isi,
			'tipe_pengaduan'  => $tipe,
			'pengadu'         => $nama,
			'waktu_pengaduan' => date('Y-m-d H:i:s'),
			'status'          => 'Belum ditanggapi',
			'latitude'        => $lat,
			'longitude'       => $long
		];

		$this->db->trans_start();
		$pengaduan = $this->db->insert('pengaduan', $data);
		$id = $this->db->insert_id($pengaduan);
		$this->db->trans_complete();

		if ($gambar == '') {
			$uploaddir = "assets/uploads/pengaduan/".$id."/";
			if (!is_dir($uploaddir)) {
				mkdir($uploaddir, 0777, TRUE);
			}


			$xdump = [];
			for($i=0;$i<count($gambar);$i++) {
				$temp = explode(".", $gambar[$i]);

				$randx = rand(0,999); 
				$newrand = round(microtime(true)) . $randx;
				$newx = 'LAMP'.$randx.$newrand.$id.date('s');

				$newfilename = $newx . '.' . end($temp);
				$uploadfile = $uploaddir . basename($newfilename);

				if(move_uploaded_file($_FILES['foto_bukti']['tmp_name'][$i],$uploadfile)) {
					$xdump[]  = $newfilename;
				} else {
					$this->flashmsg($error['error'], 'danger');
					redirect('pengaduan');
				}
			}

			$this->db->trans_start();
			$update_pengaduan = ['gambar_pengaduan'  => implode(",", $xdump)];
			$this->db->where('id_pengaduan', $id)->update('pengaduan', $update_pengaduan);
			$this->db->trans_complete();
		}

		$config = Array(
			'protocol' => 'smtp',
			'smtp_host' => 'ssl://smtp.googlemail.com',
			'smtp_port' => 465, 
			'smtp_user' => 'pepdinaspubmtrprovsumsel@gmail.com',
			'smtp_pass' => 'pep221188',
			'mailtype'  => 'html',
			'charset'   => 'iso-8859-1'
		);
		$this->load->library('email', $config);
		$this->email->set_newline("\r\n");
		$this->email->from('no-reply@dpubmtrsumsel.com', 'PEP DINAS PUBMTR PROV SUMSEL ');
		$this->email->to('adityads@ymail.com'); 
		$this->email->subject($judul);
		$this->email->message($isi);
		if (!$this->email->send())
		{
			echo $this->email->print_debugger();
		}

		if ($this->db->trans_status() === FALSE) {
			$this->flashmsg('Gagal membuat pengaduan', 'danger');
			redirect('pengaduan', $data);
		} else {
			$this->flashmsg('Sukses membuat pengaduan', 'success');
			redirect('pengaduan', $data);
		}
	}

}

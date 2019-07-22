<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends AN_Apricot{

	public function __construct(){
		parent::__construct();

		$this->load->model('admin/Kontak_masuk');
	}

	function index(){
		$kategori_pengumuman = '7';
		$kategori_agenda = '8';

		//ambil banner depan
		$this->load->library("banner_depan");
		$this->load->library("user_agent");
		$this->load->model('visitor');

		$data=$this->public_data;
		$data["informasi"]["title"]=$this->title->home();
		$data["informasi"]["current_page"]="home";
		$data["informasi"]["uniqueid"]="home-page";

		$data["informasi"]["og-title"]=$data["informasi"]["title"];
		$data["get_kontak"] = $this->Kontak_masuk->get_data_limit(8);



		$data["banner_depan"]=$this->banner_depan->banner;
		$data["artikel_headline"]=$this->artikel->artikel_headline($this->system_info["max_headline_artikel"]);
		$data["artikel_pengumuman"]=$this->artikel->artikel_kategori($kategori_pengumuman);
		$data["artikel_berita"]=$this->artikel->artikel_berita(6);
		$data["artikel_random"]=$this->artikel->artikel_random();
		$data["artikel_agenda"]=$this->artikel->artikel_kategori($kategori_agenda);
		$data['get_galeri'] = $this->galeri->get_all_galeri();
		$data['galeri_rand'] = $this->galeri->get_galeri_random();
		$data['pagename'] = 'Home';

		$access_token = "12097245702.1677ed0.a50372125dee4a0490dd1036e238fd79";
		$photo_count = 6;
		$json_link = "https://api.instagram.com/v1/users/self/media/recent/?";
		$json_link .="access_token={$access_token}&count={$photo_count}";
		$json = file_get_contents($json_link);
		$obj = json_decode(preg_replace('/("\w+"):(\d+)/', '\\1:"\\2"', $json), true);

		$data['ig'] =  $obj['data'];

	/*	echo '<pre>';
		var_dump($data['ig']);
		echo '</pre>';
		exit();*/

		$this->load->view($this->tema."/header",$data);
		$this->load->view($this->tema."/home",$data);
		$this->load->view($this->tema."/footer",$data);
		
		$user_ip=$_SERVER['REMOTE_ADDR'];
		if ($this->agent->is_browser()){
			$agent = $this->agent->browser();
		}elseif ($this->agent->is_robot()){
			$agent = $this->agent->robot(); 
		}elseif ($this->agent->is_mobile()){
			$agent = $this->agent->mobile();
		}else{
			$agent='Other';
		}

		$tanggal = date("Ymd"); 
		$waktu   = time();


		$this->load->model('visitor');

		$where=[
			'visitor_ip' => $user_ip,
			'visitor_tanggal' => $tanggal,
		];

		$cek = $this->visitor->CekDataRows('visitor',$where)->num_rows();

		if($cek ==0){
			$data=[
				'visitor_ip'=>$user_ip,
				'visitor_tanggal'=>$tanggal,
				'visitor_hits'=>'1',
				'visitor_online'=>$waktu,
				'visitor_perangkat' =>$agent,
			];
			$rd=$this->visitor->InsertData('visitor',$data);
		}else {

			$data=[
				'visitor_hits '=>'+1',
				'visitor_online'=>$waktu,
			]; 
			$where = [
				'visitor_ip' => $user_ip,
				'visitor_tanggal' => $tanggal
			];
			$UpdateData=$this->visitor->UpdateData('visitor',$data,$where);

		}


	}

	public function ajax_get(){
		$ajx = $this->db->query("SELECT
			sum(pl_like = 'yes') AS clike,
			sum(pl_like = 'no') AS cdislike
			FROM page_like")->result();

		echo json_encode($ajx);
	}

	public function ajax_cek(){
		$user_ip=$_SERVER['REMOTE_ADDR'];
		$tipe = $this->input->post('tipe');
		$x = 0;
		$ajxc = $this->db->query("SELECT
			sum(pl_like = '$tipe') AS vlike
			FROM page_like")->result();
		$ajx = $this->db->query("SELECT * from page_like where pl_ip='$user_ip'")->result();
		if(count($ajx) == 1){
			$x = $ajxc;
		} else {
			$ajxd = $this->db->query("INSERT INTO page_like (pl_id,pl_ip,pl_like) values (null,'$user_ip','$tipe')")->result();
		}
		$x = $ajxc;

		
		echo json_encode($x);
	}

}

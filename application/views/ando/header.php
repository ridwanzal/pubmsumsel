<?php
defined('BASEPATH') OR exit('Eiits! Jangan coba coba Mblo!!!!');
?>
<!DOCTYPE html>
<html lang="id-ID" prefix="og: http://ogp.me/ns#">
<head>
	<title>Dinas PUBMTR Sumatera Selatan</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="<?= $informasi['meta_deskripsi']; ?>" />
	<meta name="keywords" content="<?= $informasi['meta_keyword']; ?>" />
	<meta name="author" content="<?= $informasi['author']; ?>" />
	<meta property="og:url" content="<?= $informasi['og-url'];  ?>" />
	<meta property="og:title" content="<?= $informasi['og-title']; ?>" />
	<meta property="og:description" content="<?= $informasi["og-description"]; ?>" />
	<meta property="og:site_name" content="<?= $informasi['og-site_name']; ?>" />
	<meta property="og:image" content="<?= $informasi['og-image']; ?>" />
	<meta property="og:image:type" content="image/jpeg" />
	<meta property="og:type" content="<?= $informasi['og-type']; ?>" />
	<?php if($informasi["current_page"]=="detail-artikel"){ ?>
		<meta property="article:author" content="<?= $informasi['article-author']; ?>" />
		<meta property="article:publisher" content="<?= $informasi['article-publisher']; ?>" />
		<meta property="article:published_time" content="<?= $informasi['article-published_time']; ?>" />
	<?php } ?>
	<link rel="icon" type="image/ico" href="<?= assets_url('img/pu.png') ?>" />
	<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css' />
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css' />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('font-awesome/css/font-awesome.min.css'); ?>" />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('fancybox/source/jquery.fancybox.css'); ?>" />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('fancybox/source/helpers/jquery.fancybox-buttons.css'); ?>" />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('fancybox/source/helpers/jquery.fancybox-thumbs.css'); ?>" />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('jQuery.TosRUs/src/css/jquery.tosrus.all.css'); ?>" />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('bootstrap/css/bootstrap.min.css'); ?>" />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('owl-carousel/owl.carousel.css'); ?>" />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('css/slit-slider.css') ?>" />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('css/animate.css'); ?>" />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('devicons/css/devicons.min.css'); ?>" />
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/jquery.jssocials/1.1.0/jssocials.css" />
	<link rel="stylesheet" type="text/css"  href="https://cdn.jsdelivr.net/jquery.jssocials/1.1.0/jssocials-theme-flat.css" />
	<link rel="stylesheet" type="text/css"  href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.4.1/themes/prism.min.css" />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('css/main.css') ?>" />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('css/custom.css') ?>" />
	<link rel="stylesheet" type="text/css" href="<?= assets_url('css/custom-dinaspu.css') ?>" />
	<link href="<?= assets_url('datatables/media/css/dataTables.bootstrap.css')?>"  />
	<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css" type="text/css" />
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<?php
	if($informasi['current_page'] == 'faq'){

		$schema = array();
		$schema['@context'] = "http://schema.org";
		$schema['@graph'] = array();

		foreach($faq as $f){
			$schema['@graph'][]= array(
				'@type' => 'Question',
				'text' => $f['pertanyaan'],
				'dateCreated' => $f['tanggal'],
				'acceptedAnswer' => array(
					'@type' => 'Answer',
					'text' => $f['jawaban'],
					'dateCreated' =>  $f['tanggal']
				),
			);
		}

		echo '<script type="application/ld+json">';
		echo json_encode($schema,JSON_PRETTY_PRINT);
		echo '</script>';

	} else if($informasi['current_page'] == 'detail-faq'){
		$schema = array();
		$schema['@context'] = "http://schema.org";
		$schema['@graph'] = array();


		$schema['@graph'][]= array(
			'@type' => 'Question',
			'text' => $faq['pertanyaan'],
			'dateCreated' => $faq['tanggal'],
			'acceptedAnswer' => array(
				'@type' => 'Answer',
				'text' => $faq['jawaban'],
				'dateCreated' =>  $faq['tanggal']
			),
		);


		echo '<script type="application/ld+json">';
		echo json_encode($schema,JSON_PRETTY_PRINT);
		echo '</script>';
	}
	?>
	<style type="text/css">
		<?= $informasi["custom_css"]; ?>
	</style>
	<script src="<?= assets_url('js/modernizr-2.6.2.min.js') ?>"></script>

	<style type="text/css">
		/* navbar */
		.navbar-default {
			background-color: transparent;
			border-color: transparent;
			margin-bottom: 0px;
			position: fixed;
			width: 100%;
			border-radius: 0px;
			z-index: 10007;
		}
		.content-block-one {
			padding: 30px;
			margin-bottom: 0px;
			color: inherit;
			background-color: #eee;
		}
		.content-block-one h1,
		.content-block-one .h1 {
			color: inherit;
		}
		.content-block-one p {
			margin-bottom: 15px;
			font-size: 21px;
			font-weight: 200;
		}
		.content-block-one > hr {
			border-top-color: #d5d5d5;
		}
		.container .content-block-one {
			border-radius: 6px;
		}
		.content-block-one .container {
			max-width: 100%;
		}

		.set_quote{
			position: absolute;
			color:white;
			font-size: 12px;
			padding-right: 40px;
			right: 0;
			margin-top: 45px;
			/*
			position: relative;
			color:white;
			font-size: 12px;
			padding-right: 40px;*/
		}

		@media only screen and (max-width: 1400px) {
			.set_quote {
				position: absolute;
				color:white;
				font-size: 12px;
				padding-right: 40px;
				right: 0;
				margin-top: 99px;
			}
		}

		@media screen and (min-width: 768px) {
			.content-block-one {
				padding-top: 48px;
				padding-bottom: 48px;
			}
			.container .content-block-one {
				padding-right: 60px;
				padding-left: 60px;
			}
			.content-block-one h1,
			.content-block-one .h1 {
				font-size: 63px;
			}
		}
		.page-break {
			width: 50%;
			height: 3px;
			background-color: #fff;
			margin: 0 auto;
		}




		.link:hover p{
			font-weight:bold;
		}
		.link:hover a{
			font-weight:bold;
		}
		.link:hover span{
			font-weight:bold !important;
			font-size:17px;
			font-color:red;
		}

	</style>
</head>


<body id="body" class="blue-one-page" >

	<!-- preloader -->
	<!--	<div id="preloader">
            <div class="loder-box">
            	<div class="battery"></div>
            </div>
        </div> -->
        <!-- end preloader -->


        <!--
        Fixed Navigation
        ==================================== -->
        <?php

        class menu_apricot {

        	public $CI;

        	public $menu;

        	function __construct(){
        		$this->CI =& get_instance();
        	}


					// fungsi untuk mengambil menu
        	function ambil_menu($type_menu,$parent=0){

        		$kondisi=array(

        			"menu_id"=>$type_menu,
        			"menu_child_parent" => $parent,
        			"aktif" => "Y"

        		);
						//query ke database
        		$this->CI->db->order_by("posisi","ASC");
        		$query= $this->CI->db->get_where("menu_child",$kondisi);

						//cek apakah memiliki hasil
        		if($query->num_rows()>0){
        			$class=$parent==0?"nav navbar-nav":"dropdown-menu";
        			$this->menu.="<ul class='$class'>";

        			foreach ($query->result_array() as $menu) {
								//cek apakah menu sekarang mempunyai submenu atau tidak
        				$cek=$this->CI->db->get_where('menu_child',array('menu_child_parent'=>$menu['menu_child_id'],'aktif'=>'Y','menu_id'=>$type_menu));

								//jika terdapat sub menu
        				if($cek->num_rows()>0){

        					$this->menu.= "<li class='dropdown link'><a href='$menu[menu_child_url]' target='$menu[menu_child_target]'  class='dropdown-toggle link' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>$menu[menu_child_nama] <span class='caret'></span></a>";
									//panggil ambil_menu() secara reqursive untuk mengambil sub-menu nya
        					$this->ambil_menu($type_menu,$menu['menu_child_id']);
        					$this->menu.= "</li>";

        				}
								//jika tidak memiliki sub menu
        				else {
        					$this->menu.= "<li class='link'><a href='$menu[menu_child_url]' target='$menu[menu_child_target]'>$menu[menu_child_nama]</a>";
        					$this->menu.= "</li>";
        				}

        			}

        			$this->menu.="</ul>";

        		} else {
							//jika tidak ada hasil.
        			return;

        		}

        	}


        }

        $menuPertama = new menu_apricot;
		$menuPertama->ambil_menu(1); //angka 1 adalah ID menu horizontal

		?>


		<?php if(isset($pagename)){ ?>
			<nav class="navbar navbar-default menu-custom navbar-top" role="navigation">
			<?php } else { ?>
				<nav class="navbar navbar-inverse menu-custom navbar-top">
				<?php } ?>
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand pu-brand pu-mar" href="<?= base_url();?>">&nbsp
						<img width="460" src="<?= assets_url('img/logo.svg') ?>" alt="" style="position:relative;top:-3px;" class="img-w img img-responsive">&nbsp
					</a>
				</div>

				<div class="collapse navbar-collapse menu-pu2" id="bs-example-navbar-collapse-1">
					<?= $menuPertama->menu;  ?>
				</div>
				<div  class="set_quote pull-right">
					Bekerja Keras, Bergerak Cepat, Bertindak Tepat
				</div>
			</nav>


			<main class="site-content " role="main">

				<?php

//jika bukan halaman Home
				if($informasi["current_page"]!='home'){

					echo "<div class='section' id='main-konten'>";
				}

				?>

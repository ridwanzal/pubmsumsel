<?php
defined('BASEPATH') OR exit('No direct script access allowed');
//455
?>
<style type="text/css">
	@import url(https://fonts.googleapis.com/css?family=Quicksand:400,300);
	body{
		font-family: 'Quicksand', sans-serif;
	}
	.team{
		padding:75px 0;
	}
	h6.description{
		font-weight: bold;
		letter-spacing: 2px;
		color: #999;
		border-bottom: 1px solid rgba(0, 0, 0,0.1);
		padding-bottom: 5px;
	}
	.profile{
		margin-top: 25px;
	}
	.profile h1{
		font-weight: normal;
		font-size: 20px;
		margin:10px 0 0 0;
	}
	.profile h2{
		font-size: 14px;
		font-weight: lighter;
		margin-top: 5px;
	}
	.profile .img-box{
		opacity: 1;
		display: block;
		position: relative;
	}
	.profile .img-box:after{
		content:"";
		opacity: 0;
		/*background-color: rgba(0, 0, 0, 0.75);*/
		position: absolute;
		right: 0;
		left: 0;
		top: 0;
		bottom: 0;
	}
	.img-box ul{
		position: absolute;
		z-index: 2;
		bottom: 50px;
		text-align: center;
		width: 100%;
		padding-left: 0px;
		height: 0px;
		margin:0px;
		opacity: 0;
	}
	.profile .img-box:after, .img-box ul, .img-box ul li{
		-webkit-transition: all 0.5s ease-in-out 0s;
		-moz-transition: all 0.5s ease-in-out 0s;
		transition: all 0.5s ease-in-out 0s;
	}
	.img-box ul i{
		font-size: 20px;
		letter-spacing: 10px;
	}
	.img-box ul li{
		width: 30px;
		height: 30px;
		text-align: center;
		border: 1px solid #88C425;
		margin: 2px;
		padding: 5px;
		display: inline-block;
		background: #546de5;
	}
	.img-box a{
		color:#fff;
	}
	.img-box:hover:after{
		opacity: 1;
	}
	.img-box:hover ul{
		opacity: 1;
	}
	.img-box ul a{
		-webkit-transition: all 0.3s ease-in-out 0s;
		-moz-transition: all 0.3s ease-in-out 0s;
		transition: all 0.3s ease-in-out 0s;
	}
	.img-box a:hover li{
		border-color: #fff;
		color: #88C425;
	}
	a{
		color:#88C425;
	}
	a:hover{
		text-decoration:none;
		color:#519548;
	}
	i.red{
		color:#BC0213;
	}
</style>
<link rel="stylesheet" type="text/css" href="<?php echo assets_url('struktur_style.css') ?>" />
<div class='container'>
	<div class='row'>
		<div class='col-md-12' id="header-page">
			<h1><span>Struktur Organisasi</span></h1>
		</div>

		<div class='col-md-12 left-side'>
			<section class="team">
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div class="col-lg-12">
								<div class="row pt-md text-center">
									<div class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 profile  col-sm-12 col-xs-12">
										<div class="img-box">
											<p class="text-center">
												<img src="<?= base_url('uploads/struktur_organisasi/default.png')?>" class="img-responsive">
											</p>
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>H. DARMA BUDHY, SH, ST, MT</h1>
										<h2>Plt. KEPALA DINAS PU BINA MARGA DAN TATA RUANG
										PROVINSI SUMATERA SELATAN</h2>
									</div>
								</div>

								<div class="row pt-md text-center">

									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/sekertaris.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>Dr. HJ. MEGAWATY, ST, MT</h1>
										<h2>SEKRETARIS</h2>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/Kabid Jaringan Jalan.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>Ir. RIDWAN, M.M</h1>
										<h2>KEPALA BIDANG PENGEMBANGAN JAR. JALAN</h2>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/default.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>Ir. MUCHTAR. MA</h1>
										<h2>KEPALA BIDANG JALAN</h2>
									</div>
								</div>
								<div class="row pt-md text-center">
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/Kabid Jembatan.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>MUHAMMAD AFFANDI, ST, MSc</h1>
										<h2>KEPALA BIDANG JEMBATAN</h2>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/Bidang Pengujian Peralatan BMD.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>TENDY JUMAT, ST, M.Si</h1>
										<h2>KEPALA BIDANG PENGUJIAN PERALATAN DAN BMD</h2>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/Penataan Ruang.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>FAUSTINO DO CARMO, ST</h1>
										<h2>KEPALA BIDANG PENATAAN RUANG</h2>
									</div>
								</div>
								<div class="row pt-md text-center">
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/default.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>HENDRY WIJAYA, ST, MM</h1>
										<h2>KEPALA UPTD PJ3 KABUPATEN LAHAT</h2>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/UPTD Ogan Komering Ulu dan UPTD Jalan Jembatan OKU.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>INDRA ASMI MUHARAM, ST</h1>
										<h2>KEPALA UPTD PJ3 KABUPATEN OGAN KOMERING ULU</h2>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/default.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>Ir. TARMISI, MM, M.SI</h1>
										<h2>KEPALA UPTD PJ3 KABUPATEN BANYUASIN</h2>
									</div>
								</div>

								<div class="row pt-md text-center">
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/UPTD Kota Palembang.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>Ir. ARLAN, M.T.</h1>
										<h2>KEPALA UPTD PJ3 KOTA PALEMBANG</h2>
									</div>
									
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/default.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>Ir. Hj. MEJIARTI, MT</h1>
										<h2>KEPALA UPTD PJ3 KABUPATEN OGAN KOMERING ILIR</h2>
									</div>
									
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/UPTD Musi Rawas.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>Ir. MUJIANTO, M.Si</h1>
										<h2>KEPALA UPTD PJ3 KABUPATEN MUSI RAWAS</h2>
									</div>
								</div>

								<div class="row pt-md text-center">
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/UPTD Muara Enim.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>NURUDIN HANAFIA, ST, MT</h1>
										<h2>KEPALA UPTD PJ3 KABUPATEN MUARA ENIM</h2>
									</div>
									
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/UPTD Ogan Komering Ulu dan UPTD Jalan Jembatan OKU.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>INDRA ASMI MUHARAM, ST</h1>
										<h2>KEPALA UPTD PJ3 KABUPATEN OKU TIMUR</h2>
									</div>
									
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/UPTD Laboratorium Bahan Konstruksi.png')?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1>Ir. NYAYU YULITA</h1>
										<h2>KEPALA UPTD LABORATORIUM BAHAN KONTRUKSI</h2>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>



			

				<!-- <?php if($page["foto"]!=""){
					echo "<img class='img-responsive' alt='$page[judul]' src='$page[foto]' />";
				} 
				foreach($so as $cb):
					?>
					<img src="<?= base_url();?>uploads/bidang/<?= $cb['so_foto']; ?>"  class="<?= $cb['jabatan_kd'];?>">


					<div class="t_<?= $cb['jabatan_kd']; ?>">
						<p><?= $cb['so_nama']; ?><br></p>  
						<div class="ca">
							NIP : <?= $cb['so_nip']; ?>   
						</div>
					</div>
					<?php endforeach; ?>  -->





					<!-- <img class='img-responsive' src="<?= base_url(); ?>/uploads/bidang/struktur_org.svg" />	 -->

					<div class='konten'>
						<div class="isi">
							<?php // echo reversequote($page['isi'],'all'); ?>
						</div>
					</div>
				</div>
			</div>
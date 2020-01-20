<?php
defined('BASEPATH') OR exit('No direct script access allowed');
//355
?>
<link rel="stylesheet" type="text/css" href="<?php echo assets_url('struktur_style.css') ?>" />


<header class="masthead masthead-page mb-5" style=" background-image: url(<?= base_url('an-component/media/upload-gambar-pendukung/banner.png')?>);
background-position: center;
background-repeat: no-repeat;
background-size: cover;">
<div class="container">
	<div class="row align-items-center">
		<div class="col-lg-8 py-5">
			<h1 class="mb-2"><img src=""></h1>
		</div>
	</div>
</div>
<svg style="pointer-events: none" class="wave" width="100%" height="50px" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 75">
	<defs>
		<style>
			.a {
				fill: none;
			}

			.b {
				clip-path: url(#a);
			}

			.c,
			.d {
				opacity: 0.1;
				fill: #f1f1f1;
			}

			.d {
				opacity: 0.3;
				isolation: isolate;
			}
		</style>
		<clipPath id="a">
			<rect class="a" width="1920" height="75" />
		</clipPath>
	</defs>
	<title>wave</title>
	<g class="b">
		<path class="c" d="M1963,327H-105V65A2647.49,2647.49,0,0,1,431,19c217.7,3.5,239.6,30.8,470,36,297.3,6.7,367.5-36.2,642-28a2511.41,2511.41,0,0,1,420,48" />
	</g>
	<g class="b">
		<path class="d" d="M-127,404H1963V44c-140.1-28-343.3-46.7-566,22-75.5,23.3-118.5,45.9-162,64-48.6,20.2-404.7,128-784,0C355.2,97.7,341.6,78.3,235,50,86.6,10.6-41.8,6.9-127,10" />
	</g>
	<g class="b">
		<path class="d" d="M1979,462-155,446V106C251.8,20.2,576.6,15.9,805,30c167.4,10.3,322.3,32.9,680,56,207,13.4,378,20.3,494,24" />
	</g>
	<g class="b">
		<path class="d" d="M1998,484H-243V100c445.8,26.8,794.2-4.1,1035-39,141-20.4,231.1-40.1,378-45,349.6-11.6,636.7,73.8,828,150" />
	</g>
</svg>
</header>


<div class='row'>
	<div class='col-md-12' style="margin-left: 5px">
		<div class='col-md-12' id="header-page">
		</div>

		<div class="col-md-4">

			<div class="row">
				<div class="panel panel-default">
					<div class="panel-heading"><b style="font-size: 15pt;color: #2155a2">Profil Instansi</b></div>
					<ul class="list-group">
						<li class="list-group-item"><a href="<?= base_url('page/1-visi-dan-misi'); ?>"  style="color:black">Visi Misi</a></li>
						<li class="list-group-item"><a href="<?= base_url('page/6-dasar-hukum'); ?>"  style="color:black">Dasar Hukum</a></li>
						<li class="list-group-item"><a href="<?= base_url('page/2-tugas-dan-fungsi'); ?>"  style="color:black">Tugas dan Fungsi</a></li>
						<li class="list-group-item"><a href="<?= base_url('page/struktur-organisasi'); ?>"  style="color:black">Struktur Organisasi</a></li>
					</ul>
				</div>
			</div>

			<div class="row">
				<div class="panel panel-default">
					<div class="panel-heading"><b style="font-size: 15pt;color: #2155a2">Berita</b></div>
					<ul class="list-group">
						<?php foreach ($artikel_berita as $aka): ?>
							<li class="list-group-item">
								<?= "<a href='".artikel_url($aka['id'],$aka['slug'])."' style='color:black'><p class='news_header_text'> ".$aka['judul']."</p></a>"; ?>
							</li>
						<?php endforeach; ?>
					</ul>
				</div>
			</div>


		</div>

		<div class="col-md-8">
			<div class="panel col-md-12">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-12" style="margin-left: -25px">
							<?php
							$no=0;
							$arAtas = [];
							foreach ($so as $key => $value) : $no++;  if($no==1){ 

								for ($xatas= 2; $xatas <= count($so); $xatas++) { 
									if ( $bagi = $xatas % 4 == 0 ) {
										$arAtas[] = $xatas-2;
									}
								}

								for ($xbawah= 5; $xbawah <= count($so); $xbawah++) { 
									if ( $bagi = $xbawah % 4 == 0 ) {
										$arBawah[] = $xbawah-3;
									}
								}
								?>
								<div class="row pt-md text-center">
									<div class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 profile  col-sm-12 col-xs-12">
										<div class="img-box">
											<p class="text-center">
												<img src="<?= base_url('uploads/struktur_organisasi/'.$value['so_foto'])?>" class="img-responsive">
											</p>
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1><?= $value['so_nama'];?></h1>
										<h2><?= $value['jabatan_nama'];?></h2>
									</div>
								</div>
							<?php } else if($no>1){ ?>
								<?php if(in_array($no, $arAtas)){?>
									<div class="row pt-md text-center">
									<?php } ?>
									<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 profile">
										<div class="img-box">
											<img src="<?= base_url('uploads/struktur_organisasi/'.$value['so_foto'])?>" class="img-responsive">
											<ul class="text-center">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h1><?= $value['so_nama'];?></h1>
										<h2><?= $value['jabatan_nama'];?></h2>
									</div>
									<?php if(in_array($no, $arBawah)){?>
									</div>
								<?php } ?>
							<?php  } endforeach; ?>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>


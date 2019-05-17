<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<link rel="stylesheet" type="text/css" href="<?php echo assets_url('struktur_style.css') ?>" />

<div class='container'>
	<div class='row'>

		<div class='col-md-12' id="header-bidang">
			<div class="pu-title">
				<h3 style="color:#111;"><span><?php echo $heading; ?></span></h3>
			</div>
		</div>

		<div class='col-md-12 left-side'>

			<div class="col-md-12">
				<div class="artikel">
					<div class="konten">


						<div class="row">
							<div class="col-md-10 col-md-offset-1">
								<div class="col-lg-12">


									<div class="row pt-md text-center">


										<?php  
										echo "&ensp;&ensp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

										if($bidang['id'] == '2783'){
											$jkel='1';
										} else if($bidang['id'] == '7822'){
											$jkel='3';
										} else if($bidang['id'] == '7549'){
											$jkel='4';
										} else if($bidang['id'] == '3899'){
											$jkel='6';
										} else if($bidang['id'] == '2750'){
											$jkel='2';
										} else if($bidang['id'] == '4454'){
											$jkel='5';
										} else if($bidang['id'] == '2941'){
											$jkel='14';
										} else if($bidang['id'] == '5041'){
											$jkel='15';
										} else if($bidang['id'] == '3187'){
											$jkel='7';
										} else if($bidang['id'] == '2094'){
											$jkel='13';
										} else if($bidang['id'] == '1691'){
											$jkel='9';
										} else if($bidang['id'] == '6358'){
											$jkel='12';
										} else if($bidang['id'] == '2586'){
											$jkel='11';
										} else if($bidang['id'] == '194'){
											$jkel='8';
										} else if($bidang['id'] == '1796'){
											$jkel='10';
										} else {
											$jkel='0';
										}

										$ck = $this->db->query("SELECT * FROM struktur_organisasi inner join jabatan on struktur_organisasi.jabatan_id = jabatan.jabatan_id && jabatan.jabatan_kelompok='$jkel'")->result_array();

										foreach($ck as $ca): 

											if($ca['jabatan_jenis']=='kepala'){
												?>
												<div class="row pt-md text-center">

													<div class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 profile  col-sm-12 col-xs-12">
														<div class="img-box">
															<p class="text-center">
																<img src="<?=base_url();?>uploads/struktur_organisasi/<?= $ca['so_foto']; ?>" class="img-responsive">
															</p>
															<ul class="text-center">
																<a href="#"><li><i class="fa fa-facebook"></i></li></a>
																<a href="#"><li><i class="fa fa-twitter"></i></li></a>
																<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
															</ul>
														</div>
														<h1><?= $ca['so_nama']; ?></h1>
														<h2><?= $ca['jabatan_nama']; ?>  </h2>
													</div>
												</div>
											<?php	} else { ?>
												<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 profile">
													<div class="img-box">
														<img src="<?=base_url();?>uploads/struktur_organisasi/<?= $ca['so_foto']; ?>" class="img-responsive">
														<ul class="text-center">
															<a href="#"><li><i class="fa fa-facebook"></i></li></a>
															<a href="#"><li><i class="fa fa-twitter"></i></li></a>
															<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
														</ul>
													</div>
													<h1><?= $ca['so_nama']; ?></h1>
													<h2><?= $ca['jabatan_nama']; ?>  </h2>
												</div>
											<?php } endforeach; 	 ?>

										</div>

									</div>
								</div>
							</div>
						</div>



					</div>
				</div>
			</div>
			<div class="col-md-12">
				<div class="pu-title">
					<h3 style="">Tugas dan Fungsi</h3>
				</div>
			</div>

			<div class="col-md-12">
				<div class="artikel">

					<div class='konten'>
						<div class="isi" style="margin:20px;">
							<div class="row">
								<?php 
								if($bidang['tugas']==null || $bidang['tugas']=='') { ?>
									<?php
								} else {
									?>
									<h4 style="font-weight:600;font-style:bold;">Tugas</h4>
									<?php echo html_entity_decode($bidang['tugas']) ?> <br>
								<?php } 

								if($bidang['fungsi']==null || $bidang['fungsi']=='') {} else {
									?>
									<h4 style="font-weight:600;font-style:bold;">Fungsi</h4>
									<?php echo html_entity_decode($bidang['fungsi']) ?>

								<?php } ?>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="col-md-12">

				<div class="pu-title">
					<h3 style="">List Berita</h3>
				</div>
			</div>
			<div class="col-md-12">
				<div class="artikel">

					<div class='konten'>
						<div class="isi">

							<div class="row list-berita">
								<ul>
									<?php foreach ($artikel_kategori as $kategori){ 
										if($kategori['artikel_tags'] !== null or $kategori['artikel_tags'] !== ''){
											$gimplode = explode(",",$kategori['artikel_tags']);
											if (in_array($tag_id,$gimplode)) {
												?>
												<li>
													<?php echo "<h4><a href='".artikel_url($kategori['artikel_id'],$kategori['artikel_seo_url'])."'>".$kategori['artikel_judul']."</a></h4>"; ?>
													<p>posted by <?php echo $kategori['nama_lengkap'] ?> <?php format_tanggal($kategori['artikel_tgl_posting']) ?></p>
												</li>
												<?php 
											}
										}
									}
									?>
								</ul>
							</div>
						</div>

					</div>
				</div>

			</div>
			<div class="col-md-12">

				<div class="pu-title">
					<h3 style="">Galeri Foto</h3>
				</div>

			</div>
			<div class="col-md-12">

				<div class="row galeri-foto">
					<div class="col-md-12">
						<?php $i = 0; ?>
						<?php foreach ($get_galeri as $galeri): ?>
							<?php if ($i<6): ?>

								<div class="col-md-3 col-sm-12" style="margin-top:10px;">
									<div style="width:100%;height:auto;background-color:#77848e;">
										<?php echo  "<a href='".galeri_url($galeri['id'],$galeri['slug'])."'>
										<img class='img-responsive img' src='".img_galeri_url($galeri['foto'])."' alt='$galeri[nama]' style='width:100%;max-height:170px; height: 170px; backgournd-size:cover;background-position: 50% 50%;text-align:center';/></a>";  ?>

									</div>
								</div>
							<?php endif; ?>
							<?php $i++; ?>
						<?php endforeach; ?>


					</div>
				</div>
			</div>
		</div>

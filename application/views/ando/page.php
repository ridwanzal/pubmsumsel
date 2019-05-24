<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>


<div class='container'>
	<div class='row'>
		<div class='col-md-12' id="header-page">
			<h1><span><?php echo $heading; ?></span></h1>
		</div>



		<div class='col-md-12 left-side'>

			<div class="artikel">

				<?php if($page["foto"]!=""){
					echo "<img class='img-responsive' alt='$page[judul]' src='$page[foto]' />";
				} 
				?>

				<div class='konten'>
					<div class="isi">
						<div class="col-md-12" style="text-align: center">
							<img src="<?= base_url('an-component/media/upload-gambar-pendukung/sumsellogo.png')?>" style="background-size: cover;z-index: 1;position: absolute;opacity: 0.3;color: #888; padding-top: 150px;width: 200px;margin-left: -105px">
						</div>
						<?php echo reversequote($page['isi'],'all'); ?>
					</div>

				</div>
			</div>

		</div>
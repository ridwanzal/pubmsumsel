<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>


<div class='container'>
	<div class='row'>

		<div class='col-md-12' id="header-page">
			<h1><span>Semua Galeri</span></h1>
		</div>

		<div class='col-md-12 left-side'>

			<div class="row">
				<?php foreach ($semua_galeri as $galeri) { ?>
					<div class="col-md-4" style="padding: 3px !important;">
						<div class="artikel" style="height: 320px !important;">
							<a href="" data-toggle="modal" data-target="#myModal" onclick="getfoto('<?= img_galeri_url($galeri['foto']); ?>','<?php $galeri["slug"]; ?>','<?= $galeri["id"];?>','<?= $galeri["nama"]; ?>')"><img class="wow fadeIn" style="width: 100%;max-height:230px" src="<?= img_galeri_url($galeri['foto']); ?>" alt="<?= $galeri['nama'] ?>"/></a>
							<div class="konten" style='text-align: center;padding:'>
								<a href=<?= galeri_url($galeri['id'],$galeri['slug']); ?>><h5><?= $galeri['nama'] ?></h5></a>
							</div>
						</div>
					</div>

				<?php } ?>					
			</div>	
			<div style='width:100%;text-align: center'>
				<?php echo $pagination; ?>

			</div>

		</div>
		

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header text-center">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel"><span id="nama"></span></h4>
					</div>
					<div class="modal-body text-center"  style="text-align: center">
						<div class="row text-center" style="text-align: center">
							<div class="col-md-12 text-center" style="text-align: center">
								<p style="text-align: center">
									<img src="" id="foto" class="img-responsive" width="570px" height="50px" style="text-align: center">
								</p>	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script type="text/javascript">
			function getfoto(foto,slug,id,nama){
				$('#nama').text(nama);
				$('#slug').text(slug);
				$('#foto').attr('src', foto);
			}
		</script>
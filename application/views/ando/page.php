<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>


<?php 
if(isset($heading)) :
	if($heading == 'Visi dan Misi'):
		?>
		<header class="masthead masthead-page mb-5" style=" background-image: url(<?= base_url('an-component/media/upload-gambar-pendukung/bannervisi.png')?>);
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
		<svg style="pointer-events: none" class="wave" width="100%" height="100px" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 75">
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
					<rect class="a" width="1920" height="100" />
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
<?php endif; endif; ?>

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
							<img src="<?= base_url('an-component/media/upload-gambar-pendukung/visimisi.png')?>" style="background-size: cover;z-index: 1;position: absolute;color: #888; padding-top: 780px;width: 900px;margin-left: -355px">
						</div>
						<?php echo reversequote($page['isi'],'all'); ?>
					</div>

				</div>
			</div>

		</div>
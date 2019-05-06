<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div class='container'>
<div class='row'>
	<div class='col-md-12' id="header-page">
			<h1><span>Data Infrastruktur</span></h1>
	</div>

		<div class='col-md-12 left-side'>
			<div class="artikel">
				<div class="konten">
        <p>SK Gubernur Th. 2016</p>
        <div title="SK Gubernur Th. 2016" style="background : #eee; padding: 10px 10px 10px 15px; margin-top:5px; margin-bottom:30px; border-radius:4px;s"><a href='<?=base_url();?>an-component/media/upload-galeri/sk_gub_2016.pdf'><span class="fa fa-file "></span>&nbsp;&nbsp;View Documents</a></div>
        <p>Fungsi Jaringan Jalan</p>
        <img src='<?=base_url();?>an-component/media/upload-galeri/fungsi_jaringan_jalan.jpg'>
        <p>Prasarana Jalan</p>
        <img src='<?=base_url();?>an-component/media/upload-galeri/prasarana_jalan_A3.jpg'>
<!-- <div class="panel-group" id="accordion">
    <?php foreach($get_year_infra as $i) :?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?= $i['tahun']; ?>">
             <div class="row">
              <div class="col-md-6">Tahun <?= $i['tahun']; ?></div>
              </div>
            </a>
        </h4>
      </div>
      <div id="collapse<?= $i['tahun']; ?>" class="panel-collapse collapse ">
        <div class="panel-body">
          
          
				 <div class="table-responsive"   >
          <table class="slug-table table table-bordered table-striped dt-responsive">
       
            <tr>
              <th>Nama Kegiatan</th>
              <th>Anggaran</th>
              <th>Nilai Kontrak</th>
              <th>Realisasi Pekerjaan</th>
              <th>PPK</th>
              <th>Nama Pelaksana</th>
            </tr>
        
            <tbody>
            <?php 
            $cge =  $this->db->get_where('infrastruktur', array('tahun' => $i['tahun']));

            foreach ($cge->result() as $infrastruktur): 
            ?>
              <tr>
                <td><?php echo $infrastruktur->nama_kegiatan ?></td>
                <td><?php echo "Rp. ".number_format($infrastruktur->anggaran) ?></td>
                <td><?php echo "Rp. ".number_format($infrastruktur->nilai_kontrak) ?></td>
                <td><?php echo $infrastruktur->progres." %" ?></td>
                <td><?php echo $infrastruktur->ppk ?></td>
                <td><?php echo $infrastruktur->nama_pelaksana ?></td>
              </tr>
            <?php endforeach; ?>
            </tbody>
          </table>
          
          </div>
          
      
            </div>
         
       
      </div>
    </div>
    <?php endforeach; ?>
    
  </div> -->
				    
				    
				    
				    
				    
				    
				    
				    
		
				</div>
			</div>

		</div>

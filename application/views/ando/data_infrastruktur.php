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


          <div class="panel-group" id="accordion">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion" href="#collapsejalan">
                    <div class="row">
                      <div class="col-md-6">Tabel Ruas Jalan</div>
                    </div>
                  </a>
                </h4>
              </div>
              <div id="collapsejalan" class="panel-collapse collapse ">
                <div class="panel-body">
                  <div class="table-responsive"   >
                    <table class="slug-table table table-bordered table-striped dt-responsive">
                      <tr>
                        <td>No. </td>
                        <td>Nomor Ruas</td>
                        <td>Nama Ruas</td>
                        <td>Panjang Ruas Jalan</td>
                      </tr>
                      <tbody>
                        <?php 
                        $sumd = 0; 
                        $no=0;
                        foreach ($get_infrastruktur as $infrastruktur): 
                          $sumd += $infrastruktur->panjang_ruas;
                          $no++;
                          ?>
                          <tr>
                            <td><?= $no ?></td>
                            <td><?= $infrastruktur->no_ruas ?></td>
                            <td><?= $infrastruktur->nama_ruas ?></td>
                            <td><?= $infrastruktur->panjang_ruas ?></td>
                          </tr>
                        <?php endforeach; ?>
                        <tr class="text-bold">
                          <td colspan="3" class="text-center">Total</td>
                          <td><?= $sumd ?></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <p>Peta Jalan Provinsi Sumatera Selatan</p>
          <img class="wow fadeIn" style="border: 1px solid #f1f1f1;border-radius: 4px;margin-top: 10px;"  src='<?=base_url();?>an-component/media/upload-galeri/peta_jalan_sumsel.jpeg'>
          <br/>
          <br/>
          <p>Fungsi Jaringan Jalan</p>
          <img class="wow fadeIn" style="border: 1px solid #f1f1f1;border-radius: 4px;margin-top: 10px;" src='<?=base_url();?>an-component/media/upload-galeri/fungsi_jaringan_jalan.jpg'>
          <br/>
          <br/>
          <p>Prasarana Jalan</p>
          <img class="wow fadeIn" style="border: 1px solid #f1f1f1;border-radius: 4px;margin-top: 10px;"  src='<?=base_url();?>an-component/media/upload-galeri/prasarana_jalan_A3.jpg'>
        </div>
      </div>
    </div>

<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<style type="text/css">
  
  .square {
    width: 100%;
    height: 3rem;
    background-color: yellow;
    border: 3px solid black;
  }
</style>

<div class='container'>
  <div class='row'>
    <div class="text-danger"><?php echo $this->session->flashdata('msg');?></div>
    <div class='col-md-12' id="header-page">
      <h1><span>Tambah Data Laboratorium</span></h1>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div class="row">
        <div class="col-md-8">
          <div id="map" style="height: 500px;width: auto"></div>
        </div>
        <div class="col-md-4">
          <form>
            <div class="form-group">
              <label for="latitude">Latitude</label>
              <input type="text" class="form-control" id="latitude" aria-describedby="latitude"
              placeholder="Titik koordinat">
            </div>
            <div class="form-group">
              <label for="longitude">Longitude</label>
              <input type="text" class="form-control" id="longitude" placeholder="Titik koordinat">
            </div>
            <div class="form-group">
              <div id="address"></div>
            </div>
            <div class="form-group">
              <input type="button" id="btn_search" class="btn btn-primary" value="Cari">
            </div>
          </form>
        </div>
      </div>

      <div class="row mt-5">
        <div class="col-lg-12">
          <p>Keterangan:</p>
          <div class="row">
            <div class="col-lg-2">
              <div class="square"></div>
            </div>
            <div class="col-lg-10">
              <p>Jika lokasi pengaduan berada pada jalur ini, maka sudah selesai dengan kewenangan dinas PU BINA MARGA Kabupaten Musi Rawas. Silahkan tetap mengirimkan laporan yang tidak berada pada jalur tersebut sehingga menjadi basis data kami untuk bisa didata.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
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
    <div class='col-md-12' id="header-page">
      <h1><span>Form Pengaduan</span></h1>
    </div>
  </div>
  
  <div class="row">
    <div class="col-lg-12">
      <div class="text-danger"><?php echo $this->session->flashdata('msg');?></div>
      <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="ibox ">
              <div class="ibox-title">
                <h2>Lokasi Pengaduan</h2>
              </div>
              <div class="ibox-content">
                <div id="map" style="height: 500px"></div>
                <hr>
              </div>
            </div>
          </div>
        </div>
      </div>

      <form id="form" action="<?= base_url('tambah-pengaduan')?>" method="post" enctype="multipart/form-data" class="wizard-big">
        <div class="row">
          <div class="col-lg-8">
            <h2>Informasi Umum</h2>
            <div class="form-group">
              <label>Nama</label>
              <input id="nama" name="nama" type="text" class="form-control">
            </div>
            <div class="form-group">
              <label>Judul saran atau pengaduan</label>
              <input id="judul_pengaduan" name="judul_pengaduan" type="text" class="form-control">
            </div>
            <div class="form-group">
              <label>Isi saran atau pengaduan</label>
              <textarea name="isi_pengaduan" class="form-control summernote"
              placeholder="Write your news"></textarea>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Tipe saran atau pengaduan<br />
                <small class="text-navy">Silahkan pilih salah satu</small>
              </label>

              <div class="col-sm-8">
                <div>
                  <label> 
                    <input type="radio" value="Terbuka" id="optionsRadios1" name="tipe_pengaduan">
                    Terbuka
                  </label>
                </div>
                <div>
                  <label>
                    <input type="radio" value="Rahasia" id="optionsRadios2" name="tipe_pengaduan">
                    Rahasia
                  </label>
                </div>
                <div>
                  <label>
                    <input type="radio" value="Anonim" id="optionsRadios3" name="tipe_pengaduan">
                    Anonim
                  </label>
                </div>
              </div>
            </div>
            <!-- <div class="row mt-5">
              <div class="form-group col-lg-6">
                <label>Latitude</label>
                <input id="latitude" name="latitude" type="text" readonly class="form-control" required>
              </div>
              <div class="form-group col-lg-6">
                <label>Longitude</label>
                <input id="longitude" name="longitude" type="text" readonly class="form-control" required>
              </div>
            </div>
            <small class="text-danger">Geser lokasi pada peta di atas untuk mengisi latitude longitude</small> -->
          </div>
          <div class="col-lg-4">
            <h2>&nbsp;</h2>
            <div class="form-group">
              <label>Masukan Foto Bukti</label>
              <input name="foto_bukti[]" class="form-control" type="file" multiple="" accept="image/*" />
            </div>
            <div class="form-group">
              <label>Latitude</label>
              <input id="latitude" name="latitude" type="text" value="-3.09839657" readonly class="form-control" required>
            </div>
            <div class="form-group">
              <label>Longitude</label>
              <input id="longitude" name="longitude" type="text" value="103.08728316" readonly class="form-control" required>
            </div>
            <div class="form-group">
              <small class="text-danger">Geser lokasi pada peta di atas untuk mengisi latitude longitude</small>
            </div>
            <div class="form-group text-rigt pull-right">
              <input type="submit" name="" class="btn btn-primary">
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
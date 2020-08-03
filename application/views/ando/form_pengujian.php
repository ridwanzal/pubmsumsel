<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>


<div class='container'>
  <div class='row'>
	<div class="text-danger"><?php echo $this->session->flashdata('msg');?></div>
    <div class='col-md-12' id="header-page">
      <h1><span>Tambah Data Laboratorium</span></h1>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <?= form_open_multipart('admin/submit_pengujian');?>
        <div class="form-group">
          <label for="dropdownJenisPengujian">Jenis Pengujian</label>
          <select name="jenis_pengujian" id="dropdownJenisPengujian" class="form-control">
            <option value="Pengujian Bahan Konstruksi (Tanah)">Pengujian Bahan Konstruksi (Tanah)</option>
            <option value="Pengujian Bahan Konstruksi (Agregat)">Pengujian Bahan Konstruksi (Agregat)</option>
            <option value="Pengujian Bahan Konstruksi (Campuran Aspal Beton/Laston)">Pengujian Bahan Konstruksi
              (Campuran Aspal Beton/Laston)</option>
            <option value="Pengujian Bahan Konstruksi (Beton)">Pengujian Bahan Konstruksi (Beton)</option>
            <option value="Audit Mutu Lapangan Bahan Konstruksi (Uji Petik) Tanah">Audit Mutu Lapangan Bahan Konstruksi
              (Uji Petik) Tanah</option>
            <option value="Audit Mutu Lapangan Bahan Konstruksi (Uji Petik) Agregat">Audit Mutu Lapangan Bahan
              Konstruksi (Uji Petik) Agregat</option>
            <option value="Audit Mutu Lapangan Bahan Konstruksi (Uji Petik) Aspal">Audit Mutu Lapangan Bahan Konstruksi
              (Uji Petik) Aspal</option>
            <option value="Audit Mutu Lapangan Bahan Konstruksi (Uji Petik) Beton">Audit Mutu Lapangan Bahan Konstruksi
              (Uji Petik) Beton</option>
          </select>
        </div>
        <div class="form-group">
          <label for="inputNama">Nama</label>
          <input type="text" class="form-control" id="inputNama" name="nama" aria-describedby="emailHelp"
            placeholder="Masukkan nama">
        </div>
        <div class="form-group">
          <label for="inputAlamat">Alamat</label>
          <input type="text" class="form-control" id="inputAlamat" name="alamat" aria-describedby="emailHelp"
            placeholder="Masukkan alamat">
        </div>
        <div class="form-group">
          <label for="inputKTP">No. KTP</label>
          <input type="text" class="form-control" id="inputKTP" placeholder="No. KTP" name="no_ktp">
        </div>
        <div class="form-group">
          <label for="inputEmail">Email</label>
          <input type="email" class="form-control" id="inputEmail" placeholder="Masukkan email Anda" name="email">
        </div>
        <div class="form-group">
          <label for="inputHP">No. HP</label>
          <input type="text" class="form-control" id="inputHP" placeholder="No. HP" name="no_hp">
        </div>
        <div class="form-group">
          <div class="custom-file">
            <label class="custom-file-label" for="surat">Pilih berkas surat</label>
            <input type="file" class="custom-file-input form-control" id="surat" name="surat" accept="image/*, application/pdf">
          </div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </div>
</div>
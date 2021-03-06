<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>


<div class='container'>
  <div class='row'>
    <div class='col-md-12' id="header-page">
      <h1><span>Contact Us</span></h1>
    </div>
    <div class='col-md-12 left-side'>
      <div class="artikel">
        <div class="konten">
          <p style="text-align: center;"><iframe
              src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d996.1096795933119!2d104.74998893714395!3d-2.9756712704679074!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75dfda995445%3A0xe1ffdb86cc1f2d16!2sDinas+Pekerjaan+Umum+Bina+Marga+dan+Tata+Ruang!5e0!3m2!1sid!2sid!4v1557165410210!5m2!1sid!2sid"
              width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></p>
          <p><strong>Dinas Pekerjaan Umum, Bina Marga dan Tata Ruang Provinsi Sumatera Selatan</strong></p>
          <p>Jl. Ade Irma Nasution No.10 <br>Kel. Sungai Pangeran, Kec. Ilir Timur I<br>
            Kota Palembang 30125</p>
          <p>Telp: (0711) 321053</p>
          <hr>
          <div class="row">
            <div class="col-md-12">
              <form action="<?= base_url(); ?>AN_admin/input_kontak" method="POST">
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>No. KTP</label>
                      <input name="ktp" class="form-control" type="text">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Nama</label>
                      <input name="nama" class="form-control" type="text">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Telepon</label>
                      <input name="phone" class="form-control" type="text">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Pesan</label>
                      <textarea class="form-control" name="pesan"></textarea>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <input type="submit" value="Submit" class="btn btn-primary col-md-6 col-md-offset-3">
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <hr>

          <div class="panel-group" id="accordion">
            <?php foreach($get_kontak as $i) :?>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?= $i['id']; ?>">
                    <div class="row">
                      <div class="col-md-6"><?= $i['nama']; ?></div>
                      <div class="col-md-6 text-right"><?= date("d-m-Y H:i:s",strtotime($i['tanggal'])); ?></div>
                    </div>
                  </a>
                </h4>
              </div>
              <div id="collapse<?= $i['id']; ?>" class="panel-collapse collapse ">
                <div class="panel-body">
                  <?= $i['pesan']; ?>
                </div>
                <?php  
                $pesan=$this->db->get_where("reply",array("kontak_id"=>$i['id']))->row_array();
                ?>
                <div class="panel-body">
                  <?= strip_tags($pesan['reply_isi']); ?>
                </div>
              </div>
            </div>
            <?php endforeach; ?>
          </div>
        </div>
      </div>
    </div>
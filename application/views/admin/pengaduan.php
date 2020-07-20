<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
?>

<div class="content-wrapper">
  <section class="content-header">
    <h1>
      Pengaduan
      <small>Pengaturan pengaduan</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li>
      <li class="active">pengaduan</li>
    </ol>
  </section>

  <section class="content">
    <div class="box box-warning">
      <div class="box-body">
        <table class="table table-bordered table-stripped table-kontak">
          <thead>
            <tr>
              <th class="text-center">No.</th>
              <th>Pengadu</th>
              <th>Judul</th>
              <th class="text-center">Tipe Pengaduan</th>
              <th class="text-center">Status</th>
              <th>Waktu</th>
              <th>Berkas</th>
              <th class="text-center">Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php  $no=1;
            foreach ($pengaduan AS $value) { ?>
              <tr data-id="<?= $value['id_pengaduan'] ?>">
                <td class="text-center"><?= $no ?></td>  
                <td><?= $value['judul_pengaduan'] ?></td>
                <td><?= $value['pengadu'] ?></td>      
                <td class="text-center">
                  <span class="label label-<?php if($value['tipe_pengaduan'] == 'Terbuka') { echo "success";} else if($value['tipe_pengaduan'] == 'Anonim') {echo "warning";} else {echo "danger";} ?>">
                    <?= $value['tipe_pengaduan'] ?>
                  </span>
                </td>    
                <td class="text-center">
                  <span class="label label-<?php if($value['status'] == 'Sudah ditanggapi') { echo "success";} else if($value['status'] == 'Sedang ditanggapi') {echo "warning";} else {echo "danger";} ?>">
                    <?= ucfirst($value['status']) ?>
                  </span>
                </td>    
                <td><?= date('d-m-Y H:i:s',strtotime($value['waktu_pengaduan'])); ?></td> 
                <td>
                  <?php
                  if ($value['gambar_pengaduan'] != '') {

                    $ex = explode(',', $value['gambar_pengaduan']);
                    for ($i=0; $i < count($ex); $i++) { ?>
                      <a href="<?= base_url('/assets/uploads/pengaduan/' . $value['id_pengaduan'] . '/' . $ex[$i]) ?>" target="_blank" title="Berkas-<?= $i+1; ?>">
                        <i class="fa fa-image"></i>
                      </a>
                    <?php } 
                    
                  }
                  ?>
                </td>     
                <td class="text-center"> 
                  <a href="<?= base_url('/admin/pengaduan/' . $value['id_pengaduan']) ?>"  data-toggle="modal" data-target="#pesanModal" onclick="set_modal('<?= $value['pengadu']?>','<?= $value['judul_pengaduan']?>','<?= $value['isi_pengaduan']?>','<?= $value['tipe_pengaduan']?>','<?= $value['gambar_pengaduan']?>','<?= date('d-m-Y H:i:s',strtotime($value['waktu_pengaduan']))?>','<?= $value['status']?>','<?= $value['latitude']?>','<?= $value['longitude']?>','<?= $value['id_pengaduan']?>')">
                    <i style='color:green;cursor:pointer' class='fa lihat-pesan fa-eye' data-id="<?= $value['id_pengaduan']; ?>"></i>
                  </a>
                </td>      
              </tr>
              <?php 
              $no++;
            }
            ?>
          </tbody>
        </table>
      </div>
    </div>
  </section>


  <div class="modal fade" id="pesanModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
      <div class="box box-primary">

        <div class="box-header with-border">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="myModalLabel">Konfirmasi Pengaduan</h4>
        </div>

        <form method="POST" action="<?= base_url('save_pengaduan'); ?>">
          <input type="hidden" name="id" id="pengaduan_id">
          <div class="box-body">
            <div class="mailbox-read-info">
              <div class="row">
                <div class="col-md-8">
                  <h3>Pengadu : <span class='nama' id="nama">Loading...</span></h3>
                  <span class='label mr-1 ' id="tipe">Loading...</span>  <span class='label' id="status">Loading...</span><br><br>
                  <h3>Judul : <span id="judul">Loading...</span></h3>
                </div>
                <div class="col-md-4">
                  <span class='mailbox-read-time pull-right tanggal' id="waktu">Loading...</span><br>
                  <span class='mailbox-read-time pull-right ' id="longitude">Loading...</span>
                  <span class='mailbox-read-time pull-right ' >&nbsp;,&nbsp;</span> 
                  <span class='mailbox-read-time pull-right ' id="latitude">Loading...</span>
                  <br>
                </div>
              </div>
            </div>
            <div class="mailbox-read-message pesan">
              <div class="row">
                <div class="col-md-2">Isi Pengaduan</div>
                <div class="col-md-10"  id="isi">
                  Loading...
                </div>
              </div>
            </div>

            <div class="mailbox-read-message pesan">
              <div class="row">
                <div class="col-md-2">Lampiran</div>
                <div class="col-md-10">
                  <div id="gambar"></div>
                </div>
              </div>
            </div>
          </div>

          <div class="box-footer">
            <div class="pull-right" id="dumpbtn">
              <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
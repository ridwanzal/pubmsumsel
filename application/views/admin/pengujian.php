<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
?>

<div class="content-wrapper">
  <section class="content-header">
    <h1>
      Pengujian
      <small>Pengaturan pengujian</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li>
      <li class"active">pengujian</li>

    </ol>
  </section>

  <section class="content">
    <div class="box box-warning">
      <div class="box-body">
        <table class="table table-bordered table-stripped table-kontak">
          <thead>
            <tr>
              <th>No.</th>
              <th>No. KTP</th>
              <th>Nama</th>
              <th>Email</th>
              <th>No. Hp</th>
              <th>Jenis Pengujian</th>
              <th>Tanggal diajukan</th>
              <th>Download</th>
              <th>Lihat Dokumen</th>
            </tr>
          </thead>
          <tbody>
            <?php
  $no=1;
  foreach ($pengujian AS $value) {
    echo "
    <tr data-id='$value[id]'>
            <td>$no</td>
            <td>$value[no_ktp]</td>
            <td>$value[nama]</td>
            <td>$value[alamat]</td>
            <td>$value[no_ktp]</td>
            <td>$value[jenis_pengujian]</td>
            <td>$value[created_at]</td>
            <td>
              <a href='" . base_url('AN_admin/download_file/' . $value['id']) . "'><i style='color:blue;cursor:pointer' class='fa fa-download' ></i></a>
            </td>
            <td>
            <a href='" . base_url('/assets/uploads/surat/' . $value['surat']) . "'><i style='color:green;cursor:pointer' class='fa lihat-pesan fa-eye' data-id='$value[id]' ></i></a>
            </td>
          </tr>
          ";
      $no++;}?>
          </tbody>
        </table>
      </div>
    </div>
  </section>




  <!-- Modal -->
  <div class="modal fade" id="pesanModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
      <div class="box box-primary">
        <div class="overlay">
          <i class="fa fa-refresh fa-spin"></i>
        </div>
        <div class="box-header with-border">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">Inbox</h4>
        </div>

        <div class="box-body">
          <div class="mailbox-read-info">
            <H3><span class='nama'>Sandro Poluan</span></H3>
            <H5><i class='fa fa-envelope-o'></i> <span class='email'>sandro@gmail.com</span>

              <span class='mailbox-read-time pull-right tanggal'>15 Feb. 2015 11:03 PM</span>

            </H5>
          </div>
          <div class="mailbox-read-message pesan">
            hai
          </div>
        </div>

        <div class="box-footer">

          <div class="pull-right">
            <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
            <a class="btn btn-default balas-pesan" href=''><i class='fa fa-envelope-o'></i> Balas</a>
            <button type="button" class="btn btn-default tombol-hapus-pesan" data-id=''><i class="fa fa-trash-o"></i>
              Hapus</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Modal -->










</div>

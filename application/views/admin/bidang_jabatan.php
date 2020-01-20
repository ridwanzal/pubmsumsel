<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
?>

<div class="content-wrapper" >
  <section class="content-header">
    <h1>
      Data Struktur Organisasi
    </h1>
    <ol class="breadcrumb">
      <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li><li class="active">Semua Page</li>
    </ol>
  </section>

  <section class="content">
    <div class="box box-warning">
      <div class="box-body">
        <table class="slug-table table table-bordered table-striped dt-responsive">
          <thead>
            <tr>
              <th>ID</th>
              <th>Nama Jabatan</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <?php $k=0; ?>
            <?php foreach ($get_jabatan as $so): ?>
              <tr>
                <td style="vertical-align: middle;"><?php echo $so->jabatan_id; ?></td>
                <td style="vertical-align: middle;"><?php echo $so->jabatan_nama; ?></td>
                <td style="vertical-align: middle;">
                  <a href="#" data-target="#myModal" data-toggle="modal" onclick="get_data('<?= $so->jabatan_id?>','<?= $so->jabatan_nama?>',)" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i>&nbsp;Edit</a>
                </td>
              </tr>
              <?php $k++; ?>
            <?php endforeach; ?>
          </tbody>
        </table>
      </div>
    </div>
  </section>
</div>

<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <div class="modal-content">
      <form action="<?= base_url('AN_admin/edit_jabatan');?>" method="post" enctype="multipart/form-data">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Data Jabatan</h4>
        </div>
        <div class="modal-body">
          <table class="table ">
            <table class="table table-bordered">
              <tr>
                <td>Nama</td>
                  <input type="hidden" id="gjabatan_id" class="form-control" name="id">
                  <td><input type="text" id="gnama" class="form-control" name="nama"></td>
              </tr>
            </table>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <input type="submit" name="submit" value="Submit" class="btn btn-primary pull-right" />
        </div>
      </form>
    </div>

  </div>
</div>

<script type="text/javascript">
  function get_data(id,nama){
    $('#gjabatan_id').val(id);
    $('#gnama').val(nama);

  }
</script>
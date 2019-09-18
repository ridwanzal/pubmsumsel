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
              <th>Foto</th>
              <th>NIP</th>
              <th>Nama</th>
              <th>Jabatan</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <?php $k=0; ?>
            <?php foreach ($get_struktur_organisasi as $so): ?>
              <tr>
                <td style="vertical-align: middle;"><img src="<?= base_url('uploads/struktur_organisasi/'.$so['so_foto'])?>" style="width: 65px;height: 80px;"></td>
                <td style="vertical-align: middle;"><?php echo $so['so_nip']; ?></td>
                <td style="vertical-align: middle;"><?php echo $so['so_nama']; ?></td>
                <td style="vertical-align: middle;"><?php echo $so['jabatan_nama']; ?></td>
                <td style="vertical-align: middle;">
                  <a href="#" data-target="#myModal" data-toggle="modal" onclick="get_data('<?= $so['so_nip']?>','<?= $so['so_nama']?>','<?= $so['jabatan_id']?>','<?= $so['so_foto']?>','<?= $so['so_id']?>',)" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i>&nbsp;Edit</a>
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
      <form action="<?= base_url('AN_admin/edit_struktur_organisasi');?>" method="post" enctype="multipart/form-data">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Data Struktur Organisasi</h4>
        </div>
        <div class="modal-body">
          <table class="table ">
            <table class="table table-bordered">
              <tr>
                <td colspan="2" class="text-center"><img src="" id="gimg" width="100px" height="130px"></td>
              </tr>
              <tr>
                <td>NIP</td>
                <td>
                  <input type="text" id="gnip" class="form-control" name="nip">
                  <input type="hidden" id="gsoid" class="form-control" name="soid">
                </td>
              </tr>
              <tr>
                <td>Nama</td>
                <td><input type="text" id="gnama" class="form-control" name="nama"></td>
              </tr>
              <tr>
                <td>Jabatan</td>
                <td>
                  <select id="gjabatan" class="form-control" name="jabatan">
                    <?php foreach($get_jabatan as $kk):?>
                      <option value="<?= $kk->jabatan_id ?>"><?= $kk->jabatan_nama ?></option>
                    <?php endforeach; ?>
                  </select>
                </td>
              </tr>
              <tr>
                <td>Foto</td>
                <td>
                  <input type="file" class="form-control" name="filefoto" accept=".jpg,.jpeg,.png">
                  <input type="hidden" id="gfoto" class="form-control" name="oldfoto">
                  <span class="text-danger">*Kosongkan jika tidak ingin mengganti foto</span><br>
                  <span class="text-danger">**Ukuran foto max 2MB</span>
                </td>
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
  function get_data(nip,nama,jabatan,foto,id){
    $('#gsoid').val(id);
    $('#gnip').val(nip);
    $('#gnama').val(nama);
    $('#gjabatan').val(jabatan);

    var base = "<?= base_url('uploads/struktur_organisasi/')?>";
    $("#gimg").attr("src", base+foto);
    $('#gfoto').val(foto);
  }
</script>
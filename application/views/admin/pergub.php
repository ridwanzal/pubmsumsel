<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
?>

<div class="content-wrapper">
  <section class="content-header">
    <h1>
      Pergub
      <small>Data pergub</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li>
      <li class="active">pergub</li>
    </ol>
  </section>

  <section class="content">
    <div class="box box-warning">
      <div class="box-body">
        <div class="row">
          <div class="col-md-12">
            <button class="btn btn-primary pull-right" data-target="#modalAdd" data-toggle="modal"><i class="fa fa-plus"></i> Tambah Data</button>
          </div>
        </div>
        <br>
        <table class="table table-bordered table-stripped table-kontak">
          <thead>
            <tr>
              <th class="text-center">No.</th>
              <th>Judul</th>
              <th class="text-center">Tahun</th>
              <th class="text-center">File</th>
              <th class="text-center">Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php  $no=1;
            foreach ($pergub AS $value) { ?>
              <tr data-id="<?= $value['id_pergub'] ?>">
                <td class="text-center" width="5%"><?= $no ?></td>  
                <td><?= $value['pergub_judul'] ?></td>
                <td class="text-center" width="10%"><?= $value['pergub_tahun'] ?></td>  
                <td class="text-center" width="10%">
                  <?php
                  if ($value['pergub_isi'] != '') {

                    $ex = explode(',', $value['pergub_isi']);
                    for ($i=0; $i < count($ex); $i++) { ?>
                      <a href="<?= base_url('/assets/uploads/pergub/'  . $ex[$i]) ?>" target="_blank" title="Berkas-<?= $i+1; ?>">
                        <i class="fa fa-download"></i> Download
                      </a>
                    <?php } 
                    
                  } else {
                    echo "-";
                  }
                  ?>
                </td>     
                <td class="text-center" width="15%"> 
                  <a href="#" data-target="#myModal" data-toggle="modal" onclick="get_data('<?= $value['id_pergub'] ?>','<?= $value['pergub_judul'] ?>','<?= $value['pergub_tahun'] ?>','<?= $value['pergub_isi'] ?>',)" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i>&nbsp;Edit</a>
                  <a href="#" data-target="#modalDelete" data-toggle="modal" onclick="$('#deleteid').val('<?= $value['id_pergub']; ?>')" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i>&nbsp;Delete</a>
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


  <div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <div class="modal-content">
        <form action="<?= base_url('AN_admin/edit_pergub');?>" method="post" enctype="multipart/form-data">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Data Pergub</h4>
          </div>
          <div class="modal-body">
            <table class="table ">
              <table class="table table-bordered">
                <tr>
                  <td>Judul</td>
                  <input type="hidden" id="gid" class="form-control" name="id">
                  <td><input type="text" id="gjudul" class="form-control" name="judul"></td>
                </tr>
                <tr>
                  <td>Tahun</td>
                  <td>
                    <select id="gtahun" class="form-control" name="tahun">
                      <?php for($i =  date('Y') ; $i >1950; $i--) { ?>
                        <option><?= $i; ?></option>
                      <?php } ?>
                    </select>
                  </tr>
                  <tr>
                    <td>File</td>
                    <td>
                      <input type="file"  class="form-control" name="filepergub">
                      <input type="hidden" id="gisi" class="form-control" name="isi">
                      <span class="text-danger">*kosongkan jika tidak ingin merubah file baru </span>
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


    <div id="modalAdd" class="modal fade" role="dialog">
      <div class="modal-dialog">

        <div class="modal-content">
          <form action="<?= base_url('AN_admin/add_pergub');?>" method="post" enctype="multipart/form-data">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Data Pergub</h4>
            </div>
            <div class="modal-body">
              <table class="table ">
                <table class="table table-bordered">
                  <tr>
                    <td>Judul</td>
                    <td><input type="text"  class="form-control" name="judul"></td>
                  </tr>
                  <tr>
                    <td>Tahun</td>
                    <td>
                      <select  class="form-control" name="tahun">
                        <?php for($i =  date('Y') ; $i >1950; $i--) { ?>
                          <option><?= $i; ?></option>
                        <?php } ?>
                      </select>
                    </tr>
                    <tr>
                      <td>File</td>
                      <td>
                        <input type="file"  class="form-control" required name="filepergub" accept=".pdf">
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

      <div id="modalDelete" class="modal fade" role="dialog">
        <div class="modal-dialog">

          <div class="modal-content">
            <form action="<?= base_url('AN_admin/delete_pergub');?>" method="post" enctype="multipart/form-data">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Hapus Data</h4>
              </div>
              <div class="modal-body">
                <input type="hidden" name="id" id="deleteid">
                Apakah anda yakin ingin menghapus data ini?
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <input type="submit" name="submit" value="Submit" class="btn btn-primary pull-right" />
              </div>
            </form>
          </div>

        </div>
      </div>

    </div>

    <script type="text/javascript">
      function get_data(id,judul,tahun,isi){
        $('#gid').val(id);
        $('#gjudul').val(judul);
        $('#gtahun').val(tahun);
        $('#gisi').val(isi);

      }
    </script>

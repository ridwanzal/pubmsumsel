<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

?>

<div class="content-wrapper" >
  <section class="content-header">
    <h1>
      Data Infrastruktur
    </h1>
    <ol class="breadcrumb">
      <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li><li class="active">Semua Page</li>

    </ol>
  </section>

  <section class="content">

    <div class="box box-warning">
     <div class="box-body">

      <table class="table ">
        <form class="" method="post">
          <table class="table table-bordered">
            <tr>
              <td>Nomor Ruas</td>
              <td><input class="form-control" name="no_ruas" value="<?php echo $data->no_ruas ?>"></td>
            </tr>
            <tr>
              <td>Nama Ruas</td>
              <td><input class="form-control" name="nama_ruas" value="<?php echo $data->nama_ruas ?>"></td>
            </tr>

            <tr>
              <td>Panjang Ruas Jalan</td>
              <td><input class="form-control" name="panjang_ruas" value="<?php echo $data->panjang_ruas ?>"></td>
            </tr>

            <tr>
              <input type="hidden" name="id_infrastruktur" value="<?php echo $data->id_infrastruktur ?>">
              <td colspan="2"><input type="submit" name="submit" value="Submit" class="btn btn-primary" /></td>
            </tr>
          </table>
        </form>
      </table>

    </div>
  </div>

</section><!-- /.content -->
</div><!-- /.content-wrapper -->

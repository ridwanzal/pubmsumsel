<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2019-06-23 17:30:29 --> 404 Page Not Found: Wow%20fadeIn%20delay-1s/index
ERROR - 2019-06-23 17:31:42 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 310
ERROR - 2019-06-23 17:38:14 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 310
ERROR - 2019-06-23 17:38:39 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 307
ERROR - 2019-06-23 17:38:43 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 309
ERROR - 2019-06-23 17:39:00 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 309
ERROR - 2019-06-23 17:39:17 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 309
ERROR - 2019-06-23 17:39:31 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 308
ERROR - 2019-06-23 17:40:01 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 308
ERROR - 2019-06-23 17:40:13 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 309
ERROR - 2019-06-23 17:40:23 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 311
ERROR - 2019-06-23 17:40:28 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 309
ERROR - 2019-06-23 17:40:33 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 309
ERROR - 2019-06-23 17:40:44 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 309
ERROR - 2019-06-23 17:41:18 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 309
ERROR - 2019-06-23 17:41:46 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 309
ERROR - 2019-06-23 17:42:02 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 313
ERROR - 2019-06-23 17:42:02 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 323
ERROR - 2019-06-23 17:42:02 --> Severity: Notice --> Undefined variable: page C:\xampp\htdocs\pubmsumsel\application\views\ando\struktur_organisasi.php 331
ERROR - 2019-06-23 18:09:26 --> Severity: Notice --> Undefined variable: aka C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 709
ERROR - 2019-06-23 18:09:26 --> Severity: Notice --> Undefined variable: aka C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 713
ERROR - 2019-06-23 18:09:26 --> Severity: Notice --> Undefined variable: aka C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 713
ERROR - 2019-06-23 18:09:26 --> Severity: Notice --> Undefined variable: aka C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 713
ERROR - 2019-06-23 18:09:26 --> Severity: Notice --> Undefined variable: aka C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 715
ERROR - 2019-06-23 18:09:26 --> Severity: Notice --> Undefined variable: aka C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 716
ERROR - 2019-06-23 18:09:26 --> Severity: Notice --> Undefined offset: 1 C:\xampp\htdocs\pubmsumsel\application\helpers\front_end_helper.php 151
ERROR - 2019-06-23 18:09:26 --> Severity: Notice --> Undefined offset: 2 C:\xampp\htdocs\pubmsumsel\application\helpers\front_end_helper.php 204
ERROR - 2019-06-23 18:09:26 --> Severity: Notice --> Undefined variable: aka C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 719
ERROR - 2019-06-23 18:09:26 --> Severity: Notice --> Undefined variable: aka C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 720
ERROR - 2019-06-23 18:09:26 --> Severity: Notice --> Undefined variable: aka C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 720
ERROR - 2019-06-23 18:33:09 --> Severity: Notice --> Undefined variable: kategori_pengumuman C:\xampp\htdocs\pubmsumsel\application\controllers\Home.php 32
ERROR - 2019-06-23 18:33:09 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'AND artikel.artikel_status='publish' AND kategori.aktif='Y' AND kategori.terhapu' at line 14 - Invalid query: SELECT artikel.artikel_id AS id,
	 artikel.artikel_judul AS judul,
	 artikel.artikel_isi AS isi,
	 artikel.artikel_tgl_posting AS tanggal,
	 artikel.artikel_tags as tags,
	 artikel.artikel_dibaca AS dibaca,
	 artikel.artikel_seo_url AS slug,
	 kategori.nama_kategori,
	 kategori.id_kategori as kategori,
	 user.nama_lengkap AS nama_admin,
	 user.id_user AS id_admin,
	 foto_artikel.nama_foto AS foto
	 FROM artikel,kategori,user,foto_artikel
	 WHERE artikel.artikel_kategori= AND artikel.artikel_status='publish' AND kategori.aktif='Y' AND kategori.terhapus='N' AND user.status_user='Y' AND user.terhapus='N' AND artikel.artikel_id_user=user.id_user AND artikel.artikel_kategori=kategori.id_kategori AND foto_artikel.id_foto=(SELECT CASE  foto_artikel.featured WHEN 'Y' THEN id_foto WHEN 'N' THEN id_foto END AS 'id_foto'  FROM foto_artikel WHERE foto_artikel.id_artikel=artikel.artikel_id ORDER BY featured ASC LIMIT 1) ORDER BY artikel.artikel_id DESC LIMIT 5
	 
ERROR - 2019-06-23 18:33:21 --> Severity: Notice --> Undefined variable: kategori_agenda C:\xampp\htdocs\pubmsumsel\application\controllers\Home.php 35
ERROR - 2019-06-23 18:33:21 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'AND artikel.artikel_status='publish' AND kategori.aktif='Y' AND kategori.terhapu' at line 14 - Invalid query: SELECT artikel.artikel_id AS id,
	 artikel.artikel_judul AS judul,
	 artikel.artikel_isi AS isi,
	 artikel.artikel_tgl_posting AS tanggal,
	 artikel.artikel_tags as tags,
	 artikel.artikel_dibaca AS dibaca,
	 artikel.artikel_seo_url AS slug,
	 kategori.nama_kategori,
	 kategori.id_kategori as kategori,
	 user.nama_lengkap AS nama_admin,
	 user.id_user AS id_admin,
	 foto_artikel.nama_foto AS foto
	 FROM artikel,kategori,user,foto_artikel
	 WHERE artikel.artikel_kategori= AND artikel.artikel_status='publish' AND kategori.aktif='Y' AND kategori.terhapus='N' AND user.status_user='Y' AND user.terhapus='N' AND artikel.artikel_id_user=user.id_user AND artikel.artikel_kategori=kategori.id_kategori AND foto_artikel.id_foto=(SELECT CASE  foto_artikel.featured WHEN 'Y' THEN id_foto WHEN 'N' THEN id_foto END AS 'id_foto'  FROM foto_artikel WHERE foto_artikel.id_artikel=artikel.artikel_id ORDER BY featured ASC LIMIT 1) ORDER BY artikel.artikel_id DESC LIMIT 5
	 
ERROR - 2019-06-23 18:33:40 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:33:40 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:33:40 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:33:57 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:33:57 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:33:57 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:40:27 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:40:27 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:40:27 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:40:32 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:40:32 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:40:32 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:40:45 --> Severity: error --> Exception: Too few arguments to function Artikel::artikel_berita(), 0 passed in C:\xampp\htdocs\pubmsumsel\application\controllers\Home.php on line 34 and exactly 1 expected C:\xampp\htdocs\pubmsumsel\application\libraries\Artikel.php 129
ERROR - 2019-06-23 18:41:00 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:41:00 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 18:41:00 --> Severity: Notice --> Undefined offset: 0 C:\xampp\htdocs\pubmsumsel\application\views\ando\home.php 516
ERROR - 2019-06-23 20:17:06 --> 404 Page Not Found: Wow%20cloud%20delay-1s/index
ERROR - 2019-06-23 21:07:29 --> Severity: Notice --> Undefined variable: artikel_berita C:\xampp\htdocs\pubmsumsel\application\views\ando\page.php 92
ERROR - 2019-06-23 21:07:29 --> Severity: Warning --> Invalid argument supplied for foreach() C:\xampp\htdocs\pubmsumsel\application\views\ando\page.php 92
ERROR - 2019-06-23 21:32:28 --> 404 Page Not Found: An-component/media
ERROR - 2019-06-23 21:32:59 --> 404 Page Not Found: An-component/media
ERROR - 2019-06-23 21:33:04 --> 404 Page Not Found: An-component/media
ERROR - 2019-06-23 21:33:37 --> 404 Page Not Found: An-component/media
ERROR - 2019-06-23 21:33:50 --> 404 Page Not Found: An-component/media
ERROR - 2019-06-23 21:50:52 --> 404 Page Not Found: Galeri/foto
ERROR - 2019-06-23 21:50:54 --> 404 Page Not Found: Galeri/foto

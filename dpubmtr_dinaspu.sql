-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 01, 2020 at 04:29 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dpubmtr_dinaspu`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `judul` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `artikel_id` bigint(20) UNSIGNED NOT NULL,
  `artikel_judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_kategori` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `artikel_tags` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_sbg_headline` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `artikel_tgl_posting` datetime NOT NULL,
  `artikel_id_user` bigint(20) NOT NULL,
  `artikel_tgl_last_edit` datetime NOT NULL,
  `artikel_editable` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `artikel_id_user_last_edit` int(11) NOT NULL,
  `artikel_seo_url` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_meta_description` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_meta_author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_meta_keyword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_og_image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_og_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_og_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_in_draft` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `artikel_aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `artikel_terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `artikel_status` enum('publish','draft','deleted') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artikel_was_published` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `artikel_sesi_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_dibaca` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`artikel_id`, `artikel_judul`, `artikel_isi`, `artikel_kategori`, `artikel_tags`, `artikel_foto`, `artikel_sbg_headline`, `artikel_tgl_posting`, `artikel_id_user`, `artikel_tgl_last_edit`, `artikel_editable`, `artikel_id_user_last_edit`, `artikel_seo_url`, `artikel_meta_description`, `artikel_meta_author`, `artikel_meta_keyword`, `artikel_og_image`, `artikel_og_title`, `artikel_og_description`, `artikel_in_draft`, `artikel_aktif`, `artikel_terhapus`, `artikel_status`, `artikel_was_published`, `artikel_sesi_id`, `artikel_dibaca`) VALUES
(39, 'Muara Enim Peringati HAKI 2018', '<p><strong>Tim News Room Muara Enim Diskominfo.</strong></p>\n<p>Ribuan suara lantang berikrar bersatu melawan korupsi diteriakkan oleh seluruh elemen lapisan masyarakat Kabupaten Muara Enim di Pelataran Tugu Adipura, Kamis (13/12) sekitar pikul 07.00 pagi. Ini merupakan bagian dari peringatan Hari Anti Korupsi Internasional (HAKI) yang bertema “Melangkah Pasti, Junjung Tinggi Integritas, Lawan Korupsi” kegiatan ini diawali dengan senam Sehat bersama.</p>\n<p>Ikrar ANTIKORUPSI dibacakan Plt. Kajari Muara Enim Muhamad Husaini, SH., MH yang diikuti oleh Bupati Muara Enim, Unsur FKPD Kabupaten Muara Enim, Kepala Perangkat Daerah Lingkup Pemerintah Kabupaten Muara Enim, Pimpinan BUMD/N/S Muara Enim, dan Tamu undangan lainnya.</p>\n<p>Selantunya Muhamad Husaini, SH., MH langsung menyampaikan sambutannya yang intinya mengatakan bahwa pada tangggal 9 Desember 2018, seluruh Dunia melaksanakan peringatan HAKI. Hari Anti Korupsi Internasional Ini sebagai sarana untuk melakukan interopeksi, evaluasi memperbaiki kualitas individu dan pemberantasan korupsi yaitu  terciptanya Indonesia bersih dan bebas korupsi.</p>\n<p>Ia berharap dengan adanya ikrar ini bisa membangun niat baik kita untuk melawan Korupsi Kolusi dan Nepotisme (KKN) demi terwujudnya pambangunan di Kabupaten Muara Enim yang kita cintai ini.</p>\n<p>Dalam sambutannya Bupati Muara Enim Ir. H. Ahamd Yani, MM mengatakan, Hari ini Kamis 13 Desember 2018, kita berkumpul disini dalam rangka memperingati Hari anti Korupsi Sedunia, sekaligus pembacaan ikrar bagi kita semua sebagai perwakilan dari unsur Pemerintah baik Pusat maupun Daerah, Eksekutif, Legislatif dan Yudikatif, perwakilan dari Masyarakat., Organisasi Pemuda, Organisasi Wanita, Tokoh Masyarakat, Tokoh Agama, Tokoh Adat yang berada di wilayah Pemerintah Kabupaten Muara Enim.</p>\n<p>Acara ini merupakan bentuk dari dukungan Pemerintah Kabupaten Muara Enim dalam upaya pencagahan korupsi disamping juga upaya penegakan hukum tentunya, sebab secara sadar memahami bahwa korupsi terbukti telah membawa ketidakadilan, ketimpangan dan keterbelakangan karena itulah sebabnya korupsi menjadi musuh bersama bagi Bangsa-Bangsa di Dunia, Ujar Bupati.</p>\n<p>Bupati menambahkan, korupsi hanya bisa dilawan bila dilakukan secara bersama-sama kerja sama bahu mebahu antar lembaga penegak hukum, sinergi antar Eksekutif, Legislatif dan Yudikatif.</p>\n<p>Semoga dengan peringatan HAKI ini dapat menjadi momentum untuk mewujudkan Pemerintah Kabupaten Muara Enim yang bersih bebas dari Korupsi Kolusi dan Nepotisme sehingga pada akhirnya bisa mewujudkan Kabupaten Muara Enim yang Agamis, Berdaya Saing, Mandiri, Sehat dan Sejahtera, Pungkas Bupati.</p>', 6, '', '', 'Y', '2018-12-13 11:55:00', 5, '2018-12-14 11:13:23', 'Y', 5, 'muara-enim-peringati-haki-2018', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '39450131812', 4),
(40, 'DISKOMINFO adakan kegiatan Training Sosial Audit di IV Dapil', '<p><strong>Tim News Room Muara Enim Diskominfo.</strong></p>\n<p>Pemerintah Kabupaten Muara Enim melalui Dinas Komunikasi dan Informatika mengadakan kegiatan Training Sosial Audit di Empat (IV) Dapil yang telah dilaksanakan sejak tanggal 13 November 2018 (Kec. Ujan Mas), 27 November 2018 (Kec. Rambang Dangku), 05 Desember 2018  (Kec. Tanjung Agung) dan terakhir 11 Desember 2018 (Kec. Gelumbang). Dengan Narasumber Suhermansyah, ST.M. Eng (Inspektur Pembantu Wilayah IV), Yetti, S.Sos ( Auditor Madya Inspektorat) Baharudin. S.Sos. M.Si. (Kabid. Keuangan &amp; Aset Desa) Dinas Pemberdayaan Masyarakat Desa dan Triana Rantini, S.Si., M.Si (Kasi Infrastruktur TIK Diskominfo). peserta terdiri dari Tokoh Masyarakat, Perangkat Desa dan Kelompok Informasi Masyarakat (KIM) setempat.</p>\n<p>Sosial Audit yaitu sebuah proses yang mendorong sebuah organisasi/ lembaga/ kelompok masyarakat untuk menilai dan menunjukan manfaat sosial, ekonomi dan lingkungan serta sebuah proses dimana masyarakat bersama pemerintah melakukan monitoring dan evaluasi terhadap perencanaan dan pelaksanaan pembangunan.</p>\n<p>Kadin Kominfo Ardian Arifanardi, AP., M.Si yang dalam hal ini diwakili oleh Plt. Sekretaris Diskominfo Khairul B, Sos menyampaikan, Kegiatan ini merupakan  tindaklanjut Rencana Aksi Program Pemberantasan Korupsi Terintegrasi Pemerintah Kabupaten Muara Enim Provinsi Sumatera Selatan Tahun 2018, yang mengharapkan partisipasi publik dan masyarakat dalam mengontrol proses pembangunan di wilayah masing-masing. dan bertujuan  agar masyarakat dapat mengawasi dan mengevaluasi hasil pembangunan yang dilaksanakan.</p>\n<p>Mudah-mudahan program pembangunan yang dilaksanakan dapat bermanfaat bagi masyarakat dalam mewujudkan Visi Kabupaten Muara Enim 2018-2023. Muara Enim Untuk Rakyat yang Agamis, Berdaya Saing Mandiri, Sehat dan Sejahtera, Pungkas Khairul.</p>', 6, '', '', 'Y', '2018-12-14 11:14:32', 5, '2018-12-14 11:14:32', 'Y', 5, 'diskominfo-adakan-kegiatan-training-sosial-audit-di-iv-dapil', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '7490131812', 15),
(41, 'Kabupaten Muara Enim Sambut Tim Penilai Penghargaan Pembangunan Daerah Tahun 2019', '<p><strong>Tim News Room Muara Enim Diskominfo.</strong></p>\n<p>Bupati Muara Enim menghadiri Kegiatan Verifikasi dan Kunjungan Lapangan Tim Penilaian Penghargaan Pembangunan Daerah Tahun 2019 terhadap Proses Perencanaan Kabupaten Muara Enim tahun 2019 di Ruang Rapat Bappeda, Kamis (11/04).</p>\n<p>Dalam acara tersebut hadir Bupati Muara Enim Ir. H. Ahmad Yani, MM , Wakil Ketua DPRD Muara Enim Dwi Windarti, SH, M.Hum, Tim Penilai Pusat Suprayoga Hadi, Avianti Fontana, Andi Setyo Pambudi dan Yosi anandis Putri, Kepala Bappeda Sumsel yang diwakili oleh Ardhie Martadhiwira, Asisten II, Asisten III, Kepala Perangkat Daerah Kabupaten Muara Enim, Perwakilan BUMN/BUMD, Baznas Muara Enim, Camat serta Organisasi Masyarakat.</p>\n<p>Penilaian ini merupakan penilaian lanjutan dari tahap I-V yang telah dilalui Pemerintah beberapa waktu yang lalu. “Kesempatan ini nerupakan kebanggan sekaligus media belajar bagi Pemerintah Kabupaten Muara Enim dalam rangka meningkatkan kinerja pelayanan kepada masyarakat” kata Ahmad Yani dalam sambutannya.</p>\n<p>Ahmad Yani menambahkan, dengan adanya acara ini mengharapkan adanya masukan dari Tim Penilai.”Melalui verifikasi dan kunjungan ini, Tim Penilai meninjau dan melihat langsung pencapaian pembangunan dan inovasi di Kabupaten Muara Enim. Untuk itu, kami berharap masukan guna perbaikan serta peningkatan kinerja pelayanan kepada masyarakat”.</p>\n<p>Dalam acara tersebut Kepala Bapedda, Ramlan Suryadi memaparkan inovasi yang ada di Muara Enim untuk diajukan kepada Tim Penilai Pusat. Adapun inovasi yang dipaparkan adalah Amnesti Tangki Septik Bocor, CSR Berkah, Rumah UMKMK Gerbang Serasan dan Nissa Sabyan-ku (Inisiasi Desa Swasembada Sayur Andalan Karya Umak-Umak). Dari keempat inovasi tersebut terpilihlah inovasi UMKMK Gerbang Serasan untuk dibawa ke pusat.</p>', 6, '', '', 'Y', '2019-04-12 01:38:27', 6, '2019-04-12 01:38:27', 'Y', 6, 'kabupaten-muara-enim-sambut-tim-penilai-penghargaan-pembangunan-daerah-tahun-2019', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '13386111904', 1),
(42, 'Bupati Buka Pelatihan Pengembangan Kepribadian Organisasi Wanita Se-Muara Enim', '<p><strong>Tim News Room Muara Enim Diskominfo</strong></p>\n<p>Pemerintah Kabupaten Muara Enim melalui Dinas Pemberdayaan Perempuan dan Perlingdungan Anak menggelar Pelatihan Pengembangan Kepribadian di Hotel Griya Serasan Sekundang Muara Enim, Kamis (11/04).<br><br>Pelatihan yang berlangsung sehari dibuka langsung oleh Bupati Muara Enim Ir. H. Ahmad Yani, MM. Acara tersebut dihadiri oleh Ketua TP PKK Kabupaten Muara Enim Ir. H. Sumarni, M.Si, Kepala Dinas PPPA Drs. Helman, MM, Ketua Dharmawanita Linda Hasanudin, Ketua Dharmayakti Karini Dina Ahmad Markowi dan para peserta pelatihan dari organisasi wanita se-kabupaten Muara Enim.</p>\n<p>Ahmad Yani dalam sambutannya mengatakan bahwa peran perempuan sangat penting. “Kaum perempuan saat ini dituntut berperan ganda dalam keberlangsungan segala hal, disatu sisi sebagai ibu rumah tangga, disisi lain juga berperan aktif dalam pembangunan bangsa dan negara, untuk itu diharapkan para perempuan atau ibu-ibu yang tergabung dalam organisasi wanita secara bertahap perlu diberikan pembinaan dalam berbagai bidang”. Ujar Ahmad Yani</p>\n<p>Tujuan dari acara ini disampaikan Ahmad Yani adalah untuk perkembangan kepribadian ibu-ibu. “Pengembangan Kepribadian adalah suatu proses mengenalkan sifat-sifat baik pada seseorang seperti sikap hidup, cara berfikir, berpenampilan, dan tingkah laku yang dapat mewujudkan kepribadian yang mampu berkomunikasi dan membawa diri secara baik dan benar”. Tambahnya</p>\n<p> </p>', 6, '', '', 'Y', '2019-04-12 01:54:03', 6, '0000-00-00 00:00:00', 'Y', 0, 'bupati-buka-pelatihan-pengembangan-kepribadian-organisasi-wanita-se-muara-enim', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '53496111904', 1),
(43, 'Asisten I : Kita Mampu Bersaing di Kancah Nasional maupun Internasional', '<p><strong>Tim News Room Muara Enim Diskominfo.</strong></p>\n<p>SMA Negeri 1 Unggulan Muara Enim mengadakan acara Pelepasan Siswa/i kelas XII Tahun 2018-2019. Krgiatan ini dihadiri Sekretaris Daerah sekaligus Ketua Komite Ir. H. Hasanudin, M.Si dan Asisten I Drs. M. Teguh jaya, MM di Gedung Kesenian Putri Dayang Rindu, Rabu (10/04).</p>\n<p>Kepala SMAN 1, Darmadi, S.Pd, M.Si dalam sambutannya mengucapkan terima kasih kepada Pemerintah Kabupaten Muara Enim. “Terima kasih atas <em>support</em> nya selama ini dari Pemerintah Kabupaten Muara Enim, keberhasilan ini tidak terlepas dari <em>stakeholder</em> yang ada”. Katanya</p>\n<p>Kepada siswa/i yang resmi dilepas, Darmadi mengucapkan pesan agar jangan kendor berlajar dan tetap semangat, harumkan almamater SMA. Ganungkan cita-cita sesuai dengan ikhtiar kalian.</p>\n<p>Pada kesempatan yang sama Sekda Muara Enim sekaligus Ketua Komite, Hasanudin mengucapkan terima kasih kepada Kepala sekolah, Staf Guru, serta Staf Tata Usaha SMAN 1 Unggulan yang telah memberikan pendidikan yang baik kepada anak murid khusunya kelas XII.</p>\n<p>Selanjutnya, Asisten I Teguh Jaya yang hadir mewakili Bupati Muara Enim mengatakan bahwa Pemkab Muara enim bangga dengan SMA negeri 1 Unggulan Muara Enim. “Pemkab Muara Enim bangga kepada SMAN 1 karena termasuk dalam 30 sekolah unggul di Sumsel dan mempunyai prestasi yang unggul”. Ucapnya</p>\n<p>“Pemkab mengapresiasi program sekolah unggulan karena mendukung visi Pemkab Muara Enim yaitu merakyat, agamis dan berdaya saing. Dengan adanya sekolah unggulan dapat meningkatkan daya saing kita”. Tambahnya</p>\n<p>Dalam acara tersebut diumumkan pula bahwa terdapat 21 siswa/I yang lulus SNMPTN tanpa tes di beberapa Universitas negeri yang tersebar di Indonesia dan 3 orang siswa yang mendapatkan Beasiswa untuk belajar ke salah satu Universitas di Tiongkok.</p>\n<p>Dengan adanya siswa yang lulus tanpa tes dan mendapat beasiswa di Tingkok, Teguh Jaya mengatakan ini merupakan wujud keberhasilan karena kita sudah mampu bersaing di Nasional maupun Internasional.</p>\n<p>Pesan Bupati, Asisten I mengingatkan kepada para siswa - siswi yang audah berusia 17 tahun, pada Rabu 17 April 2019 nanti jangan lupa untuk menggunakan hak pilihnya.\"Dengan memilih berarti ada hak suara yang disalurkan berarti sudah ikut berperan dalam membangun negara, orang tua murid juga jangan lupa ikut berpartisipasi mencoblos pada Rabu 17 April 2019 nanti. Kalo ada potensi keributan segera laporkan ke Polisi menuju Pemilu serentak yang damai,\" Pungkasnya.</p>', 6, '', '', 'Y', '0000-00-00 00:00:00', 6, '0000-00-00 00:00:00', 'Y', 0, 'asisten-i-kita-mampu-bersaing-di-kancah-nasional-maupun-internasional', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'N', '100139111904', 1),
(44, 'Bupati Berharap PWRI Bersinergi Dengan Pemkab', '<p><strong>Tim News Room Muara Enim Diskominfo</strong><br>Bupati Muara Enim, Ir. H. Ahmad Yani, MM menghadiri pelantikan Persatuan Wredatama Republik Indonesia (PWRI) Kecamatan Lawang Kidul, Rabu (10/04) di Aula Kecamatan Lawang Kidul.<br>Usai dilantiknya PWRI Lawang Kidul ini, Bupati menyambut baik keberadaan PWRI Lawang Kidul dan orang nomor satu di Bumi Serasan Sekundang ini berharap adanya sinergitas dengan Pemerintah Kabupaten (Pemkab) Muara Enim dalam hal program - program yang digalakan Pemkab Muara Enim, seperti bantuan untuk lansia, santunan kematian, dan program lainnya.<br>Bahkan program Pemkab Muara Enim saat ini, mengurus masyarakat mulai dari lahir sampai mati. Banyak dana APBD Pemkab Muara Enim yang dikembalikan ke masyarakat Muara Enim.<br>Kedepan, Bupati berharap juga eksistensi dan posisi PWRI Lawang Kidul semakin kokoh dan berkarya.<br>\"Jaga terus kesehatan dan terus berkarya, karena seperti orang tua sendiri, saya tidak sanggup memberikan nasehat,\"ujar Bupati.<br>Sementara itu, Ketua PWRI Lawang Kidul, Fajeri Erham, yang langsung dilantik Ketua PWRI Kabupaten Muara Enim, H.Zulkifli HS, SH,mengucapkan terima kasih atas terlaksananya pelantikan ini.<br>Fajeri mengatakan dalam usia pensiun ini sudah kewajiban PWRI Lawang Kidul mendukung Pemkab Muara Enum melalui program yang sudah dicanangkan. \"Usia boleh tua, tapi semangat untuk berkarya akan tetap bergelora,\" tegas Fajeri.</p>', 6, '', '', 'Y', '2019-04-12 01:56:15', 6, '0000-00-00 00:00:00', 'Y', 0, 'bupati-berharap-pwri-bersinergi-dengan-pemkab', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '891111904', 5),
(45, 'Target H-5 Lebaran Sebagian Jalan Rusak Berat di Sumsel Tuntas', '<div class=\"td-post-featured-image\">\n<figure style=\"text-align: center;\">\n<figcaption class=\"wp-caption-text\">Plt Kepala Dinas PUBM-TR Provinsi Sumsel, Dharma Budhy saat diwawancarai awak media, Senin (6/5)</figcaption>\n<figcaption class=\"wp-caption-text\"></figcaption>\n<figcaption class=\"wp-caption-text\"></figcaption>\n<figcaption class=\"wp-caption-text\"></figcaption>\n</figure>\n</div>\n<p><strong>Palembang, Detik Sumsel- </strong>Jalan rusak berat di beberapa ruas jalan Provinsi Sumsel khususnya di daerah OI, OKU, dan OKU Timur akhirnya mulai diperbaiki. Tercatat, ada sebanyak 15 paket pengerjaan peningkatan jalan yang mulai dikerjakan Dinas Pekerjaan Umum Bina Marga dan Tata Ruang (PUBM-TR) Provinsi Sumsel dan ditargetkan H-5 lebaran sudah tuntas.</p>\n<p>“Ada 15 paket pengerjaan paket jalan yang rusak berat kita prioritaskan dengan menggelontorkan dana sebesar Rp364 miliar,” ungkap Plt Kepala Dinas Pekerjaan Umum Bina Marga dan Tata Ruang (PUBM-TR) Provinsi Sumsel, Darma Budhy, Senin (6/5)</p>\n<p>Dijelaskan, adapun 15 paket pengerjaan peningkatan jalan tersebut yakni diantaranya peningkatan jalan SP Kepuh-Kurungan Nyawa, peningkatan jalan Kurungan Nyawa-Gumawang, peningkatan Kurungan Nyawa-Gumawang (DAK), peningkatan jalan Gumawang-Petanggan, pemeliharaan berkala BTS OKI-SP Kepuh, pemeliharaan berkala Kurungan Nyawa-Martapura, peningkatan jalan Batas Kabupaten OI-Lubuk Batang, peningkatan jalan Muara Dua-Kota Batu-Batas Provinsi Lampung.</p>\n<p>Kemudian, peningkatan dan pelebaran jalan Sekayu-Batas Muara Enim, peningkatan jalan Tanjung Raja-SP Tambang Rambang, peningkatan jalan SP Tambang Rambang-Batas OKU, peningkatan jalan SP Sugi Rawas-Batas Lahat, peningkatan jalan Muara Siban-SP Embacang, peningkatan jalan SP Periuk-Tugumulyo-Terawas, peningkatan jalan Terawas-Taba Tinggi-Maur.</p>\n<p>“15 paket jalan ini sudah layak nantinya untuk dilalui sebelum lebaran, memang untuk pengaspalan belum dilakukan sebelum lebaran nanti kemungkinan baru dilakukan setelah lebaran. Intinya, sebelum lebaran bisa layak dilalui saja dan tidak menyebabkan kemacetan arus mudik,” ulasnya. Saat ini, lanjut Darma Budhy progress pengerjaan sudah mencapai 10 persen untuk 15 paket pengerjaan tersebut.(tet)</p>\n<p> </p>\n<p>sumber: <a href=\"https://www.detiksumsel.com/target-h-5-lebaran-sebagian-jalan-rusak-berat-di-sumsel-tuntas/\">https://www.detiksumsel.com/target-h-5-lebaran-sebagian-jalan-rusak-berat-di-sumsel-tuntas/</a></p>', 6, '26,24,22,21,16,6', '', 'Y', '2019-05-08 20:01:52', 6, '2019-05-08 20:04:16', 'Y', 6, 'target-h-5-lebaran-sebagian-jalan-rusak-berat-di-sumsel-tuntas', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '9306081905', 10),
(46, 'Gubernur Herman Deru Jawab Keluhan Netizen Perbaikan Banyak Jalan Rusak di Sumsel', '<p>FOTO Ilustrasi : Lubang besar tertutup genangan air dan jalan retak di Jalan Mayor zen Sungai Selayur Palembang, sering membahayakan pengendara, Minggu (17/2/2019) </p>\n<p><br><br>Artikel ini telah tayang di <a href=\"http://dpubmtr.sumselprov.pkitapp.com/admin/http:\">Tribunsumsel.com</a> dengan judul Gubernur Herman Deru Jawab Keluhan Netizen Perbaikan Banyak Jalan Rusak di Sumsel, <a href=\"http://sumsel.tribunnews.com/2019/05/03/gubernur-herman-deru-jawab-keluhannetizenperbaikan-banyak-jalan-rusak-di-sumsel\">http://sumsel.tribunnews.com/2019/05/03/gubernur-herman-deru-jawab-keluhannetizenperbaikan-banyak-jalan-rusak-di-sumsel</a>.<br>Penulis: Wawan Perdana <br>Editor: Wawan Perdana</p>\n<p><strong>TRIBUNSUMSEL.COM, PALEMBANG-</strong>Kerusakan di sejumlah ruas jalan di Sumsel semakin parah selama musim hujan.</p>\n<p>Warga banyak mengungkapkan keluhan itu di media sosial instagram dan facebook. <br>Bahkan berapa waktu lalu ada yang menggunakan cara unik menjadikan jalan rusak sebagai lokasi foto model.</p>\n<p>Gubernur Sumsel Herman Deru menjawab semua keluhan itu melalui akun instagram terverifikasi @hermanderu67.</p>\n<figure class=\"op-interactive\"><iframe class=\"bor1\" src=\"https://sosmed.tribunnews.com/socmed.php?instagram=https://www.instagram.com/p/Bw_O4qQgOjo/?utm_source=ig_web_copy_link&amp;capck=no\" width=\"500.02083400000004\" height=\"741.0208339999999\" frameborder=\"0\" scrolling=\"no\"></iframe></figure>\n<div id=\"ompk-BsOaz6OSEcOIB4exB86NF8e2B82YA8iLDs9\" class=\"\" data-google-query-id=\"COy5t-X_i-ICFa5jFQgdbb4PmQ\"> </div>\n<p><em>\"Kepada yg terhormat para netizen, menanggapi banyaknya pertanyaan tentang perbaikan jalan kapan akan di perbaiki khususnya jalan yang berada dibawah wewenang pemerintahan provinsi.\"</em></p>\n<p><em>\"Perlu saya sampaikan bahwa ruas-ruas jalan provinsi se-Sumatra Selatan sudah di anggarkan pada tahun ini, sebagian ruas sudah di mulai perbaikan nya sebagian lagi masih dalam proses tahapan lelang.\"</em></p>\n<p><em>\"Untuk itu saya juga menginformasikan bahwa jalan adalah anggaran negara yang memiliki aturan, tidak bisa semena-mena dibelanjakan begitu saja. Harus melalui proses lelang.\"</em></p>\n<p><em>\"Pemerintah provinsi dalam menggunakan anggaran tidak dapat semena-mena, namun harus dengan cara menggikuti tata kelola keuangan yg benar dan akuntabel. \"</em></p>\n<p><em>\"Mohon doa semoga dalam beberapa minggu lagi untuk ruas-ruas jalan yang berada dibawah tanggung jawab pemerintahan provinsi yang mengalami kerusakan sudah dapat di mulai perbaikannya, demikian untuk dapat di maklumi.\"</em></p>\n<p><strong>Lelang 15 Proyek</strong> </p>\n<p>Dinas Pekerjaan Umum Bina Marga dan Tata Ruang (PUBM-TR) Provinsi Sumatera Selatan telah melelang 15 pekerjaan proyek perbaikan jalan.</p>\n<p>Nilai dari keseluruhan proyek sebesar Rp 300 Miliar.</p>\n<p>Plt Kepala Dinas PUBM-TR Provinsi Sumsel Darma Budhy mengatakan, dari 15 proyek perbaikan jalan itu, beberapa sudah masuk tanda tangan kontrak.</p>\n<p>\"Targetnya dalam sebulan ke depan, seluruh kegiatan sudah masuk proses kontrak. Sehingga, pemenang lelang bisa segera mengerjakan proses perbaikan jalan,\" ujarnya, Kamis (18/4/2019).</p>\n<div id=\"div-Inside-MediumRectangle\"> </div>\n<p>Lebih lanjut ia mengatakan, targetnya sekitar 15 Mei, semuanya sudah kontrak. <br>Tapi, dari tanggal 10 April lalu, sudah ada beberapa kegiatan yang sudah jalan.</p>\n<p>Jalan yang diperbaiki mayoritas berada di Kabupaten OKU Timur. Mulai dari Simpang Penyandingan, Simpang Kebo-Kurungan Nyawa, Gumawang-Kurungan Nyawa-Petanggan.</p>\n<p>\"Ada satu juga di Kabupaten Muba sampai dengan Batas Kabupaten Muara Enim,\". katanya.</p>\n<p>Perbaikan jalan merupakan salah satu program yang menjadi prioritas Gubernur Sumsel Herman Deru.</p>\n<p>Sehingga, pihaknya berusaha untuk mempercepat proses kegiatan.</p>\n<p>\"Tidak hanya itu, percepatan perbaikan jalan juga sebagai persiapan menghadapi arus mudik Lebaran. Lebih cepat diperbaiki, lebih bagus. Sehingga Lebaran nanti sudah bisa dilintasi dengan nyaman,\" ujarnya.</p>\n<p><br>sumber: <a href=\"http://sumsel.tribunnews.com/2019/05/03/gubernur-herman-deru-jawab-keluhannetizenperbaikan-banyak-jalan-rusak-di-sumsel\">http://sumsel.tribunnews.com/2019/05/03/gubernur-herman-deru-jawab-keluhannetizenperbaikan-banyak-jalan-rusak-di-sumsel</a></p>', 6, '24,16', '', 'Y', '2019-05-08 20:09:29', 6, '0000-00-00 00:00:00', 'Y', 0, 'gubernur-herman-deru-jawab-keluhan-netizen-perbaikan-banyak-jalan-rusak-di-sumsel', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '16400081905', 1),
(47, 'Kelola Kedisplinan Pegawai, Sekda Sumsel Lanjutkan Sidak ke OPD', '<p><strong>Palembang, sumselprov.go.id</strong> -- Sekda Prov Sumsel Nasrun Umar melanjutkan inspeksi mendadak (sidak) kedisplinan pegawai di hari kedua Ramadhan. Di hari kedua ini Dinas PU dan Dinas Perumahan dan Pemukiman menjadi sasaran, Selasa (7/5) pagi.</p>\n<p>OPD yang pertama kali disisir rombongan Sekda, BKD dan Inspektorat dan Kasat Pol PP ini adalah Dinas Perumahan dan Pemukiman Provinsi Sumsel. Sambil menunggu daftar absensi dikumpulkan, Sekda melakukan sosialisasi kepada ASN. </p>\n<p>Sesuai edaran Gubernur jelasnya sudah dipaparkan bahwa jam kerja ASN saat bulan puasa mengalami sedikit perubahan dibandingkan hari biasa. Jadwal tersebut yakni Hari Senin-Kamis semua pegawai wajib masuk pukul 08.00 wib-15.00 wib (waktu istirahat pukul 12.00 wib-13.00 wib). Sedangkan untuk hari Jumat waktu kerja mulai pukul 08.00 wib-15.30 wib ( waktu istirahat 11.30 wib- 12.30 wib).</p>\n<p>Tak hanya membahas soal jam kerja ASN, kesempatan itu juga dimanfaatkan oleh Sekda untuk mengecek kelengkapan seragam ASN. Menurutnya kelengkapan ini penting sebagai bentuk intergritas dan identitas ASN.</p>\n<p>\"Kemarin masih saya toleransi. Tapi hari ini tidak. Saya tidak akan toleransi lagi. Siapa yang tidak masuk tanpa alasan akan kita sanksi. Ini sesuai arahan Gubernur,\" jelasnya.</p>\n<p>Dikatakannya, disiplin pegawai telah diatur dalam PP 53. Dan sesuai arahan gubernur dirinya, kata Sekda, sebagai pejabat yang berwenang harus mengelola kedisplinan para ASN.</p>\n<p>\"Secara tegas dan konsekuen ini berlaku di semua OPD yang saya kunjungi. Ini bukan tidak berdasar karena di pusat pun demikian,\" tandasnya seperti dikutif dari GlobalPlanet.News</p>\n<p>Dari hasil dua hari sidak yang dilakukannya diakui Nasrun masih ada beberapa pegawai yang ditemukan datang tidak sesuai jam kerja. Namun diakuinya pada sidak hari kedua di Dinas Perkim dan Dinas PU Bina Marga tingkat kehadiran pegawai sudah sangat bagus.</p>\n<p>\"Masih ada yang seperti itu (belum menaati aturan) tapi kalau melihat yang dua (Dinas Perkim dan PU) ini bagus absensinya. Yang belum itu mungkin  karena ketidaktahuan mereka. Nah ini perlu saya tekankan sekali lagi pada BKD. Saya ingin surat edaran itu betul-betul diketahui ASN yang lain seluruh sampai level terendah sekalipun,\" jelasnya.</p>\n<p>Jika mereka tahu ada aturan hari kerja dan pegawai masih saja tidak mentaati aturan, menurut Sekda dirinya tak segan menerapkan sanksi yang berlaku.</p>\n<p>Untuk diketahui pada sidak hari kedua bulan Ramadan 1440 Hijriah itu Sekda menyisir sejumlah OPD yang berada di sekitar lingkungan Setda Provinsi Sumsel. Dinas pertama yang disambangi rombongan ini adalah Dinas PU Perumahan dan Pemukiman (Perkim), kemudian berlanjut ke Dinas PU Bina Marga, lalu ke Dinas Sosial, Disdukcapil, Badan Kesbangpol hingga Dinas Perhubungan Provinsi Sumsel.</p>\n<p>sumber: <a href=\"http://www.sumselprov.go.id/mobile/index.php?module=newsdetail&amp;id=5641\">http://www.sumselprov.go.id/mobile/index.php?module=newsdetail&amp;id=5641</a></p>', 6, '24,6', '', 'Y', '2019-05-08 20:10:58', 6, '2019-05-08 20:11:07', 'Y', 6, 'kelola-kedisplinan-pegawai-sekda-sumsel-lanjutkan-sidak-ke-opd', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '5678081905', 0),
(48, 'Jembatan Musi VI Ditarget Rampung Tahun 2020', '<p>KBRN, Palembang : Pemerintah Provinsi Sumatera Selatan melalui Dinas PU Bina Marga dan Tata Ruang terus berupaya melanjutkan penyelesaian pembangunan jembatan Musi VI yang menghubungkan  kawasan 32 Ilir dan kawasan Seberang Ulu 1 Palembang.</p>\n<p>Keberadaan jembatan ini nantinya diyakini akan mampu mengurangi beban lalu lintas angkutan di jembatan Ampera. Disamping dapat  mengurai kemacetan lalu lintas serta penumpukan kendaraan di sejumlah titik di kota Palembang.</p>\n<p>Gubernur Sumsel H. Herman Deru saat meninjau pembangunan jembatan Musi VI dan penyerahan sertifikat tanah program Pendaftaran Sistematis Lengkap menyebutkan proses pengerjaan pembangunan jembatan Musi VI  saat ini masih berjalan dan ditargetkan akan rampung tahun 2020 mendatang.</p>\n<p>\"Kita targetkan jembatan musi  enam ini bisa dilalui untuk kendaraan. Begitu juga dengan  taman dan fasilitas umum disekitarnya. Pembebasan lahannya secepatnya kita rampungkan,\" tegas Herman Deru.</p>\n<p>Lebih lanjut, Herman Deru menambahkan penyelesaian pembangunan jembatan Musi VI adalah bentuk tanggung jawab Pemerintah Provinsi kepada masyarakat. Untuk itu, mantan Bupati Oku Timur dua periode tersebut mengharapkan dukungan dan kerjasama dari semua pihak yaitu terutama Pemerintah kota Palembang berikut seluruh OPD dan masyarakatnya.</p>\n<p>\"Selesainya pembangunan jembatan Musi VI ini membutuhkan dukungan dari semua pihak. Bersama- sama kita selesaikan ini, baik dibagian seberang Ilir maupun di seberang Ulu,\" tambahnya.</p>\n<p>Terkait pembebasan lahan, Herman Deru memastikan  untuk di wilayah seberang Ulu sudah tidak ada kendala lagi. Sedangkan pembebasan bidang tanah yang masih belum terlaksana, Gubernur mengharapkan dukungan dari para tokoh setempat.  Mengingat pembangunan jembatan Musi VI tidak hanya menekankan keindahan dan fisik jembatannya saja, melainkan juga keindahan di wilayah sekitar jembatan, baik di Ilir maupun di bagian  Ulu.</p>\n<p>\"Akses menuju jembatan musi enam ini  akan ditingkatkan seperti ketersediaan fasilitas umum. Hingga nantinya jembatan ini  dapat menjadi obyek wisata baru bagi masyarakat,\" tambahnya.</p>\n<p>Selain meninjau kelanjutan pembangunan jembatan Musi VI, dikesempatan yang sama  Gubernur H. Herman Deru juga secara simbolis menyerahkan sertifikat tanah program PTSL kepada warga seberang Ulu. Dalam pembuatan sertifikat tanah Herman Deru menjamin tidak ada pungutan.</p>\n<p>Di lain pihak, Plt Kepala Dinas PU Bina Marga dan Tata Ruang Sumsel Darma Budhi mengatakan kontrak pembangunan jembatan Musi VI dimulai pertama kali pada tahun 2015 menggunakan dana APBD provinsi Sumsel.</p>\n<p>Tahap pertama pembangunan jembatan Musi VI tahun kontrak 2015, dengan jenis kontrak tahun jamak dengan masa pelaksanaan 756 hari kerja, nilai kontrak Rp. 344. 320.772. 000, 00.</p>\n<p>Kemudian untuk pembangunan tahap kedua juga bersumber dari APBD Provinsi Sumsel, tahun anggaran 2018, jenis kontrak tahun jamak, nilai kontrak Rp.219. 677. 000.000, 00 dengan masa pelaksanaan 360 hari kerja, dan masa pemeliharaan 360 hari kerja dengan kontraktor pelaksana PT Nindya Karya.</p>\n<p>Sementara itu, untuk realisasi dan sisa kebutuhan anggaran proyek jembatan Musi VI, Darma Budhi menjelaskan , kontrak tahap pertama nilai kontrak awal sebesar Rp.344. 320. 772. 000, 00. dan nilai final amandemen Rp. 344. 320. 772. 000, 00 ( bobot terhadap keseluruhan 60, 4%). Kemudian untuk tahap kedua, nilai kontrak awal Rp. 219. 677. 000. 000, 00 dan nilai final amandemen Rp. 135. 315. 850.334, 10 ( bobot terhadap keseluruhan 24%).</p>\n<p>\"Dengan demikian total nilai untuk tahap pertama dan kedua adalah Rp. 469.636.622. 344, - (84, 4%).  Jumlah dana yang dibutuhkan untuk penyelesaian pembangunan jembatan Musi VI senilai Rp. 87 milyar\", pungkasnya.</p>\n<p> </p>\n<p>sumber: <a href=\"http://rri.co.id/palembang/post/berita/662235/daerah/jembatan_musi_vi_ditarget_rampung_tahun_2020.html\">http://rri.co.id/palembang/post/berita/662235/daerah/jembatan_musi_vi_ditarget_rampung_tahun_2020.html</a></p>', 6, '24,17', '', 'Y', '2019-05-08 20:12:28', 6, '2019-05-08 20:12:44', 'Y', 6, 'jembatan-musi-vi-ditarget-rampung-tahun-2020', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '2137081905', 0),
(49, 'Tahun 2020 Jembatan Musi VI Rampung ', '<p><strong>Divianews.com | Palembang</strong> — Pemerintah terus berupaya agara penyelesaian pembangunan jembatan Musi VI yang menghubungkan kawasan 32 Ilir dan kawasan Seberang Ulu 1 Palembang, bisa terealisasi secepatnya. Sebab jembatan tersebut diharapkan mampu mengurangi beban lalu lintas angkutan di jembatan yang ada di Kota Palembang,</p>\n<p>Dikonfirmasi ulang mengenai hal tersebut diatas,  Kepala Dinas PU Bina Marga dan Tata Ruang Sumsel Darma Budhi kembali menjelaskan secara rinci terkait tahapan kontrak pembangunan jembatan Musi VI dimulai pertama kali pada tahun 2015 menggunakan dana APBD provinsi Sumsel.</p>\n<p>Tahap pertama pembangunan jembatan Musi VI tahun kontrak 2015, dengan jenis kontrak tahun jamak dengan masa pelaksanaan 756 hari kerja, nilai kontrak Rp. 344. 320.772. 000, 00.</p>\n<p>Kemudian untuk pembangunan tahap kedua juga bersumber dari APBD Provinsi Sumsel, tahun anggaran 2018, jenis kontrak tahun jamak, nilai kontrak Rp.219. 677. 000.000, 00 dengan masa pelaksanaan 360 hari kerja, dan masa pemeliharaan 360 hari kerja dengan kontraktor pelaksana PT Nindya Karya.</p>\n<p>Sementara itu, untuk realisasi dan sisa kebutuhan anggaran proyek jembatan Musi VI, Darma Budhi menjelaskan , kontrak tahap pertama nilai kontrak awal sebesar Rp.344. 320. 772. 000, 00. dan nilai final amandemen Rp. 344. 320. 772. 000, 00 ( bobot terhadap keseluruhan 60, 4%). Kemudian untuk tahap kedua, nilai kontrak awal Rp. 219. 677. 000. 000, 00 dan nilai final amandemen Rp. 135. 315. 850.334, 10 ( bobot terhadap keseluruhan 24%).</p>\n<p>“Dengan demikian total nilai untuk tahap pertama dan kedua adalah Rp. 469.636.622. 344, – (84, 4%). Jumlah dana yang dibutuhkan untuk penyelesaian pembangunan jembatan Musi VI senilai Rp. 87 milyar”, jelasnya, selasa (16/04/2019).</p>\n<p>Untuk itu diharapakan secepatnya jembatan yang tinggal beberapa persen tersebut, bisa rampung pada tahun 2020 mendatang.</p>\n<p> </p>\n<p>Sebelumnya Gubernur Sumsel Herman Deru juga telah memantau langsung progres jembatan dan meminta agar jembatan tersebut selesai secepatnya untuk mengurai kemacetan yang ada saat ini. (adi)</p>\n<p> </p>\n<p>sumber:<a href=\"http://divianews.com/2019/04/16/tahun-2020-jembatan-musi-vi-rampung/\">http://divianews.com/2019/04/16/tahun-2020-jembatan-musi-vi-rampung/</a></p>', 6, '17,24', '', 'Y', '2019-05-08 20:14:30', 6, '0000-00-00 00:00:00', 'Y', 0, 'tahun-2020-jembatan-musi-vi-rampung', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '4373081905', 0),
(50, 'Gurbernur Sumsel Pastikan Proyek Musi VI Rampung Tahun Depan', '<p>PALEMBANG-KRSumsel.com-.Pemerintah Provinsi Sumatera Selatan melalui Dinas PU Bina Marga dan Tata Ruang terus berupaya melanjutkan penyelesain pembangunan Jembatan Musi VI yang menghubungkan kawasan 32 Ilir dan kawasan Seberang Ulu I Palembang.<br><br><br>Keberadaan jembatan ini nantinya diyakini akan mampu mengurangi beban lalu lintas angkutan di jembatan ampera. Disamping dapat  mengurai kemacetan lalu lintas serta penumpukan kendaraan di sejumlah titik di kota Palembang.<br><br><br>Gubernur Sumsel H. Herman Deru saat meninjau pembangunan jembatan Musi VI dan penyerahan sertifikat tanah program Pendaftaran Sistematis Lengkap (PTSL) di Palembang, Sabtu (13/4) menyebutkan proses pengerjaan pembangunan jembatan Musi VI  saat ini masih berjalan dan ditargetkan akan rampung tahun 2020 mendatang.<br><br>\"Kita targetkan jembatan Musi  VI ini bisa dilalui untuk kendaraan. Begitu juga dengan  taman dan fasilitas umum disekitarnya. Pembebasan lahannya secepatnya kita rampungkan,\" tegas Herman Deru.<br><br>Lebih lanjut, Herman Deru menambahkan penyelesaian pembangunan jembatan Musi VI adalah bentuk tanggung jawab Pemerintah Provinsi kepada masyarakat.<br><br>Untuk itu, mantan Bupati Oku Timur dua periode tersebut mengharapkan dukungan dan kerjasama dari semua pihak yaitu terutama Pemerintah kota Palembang berikut seluruh OPD dan masyarakatnya.<br><br>\"Selesainya pembangunan jembatan Musi VI ini membutuhkan dukungan dari semua pihak. Bersama- sama kita selesaikan ini, baik dibagian seberang Ilir maupun di seberang Ulu,\" tambahnya.<br><br>Terkait pembebasan lahan, Herman Deru memastikan  untuk di wilayah seberang Ulu sudah tidak ada kendala lagi. Sedangkan pembebasan bidang tanah yang masih belum terlaksana, Gubernur mengharapkan dukungan dari para tokoh setempat.  Mengingat pembangunan jembatan Musi VI tidak hanya menekankan keindahan dan fisik jembatannya saja, melainkan juga keindahan di wilayah sekitar jembatan, baik di Ilir maupun di bagian  Ulu.<br><br>\"Akses menuju jembatan musi enam ini  akan ditingkatkan seperti ketersediaan fasilitas umum. Hingga nantinya jembatan ini  dapat menjadi obyek wisata baru bagi masyarakat,\" tambahnya.<br><br>Selain meninjau kelanjutan pembangunan jembatan Musi VI, dikesempatan yang sama  Gubernur H. Herman Deru juga secara simbolis menyerahkan sertifikat tanah program PTSL kepada warga seberang Ulu. Dalam pembuatan sertifikat tanah Herman Deru menjamin tidak ada pungutan.<br><br>Sementara Plt Kepala Dinas PU Bina Marga dan Tata Ruang Sumsel Darma Budhi mengatakan kontrak pembangunan jembatan Musi VI dimulai pertama kali pada tahun 2015 menggunakan dana APBD Provinsi Sumsel.<br><br>Tahap pertama pembangunan jembatan Musi VI tahun kontrak 2015, dengan jenis kontrak tahun jamak dengan masa pelaksanaan 756 hari kerja, nilai kontrak Rp. 344. 320.772. 000, 00.<br><br>Kemudian untuk pembangunan tahap kedua juga bersumber dari APBD Provinsi Sumsel, tahun anggaran 2018, jenis kontrak tahun jamak, nilai kontrak Rp.219. 677. 000.000, 00 dengan masa pelaksanaan 360 hari kerja, dan masa pemeliharaan 360 hari kerja dengan kontraktor pelaksana PT Nindya Karya.<br><br>Sementara itu, untuk realisasi dan sisa kebutuhan anggaran proyek jembatan Musi VI, Darma Budhi menjelaskan , kontrak tahap pertama nilai kontrak awal sebesar Rp.344. 320. 772. 000, 00. dan nilai final amandemen Rp. 344. 320. 772. 000, 00 (bobot terhadap keseluruhan 60, 4%). Kemudian untuk tahap kedua, nilai kontrak awal Rp. 219. 677. 000. 000, 00 dan nilai final amandemen Rp. 135. 315. 850.334, 10 ( bobot terhadap keseluruhan 24%).</p>\n<p><br>\"Dengan demikian total nilai untuk tahap pertama dan kedua adalah Rp. 469.636.622. 344, - (84, 4%).  Jumlah dana yang dibutuhkan untuk penyelesaian pembangunan jembatan Musi VI senilai Rp. 87 milyar\", pungkasnya.</p>\n<p> </p>\n<p>sumber: <a href=\"http://www.krsumsel.com/2019/04/gubernur-sumsel-pastikan-proyek-musi-vi.html\">http://www.krsumsel.com/2019/04/gubernur-sumsel-pastikan-proyek-musi-vi.html</a></p>', 6, '24,17', '', 'Y', '2019-05-08 20:15:19', 6, '2019-05-08 20:18:52', 'Y', 6, 'gurbernur-sumsel-pastikan-proyek-musi-vi-rampung-tahun-depan', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '81464081905', 7),
(51, 'Gubernur Herman Deru Jawab Keluhan Netizen Perbaikan Banyak Jalan Rusak di Sumsel', '<p>asdsd</p>', 6, '', '', 'Y', '2020-01-20 22:03:17', 6, '0000-00-00 00:00:00', 'Y', 0, 'gubernur-herman-deru-jawab-keluhan-netizen-perbaikan-banyak-jalan-rusak-di-sumsel', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '73256202001', 7),
(54, 'Jembatan Bailey Butuh Waktu Dua Bulan, Gubernur Sumsel Instruksikan Bangun Jembatan Ekstra Darurat', '<p><strong>PALEMBANG, fornews.co</strong> – Tak sabar menunggu pembangunan jembatan bailey, Gubernur Sumatra Selatan Herman Deru instruksikan Dinas PUBM-TR Sumsel untuk membangun jembatan ekstra darurat pengganti sementara Jembatan Ayek Mulak yang putus diterjang banjir, Senin (30/12).</p>\n<p>Hal itu disampaikan HD usai meninjau langsung jembatan yang terputus di Kecamatan Mulak Ulu, Kabupaten Lahat, Selasa (31/12). Gubernur hadir bersama Pangdam II/Sriwijaya Mayjen TNI Irwan, Kapolda Sumsel Irjen Pol Priyo Widyanto, Bupati Lahat Cik Ujang, dan kepala dinas terkait.</p>\n<p>Begitu mendapat laporan jembatan yang menghubungkan Desa Pengentaan dan Desa Lesung Batu Kecamatan Mulak Ulu, Kabupaten Lahat, dan juga jalan lintas Lahat – Muara Enim terputus, HD pun langsung mengambil tindakan bersama Pemerintah Kabupaten hingga Pemerintah Pusat membuat jembatan darurat (jembatan bailey). Namun menurutnya, membangun jembatan bailey akan memakan waktu lama paling tidak dua bulan.</p>\n<p>“Bisa saja (waktu membangunnya lebih) dengan jembatan bailey yang membentang 100 meter ini dengan arus yang deras,” ujar HD.</p>\n<p>Oleh karena itu, HD pun akan mencari solusi lain agar mobilisasi warga tidak terganggu terlalu lama. Salah satunya yaitu membangun jembatan ekstra darurat.</p>\n<p>“Saya akan mencari siasat agar ada ekstra daruratnya. Jadi bagaimana penanganan ekstra darurat sehingga paling tidak mobil-mobil kecil, sepeda motor, sepeda, pejalan kaki, anak sekolah hingga para pedagang tidak terganggu aktifitasnya. Saya minta dalam waktu yang segera dibangun apakah dari pohon kelapa, besi dengan bobot yang tertentu atau dari apa. Ini nanti biar PU yang koordinasi,” katanya.</p>\n<p>Sebelumnya, Gubernur dan Forkopimda Sumsel meninjau lokasi banjir dan memeriksa Posko penanganan bencana banjir di Desa Keban Agung, Kecamatan Mulak Sebingkal, Kabupaten Lahat. (ije)</p>\n<p> </p>\n<p>Sumber : <a href=\"https://babe.topbuzz.com/a/6776581578559586818\">https://babe.topbuzz.com/a/6776581578559586818</a></p>', 6, '', '', 'Y', '2020-02-10 20:30:53', 7, '0000-00-00 00:00:00', 'Y', 0, 'jembatan-bailey-butuh-waktu-dua-bulan-gubernur-sumsel-instruksikan-bangun-jembatan-ekstra-darurat', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '38440102002', 0),
(55, 'Jalan Menuju Kecamatan Pagar Gunung Kabupaten Lahat Tertutup Tanah Longsor', '<p><strong>SRIPOKU.COM, LAHAT -</strong> Hujan yang mengguyur Kabupaten Lahat Provinsi Sumatera Selatan sejak Selasa (31/12/2019) hingga Rabu (1/1/2020) mengakibatkan terjadinya longsor di kawasan Lubuk Medu, Desa Tanjung Agung, Kecamatan Pagar Gunung (Pagun) , Kabupaten Lahat.</p>\n<p>Hingga berita ini dibuat material longsor masih menutupi badan jalan sekaligus akses utama bagi warga di Kecamatan Pagun.</p>\n<p>Kondisi tersebut dibenarkan Camat Pagun, Iskandar Jumaldi.</p>\n<p>Menurut Iskandar Jumaldi, selain tanah, pepohonan juga ikut tumbang hingga menutupi badan jalan.</p>\n<p>Tak hanya itu, dua unit tiang listrik tumbang.</p>\n<p>Sejauh ini kendaraan roda empat tidak bisa melintas.</p>\n<p>\"Kalau kejadianya diperkirakan sekitar pukul 05.00 wib.</p>\n<p>Diakibatkan hujan deras sejak sore kemarin. Tidak ada korban jiwa.</p>\n<p>Pihak kecamatan bersama warga mulai membersihkan khususunya dahan pohon yang menutupi badan jalan,\" ujar Iskandar Jumaldi kepada Sripoku.com, Rabu (1/1/2020).</p>\n<p>Lokasi longsor berada di wilayah perbukitan.</p>\n<p>Diduga akibat tanah yang labil terjadi longsor saat hujan terus mengguyur.</p>\n<p>\"Listrik padam di Kecamatan Pagun. Saat ini kita masih menunggu alat berat untuk membersihkan jalan,\" ujar Iskandar Jumaldi.</p>\n<p> </p>\n<p>Sumber : <a href=\"https://babe.topbuzz.com/a/6776841611155341825\">https://babe.topbuzz.com/a/6776841611155341825</a></p>', 6, '', '', 'Y', '2020-02-10 20:38:00', 7, '0000-00-00 00:00:00', 'Y', 0, 'jalan-menuju-kecamatan-pagar-gunung-kabupaten-lahat-tertutup-tanah-longsor', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '65285102002', 0),
(56, 'Tanah Longsor, Dinas PU BM Pasang Rambu Peringatan Bagi Pengendara', '<div class=\"post-content\">\n<p><strong>PALEMBANG,HS</strong> – Tanah Longsor sepanjang dua meter yang terjadi dijalan provinsi yang menghubungkan wilayah Semendo Darat Laut, Kabupaten Muaraenim dan Sibingkai, Kota Agung,  Lahat, mulai dilakukan pembersihan oleh, Dinas PUBM Provinsi Sumsel.</p>\n<p>Kepala Dinas PU BM Sumsel, Darma Budhi, mengatakan, pihaknya saat ini telah lakukan pembersihan pada badan jalan dari material longsor.</p>\n<p>“Kita sudah perintahkan kepala UPTD Muara Enim, untuk melakukan pengamanan awal berupa pemasangan rambu peringatan bagi pengendara roda empat maupun roda empat,” kata Budi Kamis (2/1/2020).</p>\n<p>Ia juga mengatakan, usai melakukan pembersihan dan pemasnagan rambu peringatan, pihaknya juga saat ini masih menunggu alat berat datang.</p>\n<p>“Kita masih menunggu alat eksvakator datang, untuk membantu memperbaiki dan membersihkan tanah longsor,” tutupnya</p>\n</div>\n<div class=\"clear\"> </div>\n<div class=\"social-shared\">Sumber : <a href=\"http://haluansumatera.com/tanah-longsor-dinas-pu-bm-pasang-rambu-peringatan-bagi-pengendara/\">http://haluansumatera.com/tanah-longsor-dinas-pu-bm-pasang-rambu-peringatan-bagi-pengendara/</a></div>', 6, '', '', 'Y', '2020-02-10 20:40:15', 7, '0000-00-00 00:00:00', 'Y', 0, 'tanah-longsor-dinas-pu-bm-pasang-rambu-peringatan-bagi-pengendara', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '49195102002', 0),
(57, 'Temui Menhub, Herman Deru Usulkan Jembatan Lematang dan Kelok Endikat', '<p><strong>JAKARTA, GLOBALPLANET - </strong>Mengawali kegiatannya pada pekan pertama di bulan Januari 2020, Gubernur Sumsel Herman Deru menemui Menteri Perhubungan Budi Karya Sumadi di kantor Kementerian Perhubungan, Jakarta, Senin pagi (06/01).</p>\n<p>Dalam pertemuan tersebut Gubernur Herman Deru menyampaikan empat usulan kepada Menteri Budi Karya Sumadi. </p>\n<p>\"Iya, saya menghadap pak Menteri. Ada beberapa permintaan yang saya ajukan dan usulkan. Pertama tentang pemindahan pelabuhan Boom Baru untuk mengantisipasi kontainer. Kedua tentang aliran sungai,  mana yang merupakan kewenangan provinsi mana yang kewenangan pusat.  Ketiga yaitu perlintasan sebidang,  wilayah yang dilintasi perlintasan kereta api yang kerap kali menimbulkan kemacetan.  Kemudian tentang pembangunan jembatan Endikat.  Saya ingin agar Endikat ini bisa dibangun seperti Kelok 9 di Sumatera Barat,\" ujar Deru.</p>\n<p>Pemindahan pelabuhan boombaru ke pelabuhan Tanjung Api-Api menurut HD sudah sangat mendesak, sebagai solusi jangka pendek untuk mengatasi kemacetan lalu lintas akibat penumpukan kontainer,  sekaligus juga sebagai sarana pengangkutan komoditas pangan dan  pertanian. </p>\n<p>Tak hanya pelabuhan Tanjung Api- Api (TAA)  yang harus dikembangkan, pemanfaatan aliran Sungai Musi yang digunakan sebagai perlintasan sarana angkutan komoditas perkebunan,  pertanian, dan pertambangan perlu diperjelas kewenangannya. </p>\n<p>HD juga mengungkapkan dengan pembangunan jalan tol Palembang - Indralaya yang  sudah operasional dan  Palembang - Betung yang kini tengah dibangun, di sisi lain menimbulkan dampak kemacetan di perlintasan sebidang  seperti Prabumulih dan Muara Enim, serta Baturaja.  \"Ada 9 jalan di Sumsel yang  sering terjadi kemacetan karena dilintasi kereta api. Ini kita usulkan agar segera dibangun fly over atau under pass,  ke Kementerian  Perhubungan dan PU,  sebab ini masuk jalan nasional,\" ujarnya. </p>\n<p>Sedangkan untuk pembangunan jembatan Endikat,  HD mengatakan pihaknya telah meminta kajian teknis dari Kementerian Perhubungan untuk mendorong ke Kementerian  PU agar jembatan tersebut segera dibangun. \"Paling tidak nanti di wilayah tersebut bisa  mempersingkat rute dan memperlandai konturnya\", tandasnya. </p>\n<p>HD menambahkan,  tidak hanya jembatan Endikat yang diusulkan  termasuk juga jembatan Lematang. \"Iya,  dua-duanya kita ajukan dan  usulkan. Endikat dan Lematang,  sebab ini sebelumnya sudah pernah kita usulkan,  dan masuk dalam kebijakan strategis nasional\", tegasnya. </p>\n<p>Seperti diketahui keinginan pembangunan Jembatan Lematang itu kembali mencuat pasca terjadi kecelakaan maut Bus Sriwijaya di liku Lematang pada 23 Desember lalu yang menewaskan hingga 35 orang. </p>\n<p>Dari empat usulan yang diajukan tersebut,  HD menjelaskan semuanya ditanggapi dengan baik oleh Kementerian  Perhubungan, ada yang  segera mendapat solusi, ada juga yang masih membutuhkan kajian lebih lanjut. </p>\n<p>Sementara Menhub Budi Karya Sumadi berjanji segera mengupayakan apa yang menjadi usulan. Terkait percepatan pemindahan pelabuhan Boom Baru ke pelabuhan TAA sekaligus pengembangannya, Budi menyarankan agar dapat dilakukan tender ataupun dikompetisikan. \"Bisa dilakukan kerjasama antara pemerintah dan swasta.  Kalau Kementerian Keuangan sendiri cenderung untuk melibatkan swasta,  sehingga tidak sepenuhnya memakai dana APBN.  Akan lebih baik lagi skema pembiayaannya antara swasta dan investor,\" terangnya.</p>\n<p> </p>\n<p>Sumber : <a href=\"http://www.globalplanet.news/berita/22784/temui-menhub-herman-deru-usulkan-jembatan-lematang-dan-kelok-endikat\">http://www.globalplanet.news/berita/22784/temui-menhub-herman-deru-usulkan-jembatan-lematang-dan-kelok-endikat</a></p>', 6, '', '', 'Y', '2020-02-10 20:42:31', 7, '0000-00-00 00:00:00', 'Y', 0, 'temui-menhub-herman-deru-usulkan-jembatan-lematang-dan-kelok-endikat', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '90154102002', 0),
(58, 'Akhir 2020 Dinas PUBM Sumsel Pastikan Jalan Provinsi Mulus', '<div class=\"post-content\">\n<p><strong>PALEMBANG,HS</strong> – Sesuai intruksi Gubernur Sumsel H Herman Deru, melalui dinas PUBM terus mempercepat pembangunan infrastruktur jalan provinsi yang berada di kabupaten/kota di Sumsel.</p>\n<p>Pada tahun 2019 setidaknya<br>rusak sepanjang 247,3 KM jalan di kabupaten/kota di Bumi Sriwijaya sudah rampung diperbaiki. Hingga akhir tahun ini Pemprov Sumsel melalui Dinas PUBM-TR Sumsel memastikan jalan yang menjadi tanggung jawab provinsi akan mulus semua.</p>\n<p>Kepala Bidang Jalan Dinas PUBM-TR Sumsel, Muchtar mengatakan progres perbaikan jalan yang rusak secara keseluruhan sudah berjalan 99,9 persen.<br>Pekerjaan pada tahun lalu itu kini hanya menyisakan satu proyek lagi yakni satu paket drainase di depan Kantor Gubernur Sumsel Jalan Rivai Palembang.</p>\n<p>Diakuinya, agak sedikit lambannya pekerjaan paket drainase di depan kantor Gubernur Sumsel lantaran kontraknya paling lambat dibandingkan pekerjaan lain. Selain itu, banyaknya utilitas pekerjaan seperti PDAM, listrik, LRT di kawasan itu membuat proyek itu menjadi sedikit lambat.</p>\n<p>“Pekerjaan tahun kemarin hampir 100 persen tinggal satu paket pekerjaan drainase lagi. Bulan depan insya allah selesai,” katanya, Selasa (7/1/2020).</p>\n<p>Ia menjelaskan, perbaikan jalan di kabupaten/kota yang menjadi tanggung jawab Pemprov Sumsel akan kembali dilanjutkan pada tahun ini. Muchtar memastikan pada akhir tahun 2020 ini jalan provinsi semuanya akan menjadi mulus.</p>\n<p>Untuk perbaikan jalan tersebut, Muchtar mengaku pihaknya menyiapkan anggaran Rp 1 T lebih sama seperti tahun kemarin.</p>\n<p>“Rapat anggaran kemarin kan masih deadlock. Kemungkinan nilai perbaikan jalan provinsi masih sama seperti tahun kemarin,” ungkapnya</p>\n<p>Diakui Muchtar, untuk perbaikan jalan pihaknya tidak pilih-pilih daerah mana saja yang akan diperbaiki. Seluruh jalan nasional di kabupaten/kota di Sumsel akan diprioritaskan.</p>\n<p>“Tahun kemarin banyak di daerah Komering karena peningkatan jalan. Kalau di daerah seperti Lahat, Banyuasin dan lain-lain itu pemeliharaan semua. Target Gubernur 2020 jalan harus mulus,” tutupnya (Ron)</p>\n</div>\n<div class=\"clear\"> </div>\n<div class=\"social-shared\">Sumber : <a href=\"http://haluansumatera.com/akhir-2020-dinas-pubm-sumsel-pastikan-jalan-provinsi-mulus/\">http://haluansumatera.com/akhir-2020-dinas-pubm-sumsel-pastikan-jalan-provinsi-mulus/</a></div>', 6, '', '', 'Y', '2020-02-10 20:44:40', 7, '0000-00-00 00:00:00', 'Y', 0, 'akhir-2020-dinas-pubm-sumsel-pastikan-jalan-provinsi-mulus', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '4259102002', 0);
INSERT INTO `artikel` (`artikel_id`, `artikel_judul`, `artikel_isi`, `artikel_kategori`, `artikel_tags`, `artikel_foto`, `artikel_sbg_headline`, `artikel_tgl_posting`, `artikel_id_user`, `artikel_tgl_last_edit`, `artikel_editable`, `artikel_id_user_last_edit`, `artikel_seo_url`, `artikel_meta_description`, `artikel_meta_author`, `artikel_meta_keyword`, `artikel_og_image`, `artikel_og_title`, `artikel_og_description`, `artikel_in_draft`, `artikel_aktif`, `artikel_terhapus`, `artikel_status`, `artikel_was_published`, `artikel_sesi_id`, `artikel_dibaca`) VALUES
(59, 'Jalan Mulus Masyarakat OKUS Puji Herman Deru', '<p>OKUS, KR Sumsel - Upaya Gubernur Sumsel H.Herman Deru menggenjot infrastruktur pembangunan jalan di seluruh kab/kota se Sumsel setahun pertama kepemimpinannya patut diacungi jempol. Karena komitmennya itu mendapat respon positif dari berbagai lapisan masyarakat, tak terkecuali warga Kabupaten OKU Selatan.</p>\n<p>Hal itu disampaikan langsung oleh Bupati Kabupaten OKU Selatan Popo Ali Martopo saat memberikan sambutan pada sidang paripurna istimewa HUT OKUS ke-16, di Gedung DPRD, Selasa (14/1) siang.</p>\n<p>\"Mewakili masyarakat OKU Selatan Saya berterimakasih sekali, berkat Pak Gubernur akses ke Muara Dua kini sudah sangat baik.</p>\n<p>Alhamdulillah perjalanan kami jadi singkat hanya dalam setahun. Sudah jauh berbeda sekali,\" tegas Popo Ali.</p>\n<p>Menurut Popo, hampir seluruh ruas jalan Bumi Serasan Seandanan memang masuk kewenangan provinsi. Sehingga mereka sangat bergantung dengan keberpihakan Pemprov untuk penyediaan akses jalan.</p>\n<p>\"Walaupun sering dimarahi Pak Gub karena kunjungan jadi berjam-jam sekarang Alhamdulillah sudah mulus. Tapi itu dia masyarakat ini kalau sudah mulus maunya minta lebar juga kepada Gubernur ,\" ujarnya setengah bercanda.</p>\n<p>Ia berharap keinginan masyarakat ini mendapat respon yang baik dari orang nomor satu di Sumsel tersebut. Mengingat bantuan provinsi sangat mereka harapkan agar memicu peningkatan mobilitas jalan maupun barang di daerah mereka.</p>\n<p>\"Itu adalah keinginan rakyat OKUS. Ada perhatian lebih, karena yang kami andalkan adalah jalan provinsi. Sebab kalau mobilitas barang bagus harga logistik bisa lebih murah sehingga bisa meningkatkan perekonomian. Bahkan ini juga dapat membentuk daerah-daerah komersil baru\" jelasnya.</p>\n<p>Terkait usianya yang ke-16 tahun, Popo mengatakan hendaknya dijadikan momen untuk mendapatkan energi baru. Karena usia 16 tahun merupakan usia yang sangat muda untuk sebuah daerah otonomi baru.</p>\n<p>\"Kami sangat berterima kasih tanpa kehadiran pak Gubernur hari ini tentu tidak akan istimewa. Di usia ini tentu kit belum mencapai puncak pembangunan artinya jalan masih panjang ke depan. Dan kita harus segera sejajar dengan daerah lain,\" jelasnya.</p>\n<p>Sementara itu Gubernur Sumsel H.Herman Deru mengatakan, HUT kabupaten/kota adalah hal penting bagi dirinya. Ia memiloh tetap ke OKUS meski ada agenda tak kalah penting Jakarta.</p>\n<p>Menurut HD Ia sangat mengapresiasi kinerja pembangunan OKUS yang sudah dilakukan Bupati dan wakil bupatinya. Termasuk soliditas hubungannya dengan DPRD Kab OKUS. Mau diukur menggunakan parameter apapun HD mengakui bahwa kemajuan OKUS sangat pesat termasuk prestasi-prestasi yang sudah berhasil catatkannya.</p>\n<p>\" Saya mengamati bukan hanya berdasarkan visual saja tapi berdasarkam data statiatik. Jado setiap saya hadir ke ulang tahun saya sudah kantongi data statistiknya. Mulai dari kemajuan infrastruktur, inflasi, serta pertumbuhan ekonomi karena inilah alat menjadi alat utama menekan angka kemiskinan,\" jelasnya.</p>\n<p>Meski baru berusia 16 tahun, HD mengaku sangat bangga dengan perkembangan OKU Selatan di bawah kepemimpinan Bupati Popo Ali Martopo, dan Wabup Solehien Abuasir.</p>\n<p>\" Harus Saya akui, OKU Selatan cepat mensejajarkan diri dengan kabupaten lain. Jadi bukan lagi menyusul tapi sudah sejajar. Dan Saya ingin semangat ini tetap terjaga. Semoga OKUS semakin maju dengan segala prestasinya,\" ujar HD.</p>\n<p>Kepada Pemkab OKUS HD juga berpesan agar tidak lekas mengakami star syndrom. Yang diartikannya sudah merasa nyaman di zona yang nyaman saat mencapai sebuah keberhasilan.</p>\n<p>\" Inilah tugas tokoh-tokoh inspiratif harus bisa tetap memantik semangat. Agar OKUS menjadi Kabupaten sesuai dengan yang diharapkan masyarakat,\" jelasnya.</p>\n<p>Dalam kesempatan itu HD juga tak lupa mengingatkan warga OKUS untuk mewaspadai cuaca ekstrim yang terjadi belakangan ini. Ia pun mengajak warga untuk menyiapkan antisipasi sejak dini.</p>\n<p>\"Daripada kita memperbaiki, lebih baik kita mengantisipasi,\" ujarnya.</p>\n<p>Pada peringatan HUT Kabupaten OKU Selatan yang ke-16, HD tidak datang sendiri tapi didampingi Ketua Tim Penggerak PKK Sumsel Hj. Feby Deru.</p>\n<p>Dalam kesempatan itu Gubernur juga sempat mengalungkan bunga kepada sesepuh sekaligus Ketua Panitia Persiapan Pemerintahan Kab. OKU Selatan disingkat dengan P3KOS H. Muhtadin Sera\'i.</p>\n<p>Selanjutnya Usai menghadiri Paripurna Istimewa DPRD dalam rangka memperingati hari jadi Kabupaten OKU Selatan, Gubernur Sumsel H.Herman Deru bersama Ketua TP PKK Sumsel, Hj Feby Deru beserta rombongan melanjutkan penanaman pohon di lingkungan perkantoran Pemkab OKU Selatan, Selasa (14/1) siang.</p>\n<p>Penanaman pohon secara simbolis ini dimaksudkan untuk mewujudkan hutan kota untuk edukasi dalam menjaga kelestarian lingkungan hidup. (****)</p>\n<p> </p>\n<p>Sumber : <a href=\"https://babe.topbuzz.com/a/6781800374111044098\">https://babe.topbuzz.com/a/6781800374111044098</a></p>', 6, '', '', 'Y', '2020-02-10 20:46:15', 7, '0000-00-00 00:00:00', 'Y', 0, 'jalan-mulus-masyarakat-okus-puji-herman-deru', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '80468102002', 0),
(60, 'Empat Usulan Wako Pagaralam Disetujui Gubernur Herman Deru', '<p>Palembang, KR Sumsel - Gubernur Sumatera Selatan Herman Deru segera mewujudkan dan memfasilitasi keinginan Walikota Pagaralam Alpian Maskoni terkait pembangunan jembatan Lematang, kemudian juga jembatan yang merupakan bantuan gubernur (bangub) yaitu jembatan Air Betung, dan jalan menuju bandara Atung Bungsu, serta pembangunan lapangan sepakbola.Hal itu diungkapkan Gubernur Herman Deru ketika menerima Walikota Pagaralam Alpian Maskoni bersama jajarannya di ruang tamu gubernur, Rabu (15/01) siang.</p>\n<p>\"Permintaan tersebut kita kabulkan dan wujudkan. Untuk jembatan Lematang segera kita tindaklanjuti. Dalam waktu dekat saya akan menghadap Menteri PU PR, dan menjadi Program Strategis Nasional (PSN). Bahkan pada 6 Januari lalu saya sudah menyampaikan hal ini dan menghadap Menteri Perhubungan Budi Karya Sumadi\", jelas HD.</p>\n<p>Proses lelang jembatan Lematang sendiri telah dilakukan sejak tahun 2016, dengan nilai tender Rp 400 miliar rupiah. Sejak awal jembatan Lematang telah diusulkan sebagai PSN. Dikatakan Bapak Rumah Tahfidz Sumsel itu, pembangunan jembatan Lematang tidak mungkin untuk didesain ulang, melainkan direncanakan kembali. \"Re-design tidak mungkin, tapi re-planning. Saya juga minta diadakan kajian amdal lalin (analisis mengenai dampak lingkungan lalu lintas). Pemkot Pagaralam siapkan dokumen-dokumen yang diperlukan untuk kita ajukan ke Menteri PU PR\", tandasnya.</p>\n<p>HD pun menegaskan sebagai kepala daerah dirinya selalu menyampaikan dan menekankan kepada kabupaten/kota di Sumsel, pemprov Sumsel selalu memberikan bantuan asalkan memenuhi persyaratan. \"Selalu saya tekankan bantuan yang diberikan itu ada dasarnya, yaitu kebutuhan (need), ketersiapan dana, dan dampak ekonomi politik sosial budaya ke masyarakat\", imbuhnya.</p>\n<p>Untuk jalan menuju bandara Atung Bungsu, dengan lebar 7 hingga 9 meter pemprov Sumsel segera mengakomodirnya melalui Dinas PU Bina Marga. Selain itu, menurut HD jalan di kota Pagaralam rata-rata tergolong baik, hanya saja jalan intersection perlu diperbaiki. Kepada Walikota Alpian Maskoni, Gubernur HD menghimbau agar sektor pariwisata di Pagaralam dihidupkan kembali. \"Buat event tahunan sehingga pariwisata Pagaralam semarak kembali. Asisten 1 saya minta buatkan Pergub dan arahkan kepada OPD agar jika ada kegiatan outdoor dapat dilakukan di Pagaralam. Ini sebagai recovery atas kasus ancaman binatang buas yang terjadi akhir-akhir ini\", kata mantan Bupati Oku Timur dua periode itu.</p>\n<p>Sementara Walikota pagaralam Alpian Maskoni dan masyarakat Pagaralam menyampaikan terima kasih kepada Gubernur Herman Deru yang telah memenuhi permintaannya. \"Semua permintaan kami diakomodir pak Gubernur dan realisasinya segera di tahun 2020 ini. Untuk jembatan Lematang dengan bentang 520 meter dan ketinggian sekitar 150-an meter biaya pembangunannya dari APBN. Segalanya sudah kita siapkan berikut kajian amdal, yang nantinya saya bersama pak Gubernur menghadap Menteri PU PR\", bebernya.</p>\n<p>Alpian menjelaskan pembangunan jembatan Lematang sempat tertunda, dan sebelumnya telah ditenderkan dengan pemenangnya Nindya Karya. Menurutnya besar kemungkinan tertundanya pembangunan jembatan Lematang pada waktu itu terkendala pada masalah pembiayaan. \"Jembatan Lematang semua sudah siap baik perencanaan dan amdal. Kita optimis pembangunannya segera terwujud, dan diperkirakan selesai dalam rentang waktu 2-3 tahun. Sedangkan jembatan Endikat sedang kita usulkan\", terangnya.</p>\n<p>Dilanjutkan Alpian jembatan Endikat menghubungkan Lahat dan Pagaralam serta memilah 2 kecamatan yaitu Dempo Tengah dan Dempo Selatan yang masuk wilayah Pagaralam. Menurutnya jika pembangunan jembatan Lematang terealisasi banyak manfaat yang diperoleh Pagaralam. \"Mempercepat akses Lahat - Pagaralam, serta memperkecil tingkat bencana alam seperti tanah longsor. Sebab saat ini ada dua titik rawan longsor di Lematang, dan membahayakan apabila dilalui truck dan bus besar\", jelasnya.</p>\n<p>Seperti diketahui sebelumnya pada 6 Januari lalu Gubernur Herman Deru telah menghadap Menhub Budi Karya Sumadi guna mengajukan pembangunan jembatan Lematang dan jembatan Endikat serta meminta kajian teknis dari Kementerian Perhubungan untuk mendorong ke Kementerian PU agar pembangunan jembatan segera dibangun.</p>\n<p> </p>\n<p>Sumber : <a href=\"https://babe.topbuzz.com/a/6782170958045118977\">https://babe.topbuzz.com/a/6782170958045118977</a></p>', 6, '', '', 'Y', '2020-02-10 20:47:55', 7, '0000-00-00 00:00:00', 'Y', 0, 'empat-usulan-wako-pagaralam-disetujui-gubernur-herman-deru', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '13366102002', 0),
(61, 'Gubernur Instruksikan Dinas PUBM Perbaiki Jalan di Desa Cahya Makmur', '<p>OKI, koranindonesia.id – Gubernur Sumsel, H. Herman Deru meminta instansi terkait yakni PUBM-TR untuk berkoordinasi dengan Kabupaten OKI guna perbaikan akses jalan yang berada di Desa Cahya Makmur. Sebab jalan tersebut dinilai sudah banyak yang berlubang.</p>\n<p>“Lakukan koordinasi dengan Bupati untuk perbaikan jalan ini. Jalan ini sudah rusak, kasian sama masyarakatnya,” kata HD Sabtu (18/1).</p>\n<p>Dia menegaskan, perbaikan akses jalan yang berada di Desa Cahya Makmur tersebut harus menjadi prioritas.</p>\n<p>“Jangan menunggu lama. Karena dengan jalan yang bagus tentu menyulitkan perekonomian warga,” tuturnya.</p>\n<p>Rusaknya akses jalan Desa Cahya Makmur tersebut diketahui saat HD melakukan perjalanan ke Kabupaten OKI usai menghadiri HUT ke 16 Kabupaten OKU Timur.</p>\n<p>Perjalanan tersebut juga sekaligus dijadikan HD sebagai ajang untuk melakukan peninjauan sejumlah jalan.</p>\n<p>Dari informasi yang diterima, perbaikan akses jalan Desa Cahya Makmur tersebut diketahui sudah diajukan Pemkab OKI ke Pemprov Sumsel dan sudah disetujui. Kemungkinan besar perbaikan akan direalisasikan tahun ini.</p>\n<p>Sementara itu, warga desa Lastri mengatakan, jalan raya di desa tersebut memang telah lama mengalami kerusakan.</p>\n<p>“Pak Herman Deru ini merupakan Gubernur pertama yang melakukan peninjauan langsung jalan di tempat kami. Dengan datangnya beliau, mudah-mudahan jalan ini segera diperbaiki,” pungkasnya. (Rel)</p>\n<p> </p>\n<p>Sumber : <a href=\"https://babe.topbuzz.com/a/6783359290607403521\">https://babe.topbuzz.com/a/6783359290607403521</a></p>', 6, '', '', 'Y', '2020-02-10 20:49:16', 7, '0000-00-00 00:00:00', 'Y', 0, 'gubernur-instruksikan-dinas-pubm-perbaiki-jalan-di-desa-cahya-makmur', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '49223102002', 0),
(62, 'Alokasikan Rp 1,347 Triliun untuk Perbaiki Jalan Rusak di Sumsel', '<p><strong>PALEMBANG</strong>, Fornews.co – Ditahun 2020, Pemerintah Provinsi (Pemprov) Sumsel mengalokasikan dana sebesar Rp 1,347 triliun untuk memperbaiki jalan di Sumsel. Dana tersebut ditujukan untuk perbaikan sebanyak 59 ruas jalan provinsi dan 28 ruas non status.</p>\n<p>Sekretaris Dinas Pekerjaan Umum Bina Marga dan Tata Ruang (PUBM-TR) Sumsel, Megawati mengatakan perbaikan infrastruktur jalan rusak merupakan intruksi dari Gubernur Sumsel. Hal ini tujuannya agar bisa meningkatkan perekomian masyarakat khususnya yang berada di daerah.</p>\n<p>Karena itu, dana perbaikan tahun ini mengalami peningkatan dibandingkan tahun sebelumnya yakni dari semula Rp 1,266 triliun kini menjadi Rp 1,347 triliun.</p>\n<p>“Peningkatannya sebesar Rp 81 miliar dari tahun sebelumnya,” katanya, Minggu (19/01).</p>\n<p>Perbaikan infrastruktur jalan ini nantinya dilakukan di 14 Kabupaten/Kota yakni Kabupaten OKU Timur, OKI, Ogan Ilir, OKU, OKU Selatan, Musi Rawas, Musi Rawas Utara, Muara Enim, PALI, Empat Lawang, Lahat, Banyuasin, Musi Banyuasin, dan Kota Palembang. Dimana, difokuskan untuk ruas jalan yang belum tuntas diselesaikan pada tahun 2019 lalu. Dirinya berharap kondisi jalan di Sumsel akan terus membaik kedepannya.</p>\n<p>Berdasarkan data ditahun 2019 lalu, pihaknya telah melakukan perbaikan atau peningkatan jalan sebanyak 185 kilometer, pemeliharaan berkala jalan 52,20 kilometer, dan pergantian jembatan 949,90 meter.</p>\n<p>“Saat ini yang menjadi kendala yaitu kondisi cuaca yang ekstrem sehingga dapat menunda pekerjaan yang seharusnya bisa dilakukan dengam cepat. Ditambahkan lagi jika terjadi banjir dan longsor,” tutupnya. (lim)</p>\n<p> </p>\n<p>Sumber : <a href=\"https://babe.topbuzz.com/a/6783624544281166338\">https://babe.topbuzz.com/a/6783624544281166338</a></p>', 6, '', '', 'Y', '2020-02-10 20:50:32', 7, '0000-00-00 00:00:00', 'Y', 0, 'alokasikan-rp-1-347-triliun-untuk-perbaiki-jalan-rusak-di-sumsel', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '55112102002', 0),
(63, 'Lewat Jalan Rusak saat Kunjungi OKU, Gubernur Sumsel: Segera Diperbaiki, Kasihan Masyarakat', '<p>Dinas Pekerjaan Umum (DPU) Bina Marga (BM) Sumatera Selatan (Sumsel) diperintahkan untuk segera memperbaiki jalanan yang rusak. Perintah ini datang langsung dari Gubernur Sumatera Selatan Herman Deru.</p>\n<p>Menurut Herman, perbaikan jalan perlu dilakukan karena jalanan di Desa Cahya Makmur Ogan Komering Ilir (OKI) mengalami kerusakan.</p>\n<p>\"Jalan menuju desa tersebut sudah banyak berlubang sehingga harus segera diperbaiki. Kasihan masyarakatnya,\" kata Herman kepada wartawan, Senin (20/10/2020).</p>\n<p>Herman menambahkan, DPU BM harus melakukan koordinasi dengan Bupati OKU. Dia menegaskan, perbaikan akses jalan yang berada di Desa Cahya Makmur tersebut harus menjadi skala prioritas.</p>\n<p>\"Jangan menunggu lama. Karena dengan jalan yang tidak bagus tentu menyulitkan perekonomian warga,\" imbuhnya.</p>\n<p>Rusaknya akses jalan Desa Cahya Makmur tersebut diketahui saat gubernur melakukan perjalanan ke Kabupaten Ogan Komering Ilir, Sumsel beberapa waktu lalu.</p>\n<p>Perjalanan tersebut juga sekaligus dijadikan gubernur sebagai ajang untuk melakukan peninjauan ke- sejumlah jalan yang ada dalam kabupaten.</p>\n<p>Dari informasi yang diterima, perbaikan akses jalan Desa Cahya Makmur diketahui sudah diajukan Pemkab Ogan Komering Ilir ke Pemprov Sumsel dan sudah disetujui. Kemungkinan besar perbaikan akan direalisasikan tahun ini.</p>\n<p> </p>\n<p>Sumber : <a href=\"https://www.babe.news/a/6783966367260344834\">https://www.babe.news/a/6783966367260344834</a></p>', 6, '', '', 'Y', '2020-02-10 20:51:48', 7, '0000-00-00 00:00:00', 'Y', 0, 'lewat-jalan-rusak-saat-kunjungi-oku-gubernur-sumsel-segera-diperbaiki-kasihan-masyarakat', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '57394102002', 0),
(64, 'Anggaran Perbaikan Jalan di Sumsel Capai Rp1,3 Triliun', '<p><strong>PALEMBANG</strong> - Tahun ini, Pemprov Sumsel menganggarkan Rp1,347 triliun untuk perbaikan jalan rusak. Jumlah ini mengalami peningkatan dibanding dari tahun lalu yang hanya Rp1,266 triliun.</p>\n<p>\"Untuk tahun ini, anggaran perbaikan jalan naik Rp81 miliar dari yang sebelumnya hanya Rp1,266 triliun menjadi Rp1,347 triliun. Kenaikan anggaran ini diperuntukkan memperbaiki sebanyak 59 ruas jalan provinsi dan 28 ruas non status/kewenangan,\" ujar Sekretaris Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Sumsel, Megawaty, Senin (20/01/2020).</p>\n<p>Diungkapkannya, adanya kenaikan anggaran untuk infrastruktur jalan rusak tersebut merupakan intruksi dari Gubernur Sumsel yang menginginkan jalan dibawah kewenangan provinsi Sumsel tetap mulus.</p>\n<p>\"Adanya perbaikan jalan ini diharapkan akan berdampak terhadap meningkatnya perekomian masyarakat, khususnya yang berada di daerah,\" jelasnya.</p>\n<p>Megawaty juga mengatakan, untuk perbaikan jalan rusak di tahun 2020 ini akan dilakukan di 14 Kabupaten/Kota yakni Kabupaten OKU Timur, OKI, Ogan Ilir, OKU, OKU Selatan, Musi Rawas, Musi Rawas Utara, Muara Enim, PALI, Empat Lawang, Lahat, Banyuasin, Musi Banyuasin, dan Kota Palembang.</p>\n<p>\"Perbaikan jalan akan di fokuskan untuk ruas jalan penanganan tahun lalu yang belum tuntas dan akan diselesaikan pada tahun ini, sehingga jalan provinsi bisa terus membaik,\" tambahnya.</p>\n<p>Menurutnya, tahun lalu pihaknya telah melakukan peningkatan jalan sebanyak 185 kilometer, pemeliharaan berkala jalan 52,20 kilometer, dan pergantian jembatan 949,90 meter.</p>\n<p>Selain perbaikan jalan, lanjut Megawaty, pihaknya juga akan melakukan beberapa paket pengerjaan seperti peningkatan jalan sebanyak 40 kegiatan, pemeliharaan berkala jalan 21 kegiatan, pergantian jembatan 12 kegiatan, pelebaran jalan, dan membuat jalan baru.</p>\n<p>\"Kendala kita dalam melakukan pengerjaan itu di faktor cuaca ekstrem yang bisa menyebabkan banjir atau tanah longsor sehingga bisa menunda pekerjaan,\" kata Megawaty.</p>\n<p> </p>\n<p>Sumber : <a href=\"https://www.babe.news/a/6783908183598432769\">https://www.babe.news/a/6783908183598432769</a></p>', 6, '', '', 'Y', '2020-02-10 20:53:00', 7, '0000-00-00 00:00:00', 'Y', 0, 'anggaran-perbaikan-jalan-di-sumsel-capai-rp1-3-triliun', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '15212102002', 0),
(65, 'Akses Utama, Gotong Royong Bantu Percepatan Jembatan Bailey', '<p>LAHAT – Pasca ambruknya jembatan mulak, Desa Geramat, Kecamatan Mulak Ulu, Kabupaten, 30 Desember 2019 lalu. Percepatan pembangunan jembatan bailey terus dilakukan.</p>\n<p>Bahkan masyarakat ikut serta gotong royong dalam upaya pembangunan jembatan sementara tersebut.</p>\n<p>Untuk diketahui bahwa jembatan mulak merupakan akses utama Lahat – Muara Enim via Semendo.  Bahkan warga dari Kepayang Bengkulu, Empat Lawang, Pagaralam yang hendak ke Lampung melalui jembatan tersebut.</p>\n<p>“Selaian bagi masyarakat kabupaten Lahat, Semendo Muara Enim dan Pagaralam serta masyarakat sekitar. Jalan ini sering dilalui warga yang mengangkut hasil bumi berupa kopi dan lainnya untuk dibaqa ke Lampung. Sehingga saat ini, masyarakat melalui jalur Lahat via Merapi lalu ke Muara Enim bila hendak ke Lampung dan sehingga menambah waktu tempuh,” ujar Dodi, Kadea Pengentaan, Kecamatan Mulam Ulu yang wilayahnta dilalui langsung oleh pengendara. “Karena walau jembatan masuk desa Geramat, namun jalannya dari desa pengentaan,” tambahnya.</p>\n<p>Sehingga masyarakat setempat termasuk dari desa Geramat, dan Lesung batu yang berada diseberang jembatan ikut bergotong royong agar adanya jembatan sementara.</p>\n<p>“Lokasi tanah di sisi seberang yang dipakai untuk dasar meletakan jembatan bailey merupakan tanah keluarga kami. Karena memang untuk masyarakat jadi kami pinjamkan sementata sebelum jembatan permanen dibangun,” ujar Nopi Buana warga asal Desa Lesung Batu namun tinggal di Palembang. “Tidak ada ganti rugi. Kami hanya murni meminjamkan karena memamg jembatan ini sanhat penting bagi masyarakat sekitar,” bebernya.</p>\n<p>Senada disampaikan Kades Geramat Sapuan bahwa untuk sisi lain jembatan merupakan tanah desa. Warga telah setuju meminjamkan lokasi tanah tersebut untuk dasar jembatan berupa beronjong. Tak hanya itu warga sekitar juga ikut membantu mengiai berobjong dengan batu kali agar cepat terealisasi.</p>\n<p>Sementara Hendri, Kepala UPTD Lahat Dinas PU Provinsi Sumsel, bahwa dengan adanya bantuan masyarakat pasca bencana oangkal jembatan roboh akhir tahun lalu. Maka diperkirakan jembatan bailey bisa digunakan awal Februari 2020 mendatang. “Kita berterima kasih atas peran masyarakat karena mau meminjamkan lokasi tanah mereka dan membuat beronjong. Nanti jembatan sementara ini bisa dilalui kendaraan kecil. Selanjutnya akan diupayakan pembangunan jembatan permanen karena memang jembatan mulak menjadi aksea utama masyarakar sekitar bahkan antar kabupaten,” terangnya.</p>\n<p>Pantauan di lapangan, di dua siai jembatan ramai kendaraan yang parkir. Baik mobil maupun motor untuk mengangkut warga yang lalu lalang dari arah Mulak maupun dari arah Semendo Muara Enim.(gti)</p>\n<p> </p>\n<p>Sumber : <a href=\"https://sumeks.co/akses-utama-gotong-royong-bantu-percepatan-jembatan-bailey/\">https://sumeks.co/akses-utama-gotong-royong-bantu-percepatan-jembatan-bailey/</a></p>', 6, '', '', 'Y', '2020-02-10 20:54:14', 7, '0000-00-00 00:00:00', 'Y', 0, 'akses-utama-gotong-royong-bantu-percepatan-jembatan-bailey', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '41245102002', 1),
(66, 'Puluhan Tahun Rusak, Warga 16 Ulu Bersyukur Jalan Sudah Mulus', '<p><strong>InilahSumsel.com, Palembang</strong> — Warga kawasan Jalan Jaya VII Kelurahan 16 Ulu, Kecamatan Seberang Ulu II, Kota Palembang, tidak lagi khawatir akan akses jalan mereka. Sebab, jalan yang sudah puluhan tahun lalu rusak dan berlubang saat ini sudah menjadi mulus kembali.</p>\n<p>Warga setempat sekaligus Ketua Masjid Syuhada, Drs. Zulkifli Surya Negara, mengatakan, kembali mulusnya jalan tersebut tidak lepas dari peran dan perhatian Gubernur Sumatera Selatan (Sumsel), Herman Deru.</p>\n<p>“Kami masyarakat, sangat bersyukur adanya pemimpin seperti Bapak Herman Deru yang peduli dengan kami. Bapak tidak segan turun langsung untuk mendengarkan aspirasi masyarakat.” katanya, hari Jum’at tanggal 24 Januari 2020.</p>\n<p>Dimana, lanjut Drs. Zulkifli Surya Negara, Jalan Jaya VII terutama di depan masjid Syuhada yang sudah 20 mengalami kerusakan parah, sudah diperbaiki. “20 tahun jalan kami ini rusak parah dan tidak ada perbaikan. Tapi setelah Bapak Herman Deru memimpin, jalan ini langsung diperbaiki dan kami merasakannya. Ini bantuan gubernur,” tegasnya.</p>\n<p>Diketahui, Herman Deru sendiri sempat meninjau jalan dan sistem <em>drainase</em> di kawasan tersebut, sebelum melakukan safari jum’atnya di Masjid Syuhada. Peninjauan tersebut dilakukan, lantaran dirinya merasa heran karena tidak melihat adanya selokan di sepanjang jalan menuju masjid yang menjadi tempat safari jum’atnya.</p>\n<p>“Kawasan ini menggunakan sistem selokan tertutup dan ide masyarakat ini bagus. Saya apresiasi langkah ini,” katanya.</p>\n<p>Sosok yang akrab disapa dengan panggilan Bang HD itu, tetap meminta agar warga terus mengawasi selokan tersebut agar tidak menjadi mampet. “Kawasan ini adalah kawasan rendah. Kita harus memperhatikan selokannya, agar tidak ada sampah yang menyumbat sehingga tidak menimbulkan banjir,” terangnya.</p>\n<p>Dia pun mengingatkan agar masyarakat terus menggalakkan gotong royong. “Kebersihan lingkungan itu tugas bersama. Awasi lingkungan kita. Jika nanti ada yang butuh perbaikan, segera informasikan ke pihak terkait,” ajaknya. (<strong><em>ril humas pemprov sumsel/ohs</em></strong>)</p>\n<p> </p>\n<p>Sumber : <a href=\"http://www.inilahsumsel.com/puluhan-tahun-rusak-warga-16-ulu-bersyukur-jalan-sudah-mulus/\">http://www.inilahsumsel.com/puluhan-tahun-rusak-warga-16-ulu-bersyukur-jalan-sudah-mulus/</a></p>', 6, '', '', 'Y', '2020-02-10 20:58:10', 7, '2020-02-10 20:58:10', 'Y', 7, 'puluhan-tahun-rusak-warga-16-ulu-bersyukur-jalan-sudah-mulus', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '58293102002', 1),
(69, 'Longsor dan Banjir Bandang Hantam Sumsel, Dua Jembatan Roboh Hingga Hektaran Sawah Terendam', '<p><strong>PALEMBANG</strong>, Fornews.co – Longsor dan banjir bandang kembali menghantam Sumsel tepatnya di wilayah Lahat dan Empat Lawang. Akibat bencana tersebut, dua jembatan rusak dan hektaran sawah terendam banjir.</p>\n<p>Kabid Penanggulangan Kedaruratan Bencana BPBD Sumsel, Ansori mengatakan intensitas curah hujan yang tinggi sejak Jumat malam (24/01) hingga Sabtu dini hari (25/01) mengakibatkan longsor dan banjir bandang di dua daerah di Sumsel.</p>\n<p>Untuk longsor terjadi di wilayah Lahat, tepatnya di Desa Muara Siban Kecamatan Lahat, Sumsel. Akibat longsor tersebut memutus lalu lintas Jalan Raya Lintas Lahat-Pagaralam sepanjang 200 meter dan</p>\n<p>“Arus lintas macet total sepanjang 10 kilometer dari arah Pagaralam dan dari arah Lahat,” katanya saat dihubungi, Sabtu (25/01).</p>\n<p>Saat ini, tim satgas gabungan telah menuju lokasi untuk melakukan pendataan dan kini tim satgas dibantu warga bergotong royong membersihkan lumpur dan tanah yg menutup jalan tersebut supaya dapat dilalui oleh kendaraan yang melintas.</p>\n<p>“Tidak ada korban jiwa dan kerugian dalam peristiwa ini,” terangnya.</p>\n<p>Kemudian untuk banjir bandang terjadi di dua wilayah di Empat Lawang yakni Desa Nanjungan, Kecamatan Pesemah Air Keruh dan Desa Babatan Kamp 10, Kecamatan Lintang Kanan.</p>\n<p>Banjir bandang ini terjadi akibat intensitas hujan yang deras sehingga drainase tidak mampu menampung debit air yang datang</p>\n<p>Akibatnya, dua jembatan di masing-masing wilayah di Empat Lawang ini roboh dihantam arus air serta beberapa hektar sawah terendam Kecamatan Pasemah Air Keruh.</p>\n<p>“Dari kejadian ini kerugian materil yang alami diperkirakan mencapai puluhan juta. Kami juga telah menurunkan tim untuk memantau dan mengevakuasi jika diperlukan,” tutupnya. (lim)</p>\n<p> </p>\n<p>Sumber : <a href=\"https://www.babe.news/a/6785837303324475905\">https://www.babe.news/a/6785837303324475905</a></p>', 6, '', '', 'Y', '2020-02-10 21:00:01', 7, '0000-00-00 00:00:00', 'Y', 0, 'longsor-dan-banjir-bandang-hantam-sumsel-dua-jembatan-roboh-hingga-hektaran-sawah-terendam', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '56424102002', 0),
(70, 'Pengerjaan Drainase Jalan Kapten A Rivai Dan Tanjung Barangan Rampung', '<div class=\"post-content\">\n<p><strong>PALEMBANG,HS –</strong> Dinas Pekerjaan Umum dan Tata Ruang (PUBM-TR) Provinsi Sumsel, telah merampungkan semua pengerjaan dranise yang berada dijalan Kapten A Rivai, dan pekerjaan pembangunan jalan yang berada dijalan Tanjung Barangan – Talang Kepuh, yang sudah rampung 100 persen pada akhir Desember 2019 lalu.</p>\n<p>Hal ini diungkapkan langsung kadis PUBM-TR Provinsi Sumsel, Dharma Budi, saat melakukan monitoring visual bersama team P2HP, Rabu (29/1/2020).</p>\n<p>Menurutnya, selama pengerjaan drainese jalan yang mengalami penambahan waktu pengerjaannya.</p>\n<p>“Sudah 100 persen pengerjaannya,” singkatnya</p>\n<p>Ia juga mengatakan, selain mengecek drainese jalan, pihaknya juga meninjau langsung perbaikan jalan, Tanjung barangan-talang Kepuh yang telah rampung 100 persen.</p>\n<p>“Jalan Tanjung Barangan – Talang Kepuh, jalan alternatif menuju Musi 2 – gandus-Talang Buluh menuju Raider km 18 -palembang-Betung, jika jalan Soekarno-Hatta menjalaninya kemacetan,” tutupnya</p>\n</div>\n<div class=\"clear\"> </div>\n<div class=\"social-shared\"> </div>\n<div class=\"social-shared\">Sumber : <a href=\"http://haluansumatera.com/pengerjaan-drainase-jalan-kapten-a-rivai-dan-tanjung-barangan-rampung/\">http://haluansumatera.com/pengerjaan-drainase-jalan-kapten-a-rivai-dan-tanjung-barangan-rampung/</a></div>', 6, '', '', 'Y', '2020-02-10 21:02:23', 7, '2020-02-10 21:02:23', 'Y', 7, 'pengerjaan-drainase-jalan-kapten-a-rivai-dan-tanjung-barangan-rampung', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '86166102002', 0),
(71, 'Pembangunan Jembatan Musi VI 80 Persen', '<p><strong>Palembang: </strong>Pemerintah Provinsi (Pemprov) Sumatra Selatan menganggarkan Rp85 miliar untuk pembangunan jembatan Musi VI tahun 2020. Progres pembangunan jembatan yang menghubungkan kawasan seberang Ilir dan Ulu itu sudah 80 persen.</p>\n<p>\"Anggarannya Rp85 miliar itu belum termasuk pembebasan lahan pada akses pendekat karena saat ini masih ada beberapa lahan yang belum dibebaskan,\" kata Kepala Dinas Pekerjaan Umum Bina Marga dan Tata Ruang (PUBM-TR) Darma Budhi, Jumat, 31 Januari 2020.</p>\n<p>Pihaknya segera memulai kembali pengerjaan jembatan Musi VI pada April 2020. Pengerjaan jembatan Musi VI difokuskan di pemasangan girder, pembangunan oprit jembatan, dan jalan akses pendekat.</p>\n<p>\"Progres pembangunan jembatan Musi VI masih 20 persen lagi dan itu akan menelan waktu sekitar enam bulan pengerjaannya,\" jelasnya.</p>\n<p>Dia melanjutkan sebanyak tiga persil lahan belum dibebaskan hingga kini. Dia mengungkap dua persil di antaranya berada di Seberang Ulu dan satu persil di Seberang Ilir.</p>\n<p>Pembangunan jembatan Musi VI sempat dihentikan pada 2019 lantaran tidak mempunyai anggaran. Namun, pada Anggaran Belanja Tambahan (ABT) 2019, pihaknya telah menyelesaikan pemasangan balok grider dan pengecoran empat segmen lantai jembatan yang anggarannya sekitar Rp10,4 miliar.</p>\n<p>\"Kami menargetkan jembatan Musi VI bisa dioperasionalkan pada November atau Desember 2020 mendatang karena pembangunan ini merupakan komitmen dari Pemprov Sumsel,\" tandasnya.</p>\n<p> </p>\n<p>Sumber : <a href=\"https://www.babe.news/a/6788044752269869570\">https://www.babe.news/a/6788044752269869570</a></p>', 6, '', '', 'Y', '2020-02-10 21:05:25', 7, '0000-00-00 00:00:00', 'Y', 0, 'pembangunan-jembatan-musi-vi-80-persen', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '62351102002', 0),
(72, 'Setelah Vakum, Akhinya April Ini Jembatan Musi VI Palembang Dikerjakan dan Nopember Bisa Dilewati ', '<p><strong>SRIPOKU.COM, PALEMBANG</strong> -- Pemerintah Provinsi Sumsel pada tahun 2020 menganggarkan dana sebesar Rp 85 M untuk penyelesaian pengerjaan fisik mega proyek <a title=\"Jembatan Musi VI Palembang\" href=\"https://palembang.tribunnews.com/tag/jembatan-musi-vi-palembang\">Jembatan Musi VI Palembang</a>, Selasa (4/2/2020).</p>\n<p>Jembatan yang sempat stop pengerjaannya karena pembebasan lahan ini, ditargetkan selesai dan bisa dilalui oleh pengendara pada November tahun ini.</p>\n<p>Kepala Dinas PUBM TR Sumsel, Darma Budi mengatakan pengerjaan fisik <a title=\"Jembatan Musi VI Palembang\" href=\"https://palembang.tribunnews.com/tag/jembatan-musi-vi-palembang\">Jembatan Musi VI Palembang</a> direncanakan bakal kembali dilanjutkan pada April mendatang usai ketok Palu anggaran Pemprov Sumsel tahun 2020.</p>\n<p>Hingga saat ini proges pembangunan sudah mencapai 84 persen pengerjaan fisik.</p>\n<p>\"April mulai dikerjakan lagi usai ketuk Palu anggaran. Kita targetkan November sudah bisa fungsional,\" ujarnya.</p>\n<p>Ia menjelaskan, pada akhir tahun 2019 kemarin pihaknya usai melalui pengerjaan fisik berupaya pemasangan balok girder dan mengecor lantai jembatan. Untuk tahun ini, pihaknya fokus menyelesaikan pada bagian akses jalan pendekatan di ulu dan ilir.</p>\n<p>\"Untuk tahun ini kita tinggal mengerjakan progres fisik yang belum rampung pada bagian akses jalan pendekatan di ulu dan ilir,\" tegas Budi.</p>\n<p>Kendati hampir rampung, namun jembatan Musi VI masih menyisakan permasalahan pembebasan lahan. Sebanyak 3 persil lahan (dua di Seberang Ulu dan satu di Seberang Ilir).</p>\n<p>Diakuinya, pembebasan lahan tersebut belum selesai lantaran pemilik lahan mematok harga 5 kali lipat dari penilaian dari Kantor Jasa Penilai Publik (KJPP).</p>\n<p>Apabila tak ada titik temu atau win-win solution, pihaknya akan melakukan konsinyasi dengan Pengandilam Negeri (PN) menitipkan anggaran pembebasan lahan.</p>\n<p>\"Ada yang minta ganti rugi sampai 5 kali lipat. Kalau tidak ketemu titik terang, kita akan konsinyasi ke PN. Pemilik lahan tinggal mengambil uang ganti ruginya di pengadilan,\" ungkapnya. (Oca)</p>\n<p> </p>\n<p>Sumber : <a href=\"https://palembang.tribunnews.com/2020/02/04/setelah-vakum-akhinya-april-ini-jembatan-musi-vi-palembang-dikerjakan-dan-nopember-bisa-dilewati\">https://palembang.tribunnews.com/2020/02/04/setelah-vakum-akhinya-april-ini-jembatan-musi-vi-palembang-dikerjakan-dan-nopember-bisa-dilewati</a></p>', 6, '', '', 'Y', '2020-02-10 21:09:04', 7, '0000-00-00 00:00:00', 'Y', 0, 'setelah-vakum-akhinya-april-ini-jembatan-musi-vi-palembang-dikerjakan-dan-nopember-bisa-dilewati', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '38244102002', 3),
(73, 'Akhir 2020, Jembatan Musi VI Sudah Bisa Dilalui', '<p>PALEMBANG — Pemerintah Provinsi Sumsel pada tahun 2020 menganggarkan dana sebesar Rp 85 M untuk penyelesaian pengerjaan fisik mega proyek Jembatan Musi VI Palembang, Selasa (4/2/2020).</p>\n<p>Jembatan yang sempat stop pengerjaannya karena pembebasan lahan ini, ditargetkan selesai dan bisa dilalui oleh pengendara pada November tahun ini.</p>\n<p>Kepala Dinas PUBM TR Sumsel, Darma Budi mengatakan pengerjaan fisik Jembatan Musi VI Palembang direncanakan bakal kembali dilanjutkan pada April mendatang usai ketok Palu anggaran Pemprov Sumsel tahun 2020.</p>\n<p>Hingga saat ini proges pembangunan sudah mencapai 84 persen pengerjaan fisik.</p>\n<p>“April mulai dikerjakan lagi usai ketok Palu anggaran. Kita targetkan November sudah bisa fungsional,” ujarnya.</p>\n<p>Ia menjelaskan, pada akhir tahun 2019 kemarin pihaknya usai melalui pengerjaan fisik berupaya pemasangan balok girder dan mengecor lantai jembatan. Untuk tahun ini, pihaknya fokus menyelesaikan pada bagian akses jalan pendekatan di ulu dan ilir.</p>\n<p>“Untuk tahun ini kita tinggal mengerjakan progres fisik yang belum rampung pada bagian akses jalan pendekatan di ulu dan ilir,” tegas Budi.</p>\n<p>Kendati hampir rampung, namun jembatan Musi VI masih menyisakan permasalahan pembebasan lahan. Sebanyak 3 persil lahan (dua di Seberang Ulu dan satu di Seberang Ilir).</p>\n<p>Diakuinya, pembebasan lahan tersebut belum selesai lantaran pemilik lahan mematok harga 5 kali lipat dari penilaian dari Kantor Jasa Penilai Publik (KJPP).</p>\n<p>Apabila tak ada titik temu atau win-win solution, pihaknya akan melakukan konsinyasi dengan Pengandilam Negeri (PN) menitipkan anggaran pembebasan lahan.</p>\n<p>“Ada yang minta ganti rugi sampai 5 kali lipat. Kalau tidak ketemu titik terang, kita akan konsinyasi ke PN. Pemilik lahan tinggal mengambil uang ganti ruginya di pengadilan,” ungkapnya.</p>\n<p> </p>\n<p>Sumber : <a href=\"http://sumsel24.com/akhir-2020-jembatan-musi-vi-sudah-bisa-dilalui/\">http://sumsel24.com/akhir-2020-jembatan-musi-vi-sudah-bisa-dilalui/</a></p>', 6, '', '', 'Y', '2020-02-10 21:10:23', 7, '0000-00-00 00:00:00', 'Y', 0, 'akhir-2020-jembatan-musi-vi-sudah-bisa-dilalui', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '25344102002', 2),
(74, 'Herman Deru Pastikan Pembangunan Jembatan Air Betung Selesai Tahun Ini', '<p>Gubernur Sumsel H Herman Deru meninjau rencana pembangunan Jembatan Air Betung Lingkar Timur, Dusun Alun Dua, Kelurahan Alun Dua dengan dana kurang lebih Rp35 miliar. Pengecekan secara spontan ini Ia lakukan sesaat setelah landin di Lapangan Bola dalam rangka kunjungan kerja di Kota Pagaralam, Kamis (6/2).</p>\n<p>Peninjauan Jembatan Air Betung yang baru dibangun tiang penyangga ini didampingi Kepala Dinas PU Provinsi Darma Budhi, Kepala UPTD PU Provinsi Hendri Wijaya, anggota DPR Provinsi Dapil VII H Alfrenzi Panggarbesi, Kepala Pol PP Pagaralam Mastullah, Kepala Dinas Perhubungan Pagaralam Novi Hendri, OPD Provinsi dan lainnya.</p>\n<p>Gubernur Sumsel H Herman Deru mengatakan, dari peninjauan sudah terlihat bangunan tiang untuk pembangunan jembatan. Bangunan tiang bagus dan kokoh. Pembangunan tiang pancang sudah dilakukan sebelumnya yang juga menggunakan bantuan gubernur.</p>\n<p>“Pembangunan Jembatan Air Betung jangan tidak selesai tahun ini. Saya sangat mendukung apalagi jembatan ini akan sangat bagus jika dibangun. Saking tingginya, kita bisa petik buah duren dari atas jembatan” kata Deru.</p>\n<p>Dikatakannya, memang sangat sayang jika pembangunan jembatan ini tidak dilanjutkan. Terlebih lagi, jembatan ini merupakan jalan lingkar yang memecah kendaraan didalam kota.</p>\n<p>Sementara itu, Kepala Dinas PU Provinsi Sumsel Darma Budhi didampingi Kepala UPTD PU Provinsi Sumsel Hendri Wijaya mengatakan, pihaknya menerima RAB pembangunan Jembatan Air Betung dari Dinas PU Kota Pagaralam. Dimana, untuk pembangunan Jembatan Air Betung menghabiskan dana Rp35 miliar dan sudah diverifikasi.</p>\n<p>“Nantinya untuk pembangunan dalam bentuk dana bantuan gubernur (bangub) ke Kota Pagaralam,” kata dia</p>\n<p>Dikatakan Hendri, pembangunan akan dilaksanakan pertengahan tahun. Dimana, Kota Pagaralam yang melaksanakan fisik karena perencanaan Kota Pagaralam yang lakukan.</p>\n<p>“Dana sudah diverifikasi Pemprov tinggal berlaku SK Gubernur ke Walikota Pagaralam, kalau itu sudah pembangunan bisa berjalan,” katanya.</p>\n<p>Walikota Pagaralam Alpian Maskoni mengucapkan banyak terima kasih kepada Gubernur Sumsel H Herman Deru. Pasalnya, sudah empat kali secara resmi ke Kota Pagaralam dan membantu apa yang diperlukan Kota Pagaralam.</p>\n<p>“Dibandingkan daerah lain kita sangat bangga karena selalu dikunjungi gubernur. Apalagi, pada tahun 2020 ini kita dibantu jembatan, jalan dan lainnya,” kata Alpian.</p>\n<p>Ditambahkan Anggota DPR Provinsi Sumsel H Alfrenzi Panggarbesi Jembatan Air Betung sangat penting sehingga memprioritaskan pembangunan. Apalagi, jembatan ini cukup lama mangkrak sehingga harus cepat diselesaikan.</p>\n<p>“Ini wujud perhatian gubernur. Sangat disayangkan jika pembangunannya tidak diteruskan. Mari kita dukung,” tukasnya. (rel)</p>\n<p> </p>\n<p>Sumber : <a href=\"https://www.babe.news/a/6791057350322029057\">https://www.babe.news/a/6791057350322029057</a></p>', 6, '', '', 'Y', '2020-02-10 21:12:12', 7, '0000-00-00 00:00:00', 'Y', 0, 'herman-deru-pastikan-pembangunan-jembatan-air-betung-selesai-tahun-ini', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '44192102002', 0),
(75, 'PUBM Sumsel Mulai Bersihkan Persil Lahan Pembangunan Musi Vl', '<p><strong>PALEMBANG,HS –</strong> Dinas PUBM dan Tata Ruang Sumsel melakukan land clearing atau pembersihan persil lahan yang akan digunakan sebagai akses pendekat di sisi Seberang Ilir Jembatan Musi VI, jalan Sultan Muhammad Mansyur Palembang, Senin (10/2/2020).</p>\n<p>Kepala Dinas PUBM TR Sumsel, Darma Budy mengatakan pihaknya membersihkan 5 persil lahan yang sudah dibebaskan di Seberang Ilir. Sebuah alat berat jenis buldozer diturunkan untuk merobohkan bangunan dan pohon-pohon yang akan digunakan sebagai akses pendekat.</p>\n<p>“Persil yang sudah bebas kita bersihkan dulu. Setelah dibongkar lahan ini kita land clearing dibentuk untuk akses pendekat,” kata Budi didampangi Kabid Jembatan M Affandi dan PPK Jembatan Musi Vl Arya Darmawan.</p>\n<p>Ia menjelaskan, untuk pembersihan lahan baru dilakukan untuk kawasan Seberang Ilir terlebih dahulu. Untuk Seberang Ulu masih belum dilakukan karena masih ada dua persil lagi belum bebas. Sementara untuk Seberang Ilir masih menyisakan satu persil lahan lagi.</p>\n<p>Usai melakukan land clearing, Budy menyebut pengerjaan fisik bakal kembali dilakukan pada bulan April atau usai ketok palu anggaran Pemprov Sumsel.</p>\n<p>“Seberang Ilir tinggal satu persil lagi tahap negosiasi. Kemungkinan April akan kita mulai kembali pembangunan,” jelasnya.</p>\n<p>PPK Jembatan Musi VI, Arya menambahkan untuk lanjutan pekerjaan fisik jembatan penghubung kawasan Ulu dan Ilir itu akan disiapkan pagu anggaran sebesar Rp 85 untuk penyelesaian bangunan fisik.</p>\n<p>Menurut progres fisik Jembatan Musi VI sudah memasuki 86 persen pekerjaan fisik. Jembatan tersebut ditargetkan rampung dan bisa dilalui pada akhir tahun ini.</p>\n<p>“Sisa pekerjaan fisik tinggal pekerjaan satu bentang tengah balok girder dan akses jalan pendekat. Tahun ini kita target sudah fungsional,” tutupnya</p>\n<p> </p>\n<p>Sumber : <a href=\"http://haluansumatera.com/pubm-sumsel-mulai-bersihkan-persil-lahan-pembangunan-musi-vl/\">http://haluansumatera.com/pubm-sumsel-mulai-bersihkan-persil-lahan-pembangunan-musi-vl/</a></p>', 6, '', '', 'Y', '2020-02-10 21:13:54', 7, '0000-00-00 00:00:00', 'Y', 0, 'pubm-sumsel-mulai-bersihkan-persil-lahan-pembangunan-musi-vl', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '64330102002', 3),
(76, 'Peninjauan Rencana Pembangunan Jembatan Air Betung Lingkar Timur Kota Pagaralam', '<p>Gubernur Sumsel H Herman Deru meninjau rencana pembangunan Jembatan Air Betung Lingkar Timur, Dusun Alun Dua, Kelurahan Alun Dua dengan dana kurang lebih Rp35 miliar. Pengecekan secara spontan ini la lakukan sesaat setelah landin di Lapangan Bola dalam rangka kunjungan kerja di Kota Pagaralam, Kamis (6/1). Peninjauan Jembatan Air Betung yang baru dibangun tiang penyangga ini didampingi Kepala Dinas PU Provinsi Darma Budhi, Kepala UPTD PU Provinsi Hendri Wijaya, anggota DPR Provinsi Dapil VII H Alfrenzi Panggarbesi, Kepala Pol PP Pagaralam Mastullah, Kepala Dinas Perhubungan Pagaralam Novi Hendri, OPD Provinsi dan lainnya. Gubernur Sumsel H Herman Deru mengatakan, dari peninjauan sudah terlihat bangunan tiang untuk pembangunan jembatan. Bangunan tiang bagus dan kokoh. Pembangunan tiang pancang sudah dilakukan sebelumnya yang juga menggunakan bantuan gubernur. \"Pembangunan Jembatan Air Betung jangan tidak selesai tahun ini. Saya sangat mendukung apalagi jembatan ini akan sangat bagus jika dibangun. Saking tingginya, kita bisa petik buah duren dari atas jembatan\" kata Deru. Dikatakannya, memang sangat sayang jika pembangunan jembatan ini tidak dilanjutkan. Terlebih lagi, jembatan ini merupakan jalan lingkar yang memecah kendaraan didalam kota. Sementara itu, Kepala Dinas PU Provinsi Sumsel Darma Budhi didampingi Kepala UPTD PU Provinsi Sumsel Hendri Wijaya mengatakanh, pihaknya menerima RAB pembangunan Jembatan Air Betung dari Dinas PU Kota Pagaralam. Dimana, untuk pembangunan Jembatan Air Betung menghabiskan dana Rp35 miliar dan sudah diverifikasi.</p>\n<p>Sementara itu, Kepala Dinas PU Provinsi Sumsel Darma Budhi didampingi Kepala UPTD PU Provinsi Sumsel Hendri Wijaya mengatakan, pihaknya menerima RAB pembangunan Jembatan Air Betung dari Dinas PU Kota Pagaralam. Dimana, untuk pembangunan Jembatan Air Betung menghabiskan dana Rp35 miliar dan sudah diverifikasi. \"Nantinya untuk pembangunan dalam bentuk dana bantuan gubernur (bangub) ke Kota Pagaralam,\" kata dia . Dikatakan Hendri, pembangunan akan dilaksanakan pertengahan tahun. Dimana, Kota Pagaralam yang melaksanakan fisik karena perencanaan Kota Pagaralam yang lakukan. \"Dana sudah diverifikasi Pemprov tinggal berlaku SK Gubernur ke Walikota Pagaralam, kalau itu sudah pembangunan bisa berjalan,\" katanya.</p>\n<p> </p>\n<p>Sumber : humasprovsumsel </p>', 6, '', '', 'Y', '2020-02-11 15:18:22', 7, '0000-00-00 00:00:00', 'Y', 0, 'peninjauan-rencana-pembangunan-jembatan-air-betung-lingkar-timur-kota-pagaralam', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '59242112002', 0),
(77, 'HD Pastikan Sumsel Siap Terapkan Penetapan Perda RTRW dan RDTR Online Single Submission', '<p>Gubernur Sumsel H. Herman Deru menyadari arti penting percepatan penetapan peraturan daerah (perda) Rencana Tata Ruang Wilayah (RTRW) dan Rencana Detail Tata Ruang (RDTR ) Online Single Submission (OSS) bagi kemajuan pembangunan daerah guna menarik investor berinventasi ke daerah.</p>\n<p>“Percepatan penetapan perda RTRW dan RDTR OSS itu sangat penting dan fundamental. Ini ibaratnya tapak pembangunan bagi daerah, mau dibawa ke mana dan seperti apa pengembangan daerah bergantung pada bagaimana rencana tata ruang wilayahnya. Saya mendorong percepatan perda tersebut”, kata Herman Deru saat menghadiri Rakor Percepatan Penetapan Perda RTRW dan RDTR OSS, di hotel Aryaduta, Jakarta, Rabu ( 12/02).</p>\n<p>Herman Deru mengungkapkan Sumsel bahkan telah memenuhi target perda RTRW di seluruh kabupaten/kota, sehingga tidak ada lagi persoalan dan melaksanakannya dengan baik.</p>\n<p>“Dari paparan tadi masih ada 18 kabupaten /kota di Indonesia yang belum memiliki perda RTRW, nah Alhamdulillah kita Sumsel sudah semua”, ujar HD.</p>\n<p>Dengan demikian target yang ditentukan pemerintah pusat kepada seluruh Gubernur di Indonesia agar per Mei 2020 perda RTRW ditetapkan dan diundangkan telah terpenuhi.</p>\n<p>“Tidak perlu menunggu hingga Mei, saat ini pun kita sudah siap. Kota Palembang juga, hanya saja memang untuk kota Palembang setiap 5 tahun sekali harus diperbaiki mengingat wilayahnya yang luas”, pungkasnya.</p>\n<p>Rakor percepatan penetapan perda RTRW dan RDTR OSS dibuka langsung Sekjen Kemendagri Hadi Prabowo mewakili Mendagri Tito Karnavian. Dalam kata sambutannya yang dibacakan Sekjen Hadi Prabowo ada 3 langkah strategis yang harus dilakukan pemerintah daerah berdasarkan arahan pemerintah pusat.</p>\n<p>“Pertama pemda segera mengagendakan propemda rancangan perda RDTR, kedua Bupati/Walikota bersama Ketua DPRD agar memproses hasil bantuan teknis sebagai landasan dalam penetapan perda RDTR OSS, dan ketiga kepada para Gubernur diharapkan dapat melakukan fungsi pembinaan dan pengawasan”, paparnya.</p>\n<p>Sementara Sekjen Kementerian Agraria dan Tata Ruang /Kepala Badan Pertanahan, Himawan Arif yang hadir sebagai keynote speech pada Rakor Percepatan Penetapan RTRW dan RDTR OSS menyampaikan percepatan pembangunan infrastruktur harus didukung karena RTRW adalah panglima pembangunan. 34 provinsi di Indonesia sudah memiliki perda RTRW.</p>\n<p>“Namun demikian dari 91 kota ada 2 kota yang belum memiliki perda, kemudian dari 329 kabupaten ada 16 kabupaten yang belum memiliki perda, sehingga total ada 18 kabupaten/kota yang belum mempunyai perda RTRW”, tandasnya.</p>\n<p>Himawan Arif melanjutkan perda RTRW bukan untuk menghambat pembangunan, tetapi untuk memudahkan terlebih tak lama lagi akan ada omnibus law, oleh karenanya RTRW adalah proses terbuka dan partisipatif. (rel)</p>\n<p> </p>\n<p>Sumber : <a href=\"https://www.babe.news/a/6792427693234192897\">https://www.babe.news/a/6792427693234192897</a></p>', 6, '', '', 'Y', '2020-03-18 09:28:42', 7, '0000-00-00 00:00:00', 'Y', 0, 'hd-pastikan-sumsel-siap-terapkan-penetapan-perda-rtrw-dan-rdtr-online-single-submission', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '60178182003', 0),
(78, 'Pemprov Sumsel Anggarkan Delapan Miliar untuk Perbaikan Jalan Rusak', '<p>Jalan Lintas Provinsi penghubung antara Kecamatan Pendopo dengan Kota Pagaralam Pemjebol, tepatnya berada di Desa Gunung Meraksa Baru Kecamatan Pendopo Kabupaten Empat Lawang.</p>\n<p>Dari pantauan dilokasi, jalan tersebut sudah jebol sepanjang 1 Meter dengan Lebar 1,5 Meter, yang berada diatas aliran air selokan dari Sawah Lebar.</p>\n<p>“Jalan ini sudah hampir 8 Bulanan seperti ini, jika hujan turun air selokan besar, maka jalan ini perlahan akan bertambah jebolnya, dikarenakan pondasinya sudah jebol duluan,” kata Sukaidi warga Desa setempat saat diwancarai, Sabtu (22/2/2020).</p>\n<p>Iapun juga berharap kepada Pemerintah agar segera memperbaikinya, agar nantinya tidak ada yang mengalami kecelakaan, sebab ini membayakan bagi pengendara yang melintasi jalan ini.</p>\n<p>“Ya, kami berharap kepada Pemerintah Kabupaten maupun Pemerintah Provinsi untuk segera memperbaikinya, supaya nantinya tidak ada yang mengalami kecelakaan, sebab ini membayakan pengendara,” harapnya.</p>\n<p>Sementara Anggota Komisi IV DPRD Provinsi, M Oktafiansyah (Engga) saat dikonfirmasi mengatakan, pihaknya sudah menganggarkan untuk perbaikan jalan yang disebabkan oleh bencana dan tahun ini direalisasikan.</p>\n<p>“Insyaallah Tahun ini kita realisasikan dan memang sudah kita anggarkan untuk anggaran bencana, sebesar kurang lebih 8 Miliar lebih untuk perbaikan jalan yg disebabkan bencana,” ungkapnya.</p>\n<p> </p>\n<p>Sumber : <a href=\"https://www.babe.news/a/6796256432099426817\">https://www.babe.news/a/6796256432099426817</a></p>', 6, '', '', 'Y', '2020-03-18 09:34:47', 7, '0000-00-00 00:00:00', 'Y', 0, 'pemprov-sumsel-anggarkan-delapan-miliar-untuk-perbaikan-jalan-rusak', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '14137182003', 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner_depan`
--

CREATE TABLE `banner_depan` (
  `id` int(11) NOT NULL,
  `gambar` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_href` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_depan`
--

INSERT INTO `banner_depan` (`id`, `gambar`, `header`, `caption`, `link_href`, `link_text`) VALUES
(10, 'http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/pupr6.jpg', '', '', '', ''),
(11, 'http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/pupr7.jpg', '', '', '', ''),
(12, 'http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/Untitled-1.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `banner_item`
--

CREATE TABLE `banner_item` (
  `id` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `gambar` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alttext` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_href` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_text` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_item`
--

INSERT INTO `banner_item` (`id`, `id_group`, `gambar`, `alttext`, `header`, `caption`, `link_href`, `link_text`) VALUES
(3, 1, 'http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/milky-way-1023340_1280.jpg', 'dddddd', 'ddd', 'ddd', 'dddddddddd', 'dddd'),
(4, 1, 'http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/sparkler-677774_1280.jpg', 'tes', 'tes', 'asd', 'dsd', 'sa');

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

CREATE TABLE `bidang` (
  `bidang_id` bigint(20) NOT NULL,
  `kategori_id` bigint(20) NOT NULL,
  `galeri_kategori_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `bidang_judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_tugas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_fungsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_url` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_javascript` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_status` enum('published','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `bidang_id_user` bigint(20) UNSIGNED NOT NULL,
  `bidang_id_edit` bigint(20) UNSIGNED NOT NULL,
  `bidang_created` datetime NOT NULL,
  `bidang_edited` datetime NOT NULL,
  `bidang_meta_keywords` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_meta_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bidang`
--

INSERT INTO `bidang` (`bidang_id`, `kategori_id`, `galeri_kategori_id`, `tag_id`, `bidang_judul`, `bidang_tugas`, `bidang_fungsi`, `bidang_url`, `bidang_isi`, `bidang_foto`, `bidang_javascript`, `bidang_status`, `bidang_id_user`, `bidang_id_edit`, `bidang_created`, `bidang_edited`, `bidang_meta_keywords`, `bidang_meta_description`) VALUES
(194, 0, 15, 26, 'UPTD PJ3 Kabupaten Ogan Komering Ulu', '', '', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/194-UPTD-PJ3-Kabupaten-Ogan-Komering', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(1691, 0, 14, 25, 'UPTD PJ3 Kabupaten Musi Banyuasin', '', '', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/1691-UPTD-PJ3-Kabupaten-Musi', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(1796, 0, 13, 24, 'UPTD PJ3 Kota Palembang', '', '', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/1796-UPTD-PJ3-Kota', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2094, 0, 12, 23, 'UPTD PJ3 Kabupaten Muara Enim', '', '', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/2094-UPTD-PJ3-Kabupaten-Muara', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2586, 0, 11, 22, 'UPTD PJ3 Kabupaten Ogan Komering Ilir', '', '', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/2586-UPTD-PJ3-Kabupaten-Ogan-Komering', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2750, 0, 9, 15, 'Bidang Pengembangan Jaringan Jalan', '&lt;p&gt;Bidang Pengembangan Jaringan Jalan mempunyai tugas melaksanakan sebagian tugas Dinas Pekerjaan Umum Bina Marga dan tata ruang dalam bidang pengembangan jaringan jalan dan jembatan.&lt;/p&gt;\r\n&lt;p&gt;  &lt;/p&gt;\r\n&lt;p&gt;Bidang Pembinaan Teknik terdiri dari :&lt;/p&gt;\r\n&lt;ol style=&quot;list-style-type: lower-alpha;&quot;&gt;\r\n&lt;li&gt;Seksi Perencanaan Teknik, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Mengumpulkan dan mengolah data dalam rangka perencanaan program pengembangan jalan dan jembatan&lt;/li&gt;\r\n&lt;li&gt;Menyusun desain awal konstruksi, perhitungan kekuatan konstruksi, rencana biaya/estimasi biaya pengembangan dan pemeliharaan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan kegiatan dan penelitian/survei harga dan jenis bahan yang dipergunakan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan survei struktur jalan, topogi dan gambar geometri jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Mengelola data base tentang jalan, jembatan dan bangunan pelengkap lainnya.;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan analsia dan evaluasi terhadap status dan manfaat jalan dan jembatan serta penanggulangan kerusakan akibat bencana&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan p[enelitian dan pengkajian dokumen teknis. Pembinaan dan pengawasan kegiatan pembangunan dan/atau peningkatan jalan pemeliharaan jalan pada ruas jalan provinsi;&lt;/li&gt;\r\n&lt;li&gt;Menyiapkan prosedur kerja dan memfasilitasi sosialisasi pembebasan lahan;&lt;/li&gt;\r\n&lt;li&gt;Membina pelaksanaan studi pembebasan lahan; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;br&gt;&lt;br&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt; Seksi Analisa Data, Dokumen, dan Pengembangan Sistem, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Menyiapkan perencanaan strategis pengembangfan jaringan jalan termasuk perencanaan jangka panjang, menengah dan rencana kerja tahunan;&lt;/li&gt;\r\n&lt;li&gt;Menyiapkan pedoman/panduan petunjuk teknis dan pelaksanaan petunjuk pelaksanaan;&lt;/li&gt;\r\n&lt;li&gt;Menetapkan fungsi, status dan kelas jalan pada system jaringan jalan provinsi;&lt;/li&gt;\r\n&lt;li&gt;Memberikan rekomendasi perizinan pemanfaatan jalan dan jembatan sesuai standart yang berlaku;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan keterpaduan system jaringan jalan dengan system moda transportasi;&lt;/li&gt;\r\n&lt;li&gt;Menyiapkan standar pedoman/panduan dan petunjuk teknis dan petunjuk pelaksanaan;&lt;/li&gt;\r\n&lt;li&gt;Menganganalisa data untuk penyajian informasi;&lt;/li&gt;\r\n&lt;li&gt;Menyiapkan bahan-bahan untuk dipaparkan secara kedinasan; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;br&gt;&lt;br&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;Seksi Leger Jalan Jalan, Pemantauan dan Evaluasi Teknis, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Menganalisasi dan mengevaluasi status jaringan dan fungsi jalan;&lt;/li&gt;\r\n&lt;li&gt;Menyusun dan mengembangkan identifikasi kondisi dan kerusakan perkerasan jalan;&lt;/li&gt;\r\n&lt;li&gt;Membina perencanaan dan pelaksanaan teknis konstruksi perkerasan dan drainase jalan;&lt;/li&gt;\r\n&lt;li&gt;Menyiapkan dokumen teknis untuk penanganan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Mengembangkan dan membina pelaksanaan teknologi bahan perkerasan; dan&lt;/li&gt;\r\n&lt;li&gt;Melakanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;/ol&gt;', '&lt;ol&gt;\r\n&lt;li&gt;Pelaksanaan pengembangan jaringan jalan, perencanaan umum, perencanaan teknis, survei dan leger jalan.&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan pengembangan jaringan jalan dan pengedalian teknik sesuai dengan peraturan standar teknik maupun peraturan perundang – undangan yang berlaku.&lt;/li&gt;\r\n&lt;li&gt;Pemberian izin, rekomendasi, dispensasi dan pertimbangan pemanfaatan ruang manfaat jalan, ruang milik jalan dan ruang pengawasan jalan;&lt;/li&gt;\r\n&lt;li&gt;Pemberian rekomendasi perizinan pemanfaatan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Penyiapan data dan rencana jebutuhan lahan untuk keperluan pembangunan dan peningkatan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan penyiapandokumen teknis untuk penyelenggaraan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan pekerjaan survei, investigasi, penelitian, analisa dampak lingkungan dan studi kelayakan;&lt;/li&gt;\r\n&lt;li&gt;Penyiapan data untuk bahan penyusunan dokumen rencana kerja dan anggaran tahunan;.&lt;/li&gt;\r\n&lt;li&gt;Penyiapan desain teknis jalan dan jembatan;.&lt;/li&gt;\r\n&lt;li&gt;Penghimpunan, penerimaan dan pemutakhiran, penyiapan data rencana kerja dan perencanaan teknis serta pelaksanaan kegiatan tata teknis;&lt;/li&gt;\r\n&lt;li&gt;Penatausahaan kepegawaian di lingkungan bidang pengembangan jaringan jalan; dan&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/2750-Bidang-Pengembangan-Jaringan', '', 'uploads/bidang/struktur 5 - bid air minum-01.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2783, 0, 10, 14, 'Sekretariat', '&lt;p&gt;Sekretariat mempunyai tugas melaksanakan koordinasi bidang administrasi umum, kepegawaian, keuangan, rumah tangga, perlengkapan, protokoler, hubungan masyarakat, pemeliharaan, penyusunan program dan pelaporan.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;Bagian Sekretariat terdiri dari :&lt;/p&gt;\r\n&lt;ol style=&quot;list-style-type: lower-alpha;&quot;&gt;\r\n&lt;li&gt;Sub Bagian Program, Evaluasi dan Pelaporan, mempunyai tugas:&lt;br&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;merumuskan dan melaksanakan penyusunan Rencana Strategis;&lt;/li&gt;\r\n&lt;li&gt;merumuskan dan melaksanakan penyusunan program dan rencana kerja;&lt;/li&gt;\r\n&lt;li&gt;menyiapkan bahan dan memproses penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah;&lt;/li&gt;\r\n&lt;li&gt;melaksanakan analisis, evaluasi dan pengendalian dalan melaksanakan program; dan&lt;/li&gt;\r\n&lt;li&gt;melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;Sub Bagian Keuangan, mempunyai tugas:&lt;br&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;mengumpulkan dan mensistematisasikan data untuk bahan penyusunan anggaran rutin dan pembangunan;&lt;/li&gt;\r\n&lt;li&gt;mengkoordinasikan dan melaksanan penyusunan rencana anggaran rutin dan pembangunan;&lt;/li&gt;\r\n&lt;li&gt;melakukan pengelolaan administrasi keuangan dan pembukuan realisasi anggaran serta membuat laporan pertanggungjawaban;&lt;/li&gt;\r\n&lt;li&gt;melakukan evaluasi pengeluaran anggaran rutin dan pembangunan serta pelaporannya; dan&lt;/li&gt;\r\n&lt;li&gt;melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;Bag. Umum dan Kepegawaian, mempunyai tugas :&lt;br&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;menyelenggarakan kegiatan kerumahtanggaan yang meliputi mempersiapkan rapat, menerima tamu, pelayanan telepon, kebersihan dan keamanan serta kegiatan lain yang berkaitan dengan urusan rumah tangga;&lt;/li&gt;\r\n&lt;li&gt;melaksanakan pengelolaan perlengkapan dan peralatan yang meliputi:\r\n&lt;ol&gt;\r\n&lt;li&gt;menginventarisasi, mengatur penggunaan, pemeliharaan dan pengurusan barang inventaris;dan&lt;/li&gt;\r\n&lt;li&gt;melaksanakan perencanaan pengadaan, pemeliharaan dan usul penghapusan sarana dan prasarana perlengkapan kantor.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;melaksanakan pengelolaan ketatausahaan yang meliputi kegiatan surat menyurat, kearsipan, perpustakaan, penyajian data, dokumentasi dan informasi serta menyiapkan administrasi perjalanan dinas.&lt;/li&gt;\r\n&lt;li&gt;melaksanakan pengelolaan administrasi kepegawaian dan fungsi kehumasan;&lt;/li&gt;\r\n&lt;li&gt;melaksanakan penyusunan Rencana Kebutuhan Barang Unit (RKBU) dan Rencana Pemeliharaan Barang Unit (RPBU); dan&lt;/li&gt;\r\n&lt;li&gt;melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;/ol&gt;', '&lt;p&gt;Untuk melaksanakan tugas tersebut maka sekretariat mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Perencanaan, perumusan dan penyusunan kebijakan teknis, program dan kegiatan;&lt;/li&gt;\r\n&lt;li&gt;Pengordinasian penyelenggaraan urusan pemerintah dan pelayanan umum bidang bina marga dan tata ruang;&lt;/li&gt;\r\n&lt;li&gt;Pembinaan, pengawasan dan pelaksanaan administrasi umum, produk hukum, pengendalian dan pelaporan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan dan pengelolaan anggaran rutin rumah tangga;&lt;/li&gt;\r\n&lt;li&gt;Pembinaan dan pengelolaan kepegawaian, hubungan masyarakat, rumah tangga, perlengkapan, protokol dan surat menyurat, kearsipan dan perpustakaan;&lt;/li&gt;\r\n&lt;li&gt;Pengelolaan penatausahaan, pemanfaatan dan pengamanan barang milik negara/daerah; dan&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan tugas kedinasan lainnya yang diberikan oleh pemimpin.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/2783-', '', 'uploads/bidang/struktur 01 - sekretariat.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2941, 0, 3, 21, 'UPTD Jalan dan Jembatan Kab Oku Timur', '&lt;p&gt;Kepala UPTD Mempunyai tugas melaksanakan sebagian tugas Dinas Pekerjaan Umum Bina Marga dan Tata Ruang di bidang jalan dan jembatan pada masing-masing wilayah kerja sesuai kewenangan.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;ol style=&quot;list-style-type: lower-alpha;&quot;&gt;\r\n&lt;li&gt;Subbagian Tata Usaha, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Melaksanakan penyiapan bahan dan penyusunan rencana anggaran rutin dan pembangunan;&lt;/li&gt;\r\n&lt;li&gt;Merumuskan dan melaksanakan penyusunan rencana dan program kerja dan kegiatan;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggarakan kegiatan urusan kerumahtanggaan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengelolaan ketatausahaan dan pengelolaan administrasi kepegawaian;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengelolaan administrasi keuangan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengelolaan perlengkapan dan alat berat;&lt;/li&gt;\r\n&lt;li&gt;Melaporkan hasil pelaksanaan tugas kepada atasan;&lt;/li&gt;\r\n&lt;li&gt;Member petunjuk dan membagi tugas kepada pelaksana;&lt;/li&gt;\r\n&lt;li&gt;Melakukan penilaian sasaran kinerja pelaksana; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;br&gt;&lt;br&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt; Seksi Jalan, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Menyusun program dan rencana jalan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pekerjaan dan survei kondisi jalan;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggarakan pemeliharaan berkala dan pemeliharaan rutin jalan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan penanganan dan penanggulangan darurat jalan;&lt;/li&gt;\r\n&lt;li&gt;Menyusun dokumen kegiatan pemeliharaan berkala dan rutin jalan;&lt;/li&gt;\r\n&lt;li&gt;Melaporkan hasil pelaksanaan tugas kepada Kepala UPTD;&lt;/li&gt;\r\n&lt;li&gt;Memberi petunjuk dan membagi tugas kepada pelaksana;&lt;/li&gt;\r\n&lt;li&gt;Melakukan penilaian sasaran kinerja pelaksana; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lain yang diberikan oleh pimpinan.&lt;br&gt;&lt;br&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt; Seksi Jembatan, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Menyusun program dan rencana jembatan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pekerjaan dan survei kondisi jembatan;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggarakan pemeliharaan berkala dan pemeliharaan rutin jembatan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan penanganan dan penanggulangan darurat jembatan;&lt;/li&gt;\r\n&lt;li&gt;Menyusun dokumen kegiatan pemeliharaan berkala dan rutin jembatan;&lt;/li&gt;\r\n&lt;li&gt;Melaporkan hasil pelaksanaan tugas kepada Kepala UPTD;&lt;/li&gt;\r\n&lt;li&gt;Memberi petunjuk dan membagi tugas kepada pelaksana;&lt;/li&gt;\r\n&lt;li&gt;Melakukan penilaian sasaran kinerja pelaksana; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lain yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;/ol&gt;', '&lt;ol&gt;\r\n&lt;li&gt;Penyusunan program, rencana kerja dan anggaran;&lt;/li&gt;\r\n&lt;li&gt;Pengkoordinasian program kerja intern;&lt;/li&gt;\r\n&lt;li&gt;Pengevaluasian hasil kegiatan pembangunan, peningkatan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan kegiatan pembangunan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan kegiatan pemeliharaan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Pengendalian perencanaan umum dan survey pembangunan, peningkatan, pemeliharaan jaringan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Pengendalian kegiatan penanggulangan bencana alam;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan pelayanan teknis administrative ketatatausahaan yang meliputi urusan keuangan, umum dan kepegawaian, peralatan dan perbekalan;&lt;/li&gt;\r\n&lt;li&gt;Penyusunan laporan pelaksanaan kegiatan dan tugas kepada Kepala Dinas;&lt;/li&gt;\r\n&lt;li&gt;Pengevaluasian prestasi kerja Kepala Subbagian, Kepala Seksi dan Pelaksana;&lt;/li&gt;\r\n&lt;li&gt;Pembagian tugas kepada Kepala Subbagian, Kepala Seksi dan Pelaksana serta Fungsional;&lt;/li&gt;\r\n&lt;li&gt;Pengevaluasian pelaksanaan kegiatan; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/2941-UPTD-Jalan-dan-Jembatan-Kab-Oku', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3187, 0, 4, 20, 'UPTD PJ3 Kabupaten Lahat', '', '', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/3187-UPTD-PJ3-Kabupaten', '', 'uploads/bidang/struktur 4 - tata bangunan.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3899, 0, 5, 19, 'Bidang Penataan Ruang', '&lt;p&gt;Bidang Penataan Ruang mempunyai tugas merencanakan, merumuskan dan melaksanakan perencanaan tata ruang, pemanfaatan ruang, pengendalian pemanfaatan ruang Provinsi berdasarkan peraturan perundang-undangan. &lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;Bidang Penataan Ruang terdiri dari:&lt;/p&gt;\r\n&lt;ol style=&quot;list-style-type: lower-alpha;&quot;&gt;\r\n&lt;li&gt;Seksi Penataan Ruang, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Merencanakan dan menyusun rencana program kerja perencanaan tata ruang;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan penyusunan dan peninjauan kembali rencana tata ruang provinsi, rencana rinci kawasan strategis provinsi dan penetapannya;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggrakan evaluasi, integrasi dan singkronisasi rencana tata ruang provinsi dan kabupaten/kota;&lt;/li&gt;\r\n&lt;li&gt;Menyiapkan penyelenggaraan koordinasi penataan ruang kabupaten/kota&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan kebijakan penataan ruang melalui pelaksanaan dan pelap[oran penataan ruang;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pembahasan substansi terhadap rencana tata ruang, rencana rinci kawasan strategis,rencana detil tata ruang dan rencana kawasan perdesaan kabpaten/kota untuk menerbitkan rekomendasi Gubernur;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan evaluasi rencana tata ruang, rencana rinci kawasan strategis, rencana detil tata ruang dan rencana kawasan perdesaan kabupaten/kota;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan koordinasi/kerja sama dan kemitraan dengan unit kerja/instansi/lembaga atau pihak ketiga di bidang perencanaan tata ruang; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;br&gt;&lt;br&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt; Seksi Pemanfaatan dan Pengendalian Pemanfaatan Ruang, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Merencanakan dan menyusun, rencana dan program kerja pemanfaatan dan pengendalian pemanfaatan ruang;&lt;/li&gt;\r\n&lt;li&gt;Menyusun kinerja, usulan anggaran program kegiatan pemanfaatan dan pengendalian pemanfaatan ruang;&lt;/li&gt;\r\n&lt;li&gt;Merumuskan, menyusun, mengintegrasikan, mesinkronisasikan dan mengevaluasi program kegiatan pemanfaatan dan pengendalian pemanfaatan ruang;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan kebijakan penataan ruang melalui pelaksanaan, pengaturan, pembinaan, pengawasan, pemantauan, evaluasi dan pelaporan penataan ruang;&lt;/li&gt;\r\n&lt;li&gt;Menerbitkan rekomendasi pengarahan pemanfaatan ruang;&lt;/li&gt;\r\n&lt;li&gt;Menyiapkan norma, standar, pedoman dan manual bidang penataan ruang provinsi dan kabupaten/kota;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan penelitian dan pengembangan bidang penataan ruang;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan koordinasi/kerja sama dan kemitraan dengan unit kerja/instansi/lembaga atau pihak ketiga di bidang pemanfaatan dan pengendalian pemanfaatan ruang; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;br&gt;&lt;br&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt; Seksi Data dan Informasi,mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Mengumpulkan, menyiapkan, merencanakan dan menyusun bahan perumusan dan rencana program kebijakan data informasi tata ruang;&lt;/li&gt;\r\n&lt;li&gt;Mengumpulkan, mengelola, mengelola data dan informasi baik spasial dan a-spasial penataan ruang dan mengelola dokumen, kepustakaan, layanan informasi tata ruang dan penyebarluasan informasi tata ruang;&lt;/li&gt;\r\n&lt;li&gt;Mengembangkan dan memelihara system dan jaringan data informasi bidang penataan ruang;&lt;/li&gt;\r\n&lt;li&gt;Mengelola menyiapkan dan melaksanakan komunikasi public serta pameran bidang penataan ruang;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan koordinasi/kerja sama dan kemitraan dengan unit kerja/instansi/lembaga atau pihak ketiga dibidang pengeloaan data informasi tata ruang;&lt;/li&gt;\r\n&lt;li&gt;Mengevaluasi pelaksanaan tugas pengelolaan data informasi tata ruang;&lt;/li&gt;\r\n&lt;li&gt;Menyusun rencana kerja, kinerja dan anggaran operasional tahunan;&lt;/li&gt;\r\n&lt;li&gt;Merencanakan dan menyusun rencana program kerja operasional perencanaan tata ruang, pemanfaatan dan pengendalian pemanfaatan ruang;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengelolaan urusan kepegawaian di lingkungan bidiang penataan ruang; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;/ol&gt;', '&lt;p&gt;Untuk melaksanakan tugas Bidang Penataan Ruang mempunyai fungsi:&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Penyiapan rumusan kebijakan penataan ruang wilayah Provinsi melalui perencanaan penataan ruang;&lt;/li&gt;\r\n&lt;li&gt;Penyiapan Program dan kegiatan baik perencanaan, pemanfaatan dan pengendalian pemanfaatan ruang;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan kebijakan penataan ruang melalui pelaksanaan, pengaturan, pembinaan, pengawasan, pemantauan, evaluasi dan pelaporan tata ruang di Provinsi;&lt;/li&gt;\r\n&lt;li&gt;Penyiapan Norma, Standar, pedoman dan manual bidang penataan ruang Provinsi dan Kabupaten/Kota;&lt;/li&gt;\r\n&lt;li&gt;Pemberian rekomendasi pengarahan pemanfaatan ruang;&lt;/li&gt;\r\n&lt;li&gt;Pengumpulan, penyiapan, pengolahan dan pengembangan data dan informasi penataan ruang;&lt;/li&gt;\r\n&lt;li&gt;Pengembangan sistem informasi tata ruang penyelenggaraan integrasi, evaluasi dan sinkronisasi rencana tata ruang provinsi dan Kabupaten/Kota&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan penelitian dan pengembangan bidang penataan ruang; dan&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan tugas kedinasan lainnya yang diberikan oleh atasan.&lt;/li&gt;\r\n&lt;/ol&gt;', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/3899-Bidang-Penataan', '', 'uploads/bidang/struktur 02 - bid pemb jalan jembatan.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4454, 0, 6, 18, 'Bidang Pengujian Peralatan dan BMD', '&lt;p&gt;Bidang Pengujian, Peralatan dan Barang mempunyai tugas melaksanakan sebagian tugas Dinas Pekerjaan Umum Bina Marga dan Tata Ruang dalam Bidang Pengujian Teknik, Peralatan dan perbekalanserta barang milik negara/daerah. &lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;Bidang Pengujian dan Peralatan terdiri  dari :&lt;/p&gt;\r\n&lt;ol style=&quot;list-style-type: lower-alpha;&quot;&gt;\r\n&lt;li&gt;Seksi Peralatan dan Perbekalan, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Menyusun rencana kebutuhan, pengadaan, penyimpanan dan pendistribusian peralatan dan barang;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pemeliharaan, perbaikan, perawatan, penyimpananan dan penggunaan peralatan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengelolaan peralatan; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;br&gt;&lt;br&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;Seksi Pengujian Jalan dan Jembatan, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Menyusun rencana kebutuhan bahan dan peralatan laboratorium dan pengujian teknik;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengelolaan laboratorium pengujian teknik;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengujian mutu, material bahan jalan dan jembatan geoteknik serta pengujian mutu konstruksi;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan kerja sama dengan laboratorium dan mitra kerja lain yang secara fungsional mempunyai hubungan kerja dalam hal teknologi pengujian dan manajemen laboratorium; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;br&gt;&lt;br&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt; Seksi Penatausahaan dan Pengamanan Barang, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Melakukan pendataan, pengelolaan dan pemeliharaan barang milik negara/daerah;&lt;/li&gt;\r\n&lt;li&gt;Melakukan pengawasan dan pengendalian atas pengelolaan barang milik negara/daerah;&lt;/li&gt;\r\n&lt;li&gt;Mengoptimalisasikan penggunaan dan pemanfaatan untuk peningkatan pendapatan asli daerah;&lt;/li&gt;\r\n&lt;li&gt;Melakukan pelaporan kondisi dan nilai barang milik negara/daerah dan melakukan laporan hasil pendapatan asli daerah yang dihasilkan;&lt;/li&gt;\r\n&lt;li&gt;Melakukan pengamanan barang milik Negara/daerah; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;/ol&gt;', '&lt;p&gt;Untuk melaksanakan tugas tersebut Bidang Pengujian dan Peralatan mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Pelaksanaan pengujian teknik bidang jalan dan jembatan.&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan pengadaan, penyimpanan, pendistribusian, pemeliharaan, perawatan dan inventarisasi peralatan dan perbekalan.&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan kegiatan administrasi Bidang Pengujian dan Peralatan.&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan kegiatan barang milik negara/daerah; dan&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan tugas kedinasan lainnya yang diberikan oleh atasan pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/4454-Bidang-Pengujian-Peralatan-dan', '', 'uploads/bidang/struktur 3 - preservasi jalan jemb.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5041, 0, 17, 28, 'UPTD Laboratorium Bahan Kontruksi', '&lt;p&gt;Kepala UPTD mempunyai tugas melaksanakan sebagian tugas Dinas di bidang pengujian material dan pengendalian mutu.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;ol style=&quot;list-style-type: lower-alpha;&quot;&gt;\r\n&lt;li&gt;Subbagian Tata Usaha, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Melaksanakan penyiapan bahan dan penyusunan rencana anggaran rutin;&lt;/li&gt;\r\n&lt;li&gt;Merumuskan dan pelaksanaan penyusunan rencana dan program kerja dan kegiatan;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggarakan kegiatan urusan kerumahtanggaan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengelolaan ketatausahaan dan pengelolaan administrasi kepegawaian;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengelolaan administrasi keuangan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengelolaan aset laboratorium dan pendapatan asli daerah sesuai ketentuan peraturan perundang-undangan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan fasilitasi pengelolaan pelayanan umum dan pelayanan hubungan masyarakat;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan administrasi dan fasilitasi penyelesaian hasil pemeriksaan uji laboratorium;&lt;/li&gt;\r\n&lt;li&gt;Melaporkan hasil pelaksanaan tugas kepada atasan;&lt;/li&gt;\r\n&lt;li&gt;Memberi petunjuk dan membagi tugas kepada pelaksana;&lt;/li&gt;\r\n&lt;li&gt;Melakukan penilaian sasaran kinerja pelaksana; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas lain yang diberikan oleh pimpinan.&lt;br&gt;&lt;br&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt; Seksi Pengujian Material, mempunyai tugas :\r\n&lt;ol&gt;\r\n&lt;li&gt;Melaksanakan pengujian terhadap bahan konstruksi jalan dan jembatan serta bahan konstruksi lainnya;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan penyusunan bahan kebijakan, pedoman dan standar teknis pelaksanaan pengujian material;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengumpulan, pengolahan data/bahan dan referensi dalam bidang pengujian bahan konstruksi;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan penyusunan rencana program kegiatan, pengendalian, evaluasi, dan pelaporan hasil pengujian bahan konstruksi sesuai dengan ketentuan peraturan perundang-undangan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan monitoring pemakaian bahan konstruksi dan/atau geologi sesuai ketentuan peraturan perundang-undangan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengujian mutu air, tanah, batuan, da/atau gologi terhadap pembangunan jalan dan jembatan sesuai ketentuan peraturan perundang-undangan;&lt;/li&gt;\r\n&lt;li&gt;Memberi petunjuk dan membagi tugas kepada pelaksana;&lt;/li&gt;\r\n&lt;li&gt;Melakukan penilaian sasaran kinerja pelaksana;dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas lain yang diberikan oleh pimpinan.&lt;br&gt;&lt;br&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt; Seksi Pengendalian Mutu, mempunyai tugas :\r\n&lt;ol&gt;\r\n&lt;li&gt;Melaksanakan pengumpulan, penyusunan, pengolahan data/bahan dan referensi dalam bidang pengendalian mutul&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan penyusunan bahan kebijakan, pedoman dan standar teknis pelaksanaan pengendalian mutu;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan penelitian dokumen teknis mutu fisik konstruksi jalan dan jembatan Provinsi sesuai ketentuan peraturan perundang-undangan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan monitoring dan pembinaan mutu fisik konstruksi jalan dan jembatan sesuai ketentuan peraturan perundang-undangan ;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengawasan mutu fisik konstruksi jalan dan jembatan sesuai ketentuan peraturan perundang-undangan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan evaluasi mutu fisik konstruksi jalan dan jembatan sesuai ketentuan peraturan perundang-undangan;&lt;/li&gt;\r\n&lt;li&gt;Merencanakan program dan kegiatan UPTD;&lt;/li&gt;\r\n&lt;li&gt;Memberi petunjuk dan membagi tugas kepada pelaksana;&lt;/li&gt;\r\n&lt;li&gt;Melakukan penilaian sasaran kinerja pelaksanaan;dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas lain yang diberikan pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;/ol&gt;', '&lt;p&gt;Untuk melaksanakan tugas, Kepala UPTD mempunyai fungsi:&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Penyusunan program dan rencana kerja anggaran;&lt;/li&gt;\r\n&lt;li&gt;Pengkoordinasian program kerja intern;&lt;/li&gt;\r\n&lt;li&gt;Perencanaan sasaran operational pelaksanaan pengujian bahan material jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Perencanaan sasaran operasional pelaksanaan pengendalian mutu fisik konstruksi jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan pengujian mutu material bahan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan pengendalian mutu fisik konstruksi jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan pelayanan teknis administrasi ketatausahaan yang meliputi urusan keuangan, umum dan kepegawaian, peralatan dan perbekalan;&lt;/li&gt;\r\n&lt;li&gt;Penyusunan laporan kegiatan;&lt;/li&gt;\r\n&lt;li&gt;Pengevaluasian prestasi kerja Kepala Subbagian, Kepala Seksi dan Pelaksana;&lt;/li&gt;\r\n&lt;li&gt;Pelaporan hasil pelaksanaan tugas kepada Kepala Dinas;&lt;/li&gt;\r\n&lt;li&gt;Pembagian tugas kepada Kepala Subbagian, Kepala Seksi,dan Pelaksana serta Fungsional;&lt;/li&gt;\r\n&lt;li&gt;Pengevaluasian pelaksanaan kegiatan; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lain yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/5041-UPTD-Laboratorium-Bahan', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6358, 0, 16, 27, 'UPTD PJ3 Kabupaten Musi Rawas', '', '', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/6358-UPTD-PJ3-Kabupaten-Musi', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7549, 0, 7, 17, 'Bidang Jembatan', '&lt;p&gt;Bidang Jembatan mempunyai tugas melaksanakan sebagian tugas Dinas Pekerjaan Umum Bina Marga dan Tata Ruang dalam pelaksanaan dan pengawasan pembangunan, peningkatan/pemeliharaan jembatan dalam Provinsi.&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Pengendalian pelaksanaan pada bidang jembatan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan kegaiatan pembinaan dalam bidang jembatan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan evaluasi dan administrasi pelaporan kegiatan pembangunan, peningkatan dan pemeliharaan dalam bidang jembatan; dan&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;Bidang Bina Pelaksanaan  Wilayah  II terdiri dari :&lt;/p&gt;\r\n&lt;ol style=&quot;list-style-type: lower-alpha;&quot;&gt;\r\n&lt;li&gt;Seksi Pembangunan dan Preservasi Jembatan Wilayah I (Kota Prabumulih, Kabupaten Muara Enim,Kabupaten Penukal Abab Lematang Ilir, Kabupaten Lahat, Kabupaten Empat Lawang, KabupatenMusi Rawas, Kota Pagar Alam, Kota Lubuk Linggau dan Kabupaten Musi Rawas Utara ), mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Menyusun perencanaan teknis pembangunan dan penggatian jembatan, pemprograman dan penganggaran serta pelaksanaan konstruksi jembatan wilayah I;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggarakan pembangunan, penggantian dan pemeliharaan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan inventarisasi pembangunan dan penggantian jembatan beserta bangunan pelengkapnya;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan penanganan dan pengandalian teknis penanggulangan dan penanganan darurat di bidang jembatan;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggarakan pemeliharaan jembatan dan bangunan pelengkap lainnya;&lt;/li&gt;\r\n&lt;li&gt;Menyusun dokumentasi teknis pelaksanaan kegiatan pembangunan, penggantian jembatan dan pemeliharaan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Menyusun laporan pelaksanaan tugas; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;br&gt;&lt;br&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;Seksi Pembangunan dan Preservasi Jembatan Wilayah II (Kota Palembang, Kabupaten Ogan Ilir, Kabupaten Ogan Komering Ilir, Kabupaten Ogan Komering Ulu, Kabupaten OKU Timur, Kabupaten OKU Selatan,Kabupaten Musi Banyuasin dan Kabupaten Banyuasin),mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Menyusun perencanaan teknis pembangunan dan penggantian jembatan, pemprograman dan penganggaran serta pelaksanaan Konstruksi Jembatan Wilayah II;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggarakan pembangunan, penggantian dan pemeliharaan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan inventarisasi pembangunan dan penggantian jembatan beserta bangunan pelengkapnya;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan penanganan dan pengandalian teknis penanggulangan dan penanganan darurat di bidang jembatan;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggarakan pemeliharaan jembatan dan bangunan pelengkap lainnya;&lt;/li&gt;\r\n&lt;li&gt;Menyusun dokumentasi teknis pelaksanaan kegiatan pembangunan, penggantian jembatan dan pemeliharaan jembatan;&lt;/li&gt;\r\n&lt;li&gt;Menyusun laporan pelaksanaan tugas; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;', '&lt;ol&gt;\r\n&lt;li&gt;Seksi Pengawasan dan Evaluasi Jembatan.&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengendalian teknis dan mengevaluasi pelaksanaan pembangunan, peningkatan, pemeliharaan jembatan dan banguna pelengkap lainnya;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan inventarisasi pemeliharaan rutin dan berkala jembatan dan bangunan pelengkap lainnya;&lt;/li&gt;\r\n&lt;li&gt;Menyiapkan data dan rencana pemeliharaan rutin dan berkala jembatan dan bangunan pelengkap lainnya;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan evaluasi kinerja penyelenggaraan preservasi/pemeliharaan rutin jembatan dan bangunan pelengkap lainnya;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan pengawasan, monitoring dan evaluasi terhadap kinerja konsultasi/supervisi;&lt;/li&gt;\r\n&lt;li&gt;Menyusun laporan pelaksanaan tugas; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/7549-Bidang', '', 'uploads/bidang/struktur 6 - sumber daya air-01.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7822, 0, 8, 16, 'Bidang Jalan', '&lt;p&gt;Bidang Jalan mempunyai tugas melaksanakan sebagian tugas Dinas Pekerjaan Umum Bina Marga Dan Tata Ruang dalam pelaksanaan, pembangunan, peningkatan, rehabilitasi/pemeliharaan dan pengawasan jalan dalam Provinsi.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;Bidang Jalan terdiri dari :&lt;/p&gt;\r\n&lt;ol style=&quot;list-style-type: lower-alpha;&quot;&gt;\r\n&lt;li&gt;Seksi Pembangunan dan Preservasi Jalan Wilayah I (Kota Prabumulih, Kabupaten Muara Enim, Kabupaten Penukal Abab Lematang Ilir, Kabupaten Lahat, Kabupaten Empat Lawang, Kabupaten Musi Rawas, Kota Pagar Alam, Kota Lubuk Linggau dan Kabupaten Musi Rawas Utara; mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Menyusun perencanaan teknis pembangunan dan peningkatan jalan, pemprograman dan penganggaran serta pelasanaan Konstruksi Jalan Wilayah I;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggarakan pembangunan, peningkatan dan pemeliharaan berkala jalan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan inventarisasi pembangunan dan peningkatan jalan beserta bangunan pelengkapnya;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan penanganan dan pengendalian teknis penanggulangan dan penanganan darurat di bidang jalan;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggarakan pemeliharaan jalan dan bangunan pelengkap lainnya;&lt;/li&gt;\r\n&lt;li&gt;Menyusun dokumen teknis pelaksanaan kegiatan pembangunan, peningkatan dan pemeliharaan berkala jalan;&lt;/li&gt;\r\n&lt;li&gt;Menyusun laporan pelaksanaan tugas; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;br&gt;&lt;br&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt; Seksi Pembangunan dan Preservasi Jalan Wilayah II (Kota Palembang, Kabupaten Ogan Ilir, Kabupaten Ogan Komering Ilir, Kabupaten Ogan Komering Ulu, Kabupaten OKU Timur, Kabupaten OKU Selatan, Kabupaten Musi Banyuasin dan Kabupaten Banyuasin), mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Menyusun perencanaan teknis pembangunan dan peningkatan jalan, pemprograman dan penganggaran serta pelaksanaan Konstruksi Jalan Wilayah II;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggarakan pembangunan, peningkatan dan pemeliharaan berkala jalan;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan inventarisasi pembangunan dan peningkatan jalan beserta bangunan pelengkapnya;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan penanganan dan pengendalian teknis penanggulangan dan penanganan darurat di bidang jalan;&lt;/li&gt;\r\n&lt;li&gt;Menyelenggarakan pemeliharaan jalan dan banguanan pelengkap lainnya;&lt;/li&gt;\r\n&lt;li&gt;Menyusun dokumen teknis pelaksanaan kegiatan pembangunan, peningkatan dan pemeliharaan berkala jalan;&lt;/li&gt;\r\n&lt;li&gt;Menyusun laporan pelaksanaan tugas; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt; Seksi Pengawasan dan Evaluasi Jalan, mempunyai tugas:\r\n&lt;ol&gt;\r\n&lt;li&gt;Melaksanakan pengendalian teknis dan mengevaluasi pelaksanaan pembangunan, peningkatan, pemeliharaan jalan dan bangunan pelengkap lainnya;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan inventarisasi pemeliharaan rutin dan berkala jalan dan bangunan pelengkap lainnya;&lt;/li&gt;\r\n&lt;li&gt;Menyiapkan data rencana pemeliharaan rutin dan berkala jalan dan bangunan pelengkap lainnya;&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan evaluasi kinerja penyelenggaraan preservasi/pemeliharaan rutin jalan dan bangunan pelengkap lainnya;&lt;/li&gt;\r\n&lt;li&gt;Melakukan pengawasan, monitoring dan evaluasi terhadap kinerja konsultan/supervisi;&lt;/li&gt;\r\n&lt;li&gt;Menyusun laporan pelaksanaan tugas; dan&lt;/li&gt;\r\n&lt;li&gt;Melaksanakan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/li&gt;\r\n&lt;/ol&gt;', '&lt;ol&gt;\r\n&lt;li&gt;Pengendalian pelaksanaan pada bidang jalan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan kegiatan pembinaan, pembangunan, peningkatan, pemeliharaan dan pengawasan dalam bidang jalan;.&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan pengendalian dan penanggulangan jalan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan evaluasi dan administrasi pelaporan kegiatan pembangunan, peningkatan, pemeliharaan dan bangunan pelengkap dalam bidang jalan;dan&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan tugas kedinasan lainnya yang diberikan oleh pimpinan.&lt;/li&gt;\r\n&lt;/ol&gt;', 'http://dpubmtr.sumselprov.pkitapp.com/bidang/7822-Bidang', '', 'uploads/bidang/struktur 7 - bid tata ruang-01.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_singkat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_fb` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `nama`, `foto`, `deskripsi_singkat`, `deskripsi`, `link_fb`) VALUES
(1, 'Dinas PU PR', 'http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/logo_dinaspupr.png', 'Kementerian Pekerjaan Umum dan Perumahan Rakyat Republik Indonesia adalah kementerian dalam Pemerintah Indonesia yang membidangi urusan pekerjaan umum dan perumahan rakyat', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_download` bigint(20) UNSIGNED NOT NULL,
  `nama_file` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `download_temp`
--

CREATE TABLE `download_temp` (
  `id` int(11) NOT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_masuk`
--

CREATE TABLE `email_masuk` (
  `email_id` int(11) NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`, `slug`, `tanggal`) VALUES
(14, 'Question 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et dapibus dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean nibh justo, varius vitae tempor eu, gravida lacinia libero. Phasellus id ex tellus. Fusce rhoncus lectus ac suscipit venenatis. Fusce faucibus aliquet pharetra. Curabitur feugiat congue neque quis accumsan. Vestibulum ut leo volutpat, gravida enim non, maximus erat. Sed bibendum ornare egestas. Vivamus in ex id mi dignissim laoreet ut non dui. Etiam ut egestas metus. Maecenas condimentum iaculis purus.</p>\n<p>Mauris porttitor, erat et mollis cursus, risus turpis vestibulum erat, in pulvinar turpis metus in lacus. Sed laoreet faucibus accumsan. Curabitur luctus mollis nisl, eu placerat massa interdum eu. Maecenas nec ipsum ipsum. Cras a nulla finibus, eleifend ex in, mollis odio. Suspendisse maximus tortor sapien, in iaculis leo rhoncus in. Pellentesque ultrices diam congue dapibus scelerisque.</p>', 'question-1', '2018-07-10 02:50:26'),
(15, 'Question 2', '<p>Morbi non accumsan odio. Nulla tortor tortor, semper a justo quis, porta consequat mi. Nullam quis ante at felis dapibus hendrerit et non lectus. Pellentesque a aliquet justo. Etiam mauris urna, scelerisque vel ex nec, ultrices accumsan libero. Etiam auctor ipsum sit amet porta dignissim. Etiam enim lectus, tempus quis placerat maximus, posuere ut arcu. Nulla felis leo, vestibulum non eleifend congue, congue vel turpis. Nulla at enim consectetur, egestas purus ac, eleifend sem. Aenean malesuada congue venenatis. Sed nec viverra turpis, eget pharetra augue. Cras rutrum quam vitae ipsum interdum, eu elementum nisi consectetur.</p>\n<p>Phasellus in diam imperdiet, finibus tortor nec, ullamcorper est. Nam commodo felis at quam venenatis, eu dictum felis feugiat. Aliquam id orci dolor. In luctus mi vitae orci suscipit, vitae dignissim enim porttitor. Pellentesque lectus odio, mollis ac aliquam in, dapibus eu velit. Nullam mauris ligula, dictum non elit eleifend, venenatis dignissim purus. Cras maximus porttitor dui elementum auctor. Pellentesque accumsan metus vitae egestas vehicula.</p>\n<p><img src=\"http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/man-489744_1280.jpg\" alt=\"man-489744_1280\"></p>\n<p>Mauris porta quis elit quis tincidunt. Proin at aliquet augue, eu auctor augue. Vivamus consequat risus quis dolor iaculis scelerisque. Sed eu posuere turpis, a tincidunt nunc. Maecenas sit amet metus eget purus ultrices porta. Sed eleifend, eros sit amet semper pulvinar, est quam sollicitudin velit, eu mollis felis enim vel enim. Proin tincidunt ut diam ac faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus ac pharetra arcu. Morbi facilisis, quam rhoncus laoreet egestas, neque urna euismod purus, sed rutrum mi lacus sed eros. Duis ut egestas turpis. Nullam sed nisi maximus, eleifend libero eu, ultricies mauris. Duis accumsan tincidunt lectus non gravida.</p>', 'question-2', '2018-07-13 07:38:55'),
(16, 'Question 3', '<p>Morbi faucibus, risus consequat consectetur ultrices, erat arcu iaculis nunc, sit amet condimentum enim tortor ut neque. In vitae dignissim enim. Pellentesque eu vehicula ex. Aenean condimentum magna vitae sem vehicula, nec molestie nisi lacinia. Praesent feugiat risus a neque varius luctus ut a justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean lobortis ipsum ac urna elementum, euismod aliquam ipsum facilisis. Aenean eget ante eleifend, ornare velit vehicula, tempus mi. Curabitur vestibulum tellus et libero tempor, sed vehicula turpis feugiat. In in neque sit amet ipsum rhoncus tincidunt. Suspendisse dapibus mollis lacinia. Nulla facilisi. Sed suscipit ullamcorper tincidunt.</p>\n<p>Etiam interdum sem eget mauris vulputate gravida. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt nisi eget condimentum rutrum. Mauris sed turpis volutpat, facilisis lorem non, vulputate ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed turpis purus, convallis eu sem in, mollis ultricies libero. Pellentesque tincidunt elementum turpis, at vehicula lorem eleifend nec. Ut ac tortor id orci tincidunt sollicitudin vel sit amet neque. In efficitur, ante vitae convallis iaculis, leo est ullamcorper dui, ut imperdiet ex velit sit amet metus. Suspendisse potenti.</p>', 'question-3', '2018-07-13 07:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `foto_artikel`
--

CREATE TABLE `foto_artikel` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `id_artikel` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `token_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foto_artikel`
--

INSERT INTO `foto_artikel` (`id_foto`, `id_artikel`, `nama_foto`, `featured`, `token_foto`) VALUES
(38, 0, '0f050fb938257f539cc72fffd9c5777a_(1)16.jpg', 'N', '0.06969781340578418'),
(39, 0, '97ec7d0f6fab283b9a57f2aa715129348db5e8c1.jpg', 'N', '0.4670726669679284'),
(40, 0, 'misi.png', 'N', '0.694354319383836'),
(41, 0, 'a168aed1818caefbc649299892d9af3c_(1)1.jpg', 'N', '0.6069970556463034'),
(43, 0, '0f050fb938257f539cc72fffd9c5777a_(1)7.jpg', 'N', '0.7160635721922584'),
(45, 0, '0f050fb938257f539cc72fffd9c5777a_(1)11.jpg', 'N', '0.8391668677766666'),
(47, 0, '0f050fb938257f539cc72fffd9c5777a_(1)17.jpg', 'N', '0.043018707985382765'),
(51, 39, '4121d4c91e11eaa58b19eec4a153f9ee_uload_haki.jpg', 'N', '0.752056066412484'),
(52, 40, '7ee8c6867c9f964342d2aaadee2ddb5b_upload_sosial.jpeg', 'N', '0.01648668258865893'),
(54, 41, 'Untitled.png', 'Y', ''),
(55, 42, '44d7a0a3f056f47fdc5292f73ac0de40_pelatihan_pengembangan_kepribadian.jpg', 'N', ''),
(56, 43, 'asa.png', 'N', ''),
(57, 44, '14aac50cc06a9660dff92248a114c73b_upload_pwri.jpg', 'N', ''),
(59, 45, '20190506_150916.jpg', 'Y', '0.8535045494657196'),
(60, 46, 'jalan-rusak-di-mayor-zen.jpg', 'N', ''),
(61, 47, '20190508111043_Sidak1.jpg', 'Y', ''),
(62, 48, 'berita_662235_800x600_IMG-20190416-WA0015.jpg', 'Y', ''),
(63, 49, 'IMG_20190416_152855.jpg', 'N', ''),
(64, 50, 'IMG-20190416-WA0070.jpg', 'Y', ''),
(66, 51, '37df40e263a9126959cf23b36955bdce.jpg', 'N', '0.7485491689479911'),
(68, 56, 'IMG-20200102-WA0018.jpg', 'N', ''),
(69, 57, '_news_20200106185300photopictureresizer_200106_184610854_crop_1280x787-1024x614.jpg', 'N', ''),
(70, 58, 'IMG_20200107_140957.jpg', 'N', ''),
(71, 65, 'PSX_20200122_153919.jpg', 'N', ''),
(72, 66, 'Gubernur-Sumatera-Selatan-Herman-Deru-meninjau-kondisi-jalan-di-16-Ulu-660x330.jpg', 'N', '0.6666353206661717'),
(73, 70, 'IMG-20200128-WA0046.jpg', 'N', '0.14755844281137565'),
(74, 72, 'rapat-musi-vi.jpg', 'N', ''),
(75, 73, 'IMG-20200204-WA0006-681x511.jpg', 'N', ''),
(76, 75, 'IMG_20200210_142239.jpg', 'N', '');

-- --------------------------------------------------------

--
-- Table structure for table `foto_artikel_temp`
--

CREATE TABLE `foto_artikel_temp` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foto_galeri`
--

CREATE TABLE `foto_galeri` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `id_galeri` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_foto` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foto_galeri`
--

INSERT INTO `foto_galeri` (`id_foto`, `id_galeri`, `nama_foto`, `token_foto`, `deskripsi_foto`) VALUES
(26, 9, '1.jpeg', '', 'Press converence di ruang rapat kadin'),
(27, 10, '22.jpeg', '', ''),
(28, 11, '3.jpeg', '', ''),
(55, 13, 'WhatsApp_Image_2019-05-08_at_19_15_06.jpeg', '', ''),
(56, 14, 'WhatsApp_Image_2019-05-08_at_19_15_07.jpeg', '', ''),
(57, 15, 'WhatsApp_Image_2019-05-08_at_19_15_08.jpeg', '', ''),
(58, 16, 'WhatsApp_Image_2019-05-08_at_19_15_08(1).jpeg', '', ''),
(59, 17, 'WhatsApp_Image_2019-05-08_at_19_15_09.jpeg', '', ''),
(60, 18, 'WhatsApp_Image_2019-05-08_at_19_15_09(1).jpeg', '', ''),
(61, 19, 'WhatsApp_Image_2019-05-08_at_19_15_10.jpeg', '', ''),
(62, 20, 'WhatsApp_Image_2019-05-08_at_19_15_11.jpeg', '', ''),
(71, 21, '29.jpeg', '', ''),
(72, 21, '28.jpeg', '', ''),
(73, 21, '27.jpeg', '', ''),
(74, 21, '26.jpeg', '', ''),
(75, 21, '25.jpeg', '', ''),
(76, 21, '24.jpeg', '', ''),
(77, 21, '23.jpeg', '', ''),
(78, 21, '221.jpeg', '', ''),
(79, 21, '211.jpeg', '', ''),
(80, 21, '20.jpeg', '', ''),
(81, 21, '18.jpeg', '', ''),
(82, 21, '17.jpeg', '', ''),
(83, 21, '16.jpeg', '', ''),
(84, 21, '15.jpeg', '', ''),
(85, 21, '14.jpeg', '', ''),
(86, 21, '13.jpeg', '', ''),
(87, 21, '12.jpeg', '', ''),
(88, 21, '10.jpeg', '', ''),
(89, 21, '9.jpeg', '', ''),
(90, 21, '8.jpeg', '', ''),
(91, 21, '7.jpeg', '', ''),
(92, 21, '6.jpeg', '', ''),
(93, 21, '4.jpeg', '', ''),
(94, 21, '5.jpeg', '', ''),
(95, 21, '19.jpeg', '', ''),
(96, 22, 'WhatsApp_Image_2019-05-15_at_00_32_56(1).jpeg', '', ''),
(97, 23, 'WhatsApp_Image_2019-05-15_at_00_32_56.jpeg', '', ''),
(98, 24, 'WhatsApp_Image_2019-05-15_at_00_32_59.jpeg', '', ''),
(99, 25, 'WhatsApp_Image_2019-05-15_at_00_33_00(1).jpeg', '', ''),
(100, 26, 'WhatsApp_Image_2019-05-15_at_00_33_00(2).jpeg', '', ''),
(101, 27, 'WhatsApp_Image_2019-05-15_at_00_33_00.jpeg', '', ''),
(102, 28, 'WhatsApp_Image_2019-05-15_at_00_33_01(1).jpeg', '', ''),
(103, 29, 'WhatsApp_Image_2019-05-15_at_00_33_01.jpeg', '', ''),
(104, 30, 'WhatsApp_Image_2019-05-15_at_00_33_02(1).jpeg', '', ''),
(105, 31, 'WhatsApp_Image_2019-05-15_at_00_33_02(2).jpeg', '', ''),
(106, 32, 'WhatsApp_Image_2019-05-15_at_00_33_02.jpeg', '', ''),
(107, 33, 'WhatsApp_Image_2019-05-15_at_00_33_03(1).jpeg', '', ''),
(108, 34, 'WhatsApp_Image_2019-05-15_at_00_33_03(2).jpeg', '', ''),
(109, 35, 'WhatsApp_Image_2019-05-15_at_00_33_03(3).jpeg', '', ''),
(110, 36, 'WhatsApp_Image_2019-05-15_at_00_33_03.jpeg', '', ''),
(111, 37, 'WhatsApp_Image_2019-05-15_at_00_33_04(1).jpeg', '', ''),
(112, 38, 'WhatsApp_Image_2019-05-15_at_00_33_04(2).jpeg', '', ''),
(113, 39, 'WhatsApp_Image_2019-05-15_at_00_33_04(3).jpeg', '', ''),
(114, 40, 'WhatsApp_Image_2019-05-15_at_00_33_04.jpeg', '', ''),
(115, 41, 'WhatsApp_Image_2019-05-15_at_00_33_05(1).jpeg', '', ''),
(116, 42, 'WhatsApp_Image_2019-05-15_at_00_33_05(2).jpeg', '', ''),
(117, 43, 'WhatsApp_Image_2019-05-15_at_00_33_05.jpeg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `foto_galeri_temp`
--

CREATE TABLE `foto_galeri_temp` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foto_galeri_temp`
--

INSERT INTO `foto_galeri_temp` (`id_foto`, `nama_foto`, `token_foto`, `sesi_form`) VALUES
(1, 'cover.jpg', '0.738971008688023', '20334131812'),
(3, '2.jpeg', '0.5955624387761087', '35350081905'),
(4, '21.jpeg', '0.482805599835465', '22125081905');

-- --------------------------------------------------------

--
-- Table structure for table `foto_user_tmp`
--

CREATE TABLE `foto_user_tmp` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foto_user_tmp`
--

INSERT INTO `foto_user_tmp` (`id_foto`, `nama_foto`, `token_foto`, `sesi_from`, `id_user`) VALUES
(1, '0f050fb938257f539cc72fffd9c5777a_(1).jpg', '0.05924163038590757', '64273131812', 0);

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `galeri_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `galeri_nama` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_feature_img` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_meta_keyword` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_meta_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_og_image` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_og_deskripsi` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_date` datetime NOT NULL,
  `galeri_date_edit` datetime NOT NULL,
  `galeri_user` bigint(20) UNSIGNED NOT NULL,
  `galeri_user_edit` bigint(20) UNSIGNED NOT NULL,
  `galeri_status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`galeri_id`, `kategori_id`, `galeri_nama`, `galeri_deskripsi`, `galeri_feature_img`, `galeri_url`, `galeri_meta_keyword`, `galeri_meta_deskripsi`, `galeri_og_image`, `galeri_og_deskripsi`, `galeri_date`, `galeri_date_edit`, `galeri_user`, `galeri_user_edit`, `galeri_status`) VALUES
(9, 8, 'Press converence di ruang rapat kadin', '', '', 'press-converence-di-ruang-rapat-kadin', '', '', '', '', '2019-05-08 20:27:39', '0000-00-00 00:00:00', 6, 6, 'publish'),
(10, 8, 'Perbaikan jalan mayor Zen', '', '', 'perbaikan-jalan-mayor-zen', '', '', '', '', '2019-05-08 21:47:15', '0000-00-00 00:00:00', 6, 6, 'publish'),
(11, 12, 'Perbaikan jalan sp.priuk-tugu Mulyo - terawas (kab.mura)', '', '', 'perbaikan-jalan-sp-priuk-tugu-mulyo-terawas-kab-mura', '', '', '', '', '2019-05-08 21:47:05', '0000-00-00 00:00:00', 6, 0, 'publish'),
(13, 3, 'Perbaikan jalan gumawang-petanggan (kab.oku timur)', '', '', 'perbaikan-jalan-gumawang-petanggan-kab-oku-timur', '', '', '', '', '2019-05-08 22:43:57', '0000-00-00 00:00:00', 6, 0, 'publish'),
(14, 11, 'Perbaikan jalan sp.penyandingan-bts.okut (kab.oki)', '', '', 'perbaikan-jalan-sp-penyandingan-bts-okut-kab-oki', '', '', '', '', '2019-05-08 22:44:23', '0000-00-00 00:00:00', 6, 0, 'publish'),
(15, 7, 'Rapat Musyawarah Camat  / Kades dan Warga Lahan Jembatan Air Kelingi Linggau', '', '', 'rapat-musyawarah-camat-kades-dan-warga-lahan-jembatan-air-kelingi-linggau', '', '', '', '', '2019-05-08 22:47:21', '0000-00-00 00:00:00', 6, 0, 'publish'),
(16, 3, 'Perbaikan jalan BTS.oki - sp.kepuh (Oku timur)', '', '', 'perbaikan-jalan-bts-oki-sp-kepuh-oku-timur', '', '', '', '', '2019-05-08 22:47:42', '0000-00-00 00:00:00', 6, 0, 'publish'),
(17, 18, 'Rakorgub 2019 se sumatera', '', '', 'rakorgub-2019-se-sumatera', '', '', '', '', '2019-05-08 22:48:20', '0000-00-00 00:00:00', 6, 0, 'publish'),
(18, 10, 'Validasi Evaluasi Jabatan Perangkat Daerah Provinsi Sumatera Selatan', '', '', 'validasi-evaluasi-jabatan-perangkat-daerah-provinsi-sumatera-selatan', '', '', '', '', '2019-05-08 22:49:14', '0000-00-00 00:00:00', 6, 0, 'publish'),
(19, 18, 'Musrenbang RKPD Prov. Sumsel Tahun 2019', '', '', 'musrenbang-rkpd-prov-sumsel-tahun-2019', '', '', '', '', '2019-05-08 22:49:59', '0000-00-00 00:00:00', 6, 0, 'publish'),
(20, 15, 'Perbaikan ruas jalan oi - lubuk Batang (kab.oku)', '', '', 'perbaikan-ruas-jalan-oi-lubuk-batang-kab-oku', '', '', '', '', '2019-05-08 22:50:30', '0000-00-00 00:00:00', 6, 0, 'publish'),
(21, 18, 'Pembangunan Jembatan Musi 6', '', '', 'pembangunan-jembatan-musi-6', '', '', '', '', '2019-05-08 23:02:06', '0000-00-00 00:00:00', 6, 0, 'publish'),
(22, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:54:16', '0000-00-00 00:00:00', 6, 0, 'publish'),
(23, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:54:26', '0000-00-00 00:00:00', 6, 0, 'publish'),
(24, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:54:34', '0000-00-00 00:00:00', 6, 0, 'publish'),
(25, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:54:42', '0000-00-00 00:00:00', 6, 0, 'publish'),
(26, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:54:49', '0000-00-00 00:00:00', 6, 0, 'publish'),
(27, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:54:56', '0000-00-00 00:00:00', 6, 0, 'publish'),
(28, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:55:02', '0000-00-00 00:00:00', 6, 0, 'publish'),
(29, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:55:30', '0000-00-00 00:00:00', 6, 0, 'publish'),
(30, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:55:43', '0000-00-00 00:00:00', 6, 0, 'publish'),
(31, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:55:52', '0000-00-00 00:00:00', 6, 0, 'publish'),
(32, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:55:59', '0000-00-00 00:00:00', 6, 0, 'publish'),
(33, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:56:05', '0000-00-00 00:00:00', 6, 0, 'publish'),
(34, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:56:12', '0000-00-00 00:00:00', 6, 0, 'publish'),
(35, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:56:18', '0000-00-00 00:00:00', 6, 0, 'publish'),
(36, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:56:24', '0000-00-00 00:00:00', 6, 0, 'publish'),
(37, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:56:29', '0000-00-00 00:00:00', 6, 0, 'publish'),
(38, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:56:40', '0000-00-00 00:00:00', 6, 0, 'publish'),
(39, 18, '', '', '', '', '', '', '', '', '2019-05-15 00:56:55', '0000-00-00 00:00:00', 6, 0, 'publish'),
(40, 18, '', '', '', '', '', '', '', '', '2019-05-15 01:04:50', '0000-00-00 00:00:00', 6, 0, 'publish'),
(41, 18, '', '', '', '', '', '', '', '', '2019-05-15 01:04:58', '0000-00-00 00:00:00', 6, 0, 'publish'),
(42, 18, '', '', '', '', '', '', '', '', '2019-05-15 01:05:06', '0000-00-00 00:00:00', 6, 0, 'publish'),
(43, 18, '', '', '', '', '', '', '', '', '2019-05-15 01:05:12', '0000-00-00 00:00:00', 6, 0, 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `group_banner`
--

CREATE TABLE `group_banner` (
  `id_group` int(11) NOT NULL,
  `nama` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_banner`
--

INSERT INTO `group_banner` (`id_group`, `nama`, `tanggal`) VALUES
(1, 'Group 1', '2018-12-13 09:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `webprivacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `termcondition` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_deskripsi` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_banner` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_media` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `develope_mode` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `logo` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `width_thumb_artikel` int(10) UNSIGNED NOT NULL DEFAULT 300,
  `width_thumb_galeri` int(10) UNSIGNED NOT NULL DEFAULT 300,
  `width_thumb_produk` int(10) UNSIGNED NOT NULL DEFAULT 500,
  `prefix_suffix_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix_suffix_sebagai` enum('prefix','suffix','none') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'prefix',
  `default_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_populer_artikel` int(11) NOT NULL DEFAULT 10,
  `max_tampil_artikel` int(11) NOT NULL DEFAULT 10,
  `max_headline_artikel` int(11) NOT NULL DEFAULT 10,
  `max_headline_galeri` int(11) NOT NULL DEFAULT 10,
  `max_tampil_galeri` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `max_headline_produk` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `max_tampil_produk` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `sleep_mode` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `sleep_sampai` datetime NOT NULL,
  `max_tampil_agenda` int(11) NOT NULL DEFAULT 10,
  `max_tampil_download` int(11) NOT NULL DEFAULT 10,
  `max_tampil_agenda_umum` int(11) NOT NULL DEFAULT 3,
  `max_tampil_download_umum` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `nama`, `deskripsi`, `disclaimer`, `webprivacy`, `termcondition`, `meta_keyword`, `meta_deskripsi`, `default_banner`, `featured_image`, `thumbnail_media`, `favicon`, `develope_mode`, `logo`, `custom_css`, `width_thumb_artikel`, `width_thumb_galeri`, `width_thumb_produk`, `prefix_suffix_title`, `prefix_suffix_sebagai`, `default_title`, `max_populer_artikel`, `max_tampil_artikel`, `max_headline_artikel`, `max_headline_galeri`, `max_tampil_galeri`, `max_headline_produk`, `max_tampil_produk`, `sleep_mode`, `sleep_sampai`, `max_tampil_agenda`, `max_tampil_download`, `max_tampil_agenda_umum`, `max_tampil_download_umum`) VALUES
(1, 'Dinas Pekerjaaan Umum Muara Enim', '', '', '', '', 'PUPR MUARA ENIM', 'Dinas pekerjaan umum', '', 'http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/footpath-691021_1280.jpg', '', 'http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/close.png', 'N', '', '/*Masukan code CSS anda disini\nGunakan flag !important*/\n', 300, 300, 500, '| Sandro.id', 'suffix', '', 10, 10, 10, 10, 1, 10, 10, 'N', '2016-04-14 02:13:08', 10, 10, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `infrastruktur`
--

CREATE TABLE `infrastruktur` (
  `id_infrastruktur` varchar(5) NOT NULL,
  `no_ruas` varchar(100) NOT NULL,
  `nama_ruas` varchar(100) NOT NULL,
  `panjang_ruas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infrastruktur`
--

INSERT INTO `infrastruktur` (`id_infrastruktur`, `no_ruas`, `nama_ruas`, `panjang_ruas`) VALUES
('10576', '043.12.K', 'JLN. DIPONEGORO (PALEMBANG)	', '0.820'),
('10952', '075', 'TANJUNG RAYA - BTS. PROV. BENGKULU	', '32.410'),
('11917', '073', 'BTS. KAB. MUARA ENIM - SP. AIR DINGIN	', '35.910'),
('12977', '062', 'BATURAJA - SP. MARTAPURA	', '41.850'),
('14733', '090', 'JLN. PRABUMULIH - SP. MEO	', '81.000'),
('15999', '057', 'KURUNGAN NYAWA - MARTAPURA	', '21.100'),
('17494', '071', 'SP. AIR ITAM - SP. BELIMBING	', '36.800'),
('1938', '094', 'BTS. KOTA PALEMBANG - SUKAJADI (BANYUASIN)	', '5.437'),
('19488', '043.18.K', 'JLN. LINGKAR MASJID AGUNG / JLN CIK AGUS KEMAS (PALEMBANG)	', '0.355'),
('19546', '070', 'BTS. KAB. MUBA - SP. AIR ITAM	', '36.500'),
('21219', '069', 'SEKAYU - BTS. KAB. MUARA ENIM	', '39.850'),
('21866', '074', 'TEBING TINGGI - TANJUNG RAYA	', '40.200'),
('23517', '076', 'PAGARALAM - TANJUNG RAYA	', '47.900'),
('24571', '092', 'JLN. AKSES MENUJU TPI SUNGSANG (BANYUASIN)	', '8.000'),
('25360', '040', 'BTS. KOTA PALEMBANG - KAYU AGUNG	', '36.300'),
('26840', '064', 'SP. MARTAPURA - MUARA DUA	', '24.790'),
('27516', '068', 'SP. CAMPANG - UJAN MAS - BTS. PROV. BENGKULU	', '61.000'),
('28527', '059', 'GUMAWANG -PETANGGAN	', '14.650'),
('30902', '065', 'MUARA DUA - KOTA BATU - BTS. PROV. LAMPUNG	', '59.400'),
('31213', '063', 'MARTAPURA - SP. MARTAPURA	', '28.600'),
('36043', '040.12.K', 'JLN. NUH MACAN (KAYU AGUNG)	', '3.200'),
('36114', '046', 'SP. MERANJAT - BTS. KAB. MUARA ENIM	', '41.700'),
('37101', '050.11.K', 'JLN. SUTOMO (BATURAJA)	', '5.970'),
('37754', '044.14.K', 'JLN. PANGERAN AYIN - KENTEN LAUT (PALEMBANG)	', '4.100'),
('38225', '041.16.K', 'JLN. RADIAL (PALEMBANG)	', '1.100'),
('38518', '066', 'MUARA DUA - SP. HAJI	', '11.000'),
('3895', '067', 'SP. HAJI - SP. CAMPANG	', '35.039'),
('39014', '072', 'SP. SUGIHWARAS - BTS. KAB. LAHAT	', '51.500'),
('42008', '041.14.K', 'JLN. SRIJAYA NEGARA (PALEMBANG)	', '1.690'),
('42550', '061', 'DABUK REJO - BTS. KAB. OKUT	', '15.000'),
('43161', '041.12.K', 'JLN. ANGKATAN 45 (PALEMBANG)	', '2.000'),
('4370', '058', 'KURUNGAN NYAWA -GUMAWANG	', '28.500'),
('44333', '093', 'BTS. KOTA PALEMBANG - TALANG BULUH - SUKOMORO (BANYUASIN)	', '12.000'),
('45136', '043.20.K', 'JLN. PASAR INDUK - JLN. LINGKAR SELATAN (PALEMBANG)	', '2.000'),
('45620', '042.11.K', 'JLN. KOLONEL ATMO (PALEMBANG)	', '1.000'),
('47464', '084', 'BTS. KAB. MUARA ENIM - PAYARAMAN	', '10.000'),
('48009', '044.19.K', 'JLN. H. M. NOERDIN PANDJI (PALEMBANG)	', '5.246'),
('50158', '083', 'TERAWAS - TABATINGGI - MAUR	', '56.250'),
('50373', '088', 'JLN. KTM. RAMBUTAN - BTS. KAB. MUARA ENIM	', '15.880'),
('51969', '039.13.K', 'JLN. KAPT. ABDULLAH (PALEMBANG)	', '5.400'),
('52089', '091', 'JLN. SP. BELIMBING - PENDOPO (PALI)	', '35.000'),
('5310', '044.18.K', 'JLN. ADI SUCIPTO - BTS. KAB. BANYUASIN (PALEMBANG)	', '2.230'),
('56145', '044.17.K', 'JLN. MAYOR ZEN (PALEMBANG)	', '5.000'),
('58178', '052', 'SP. TAMBANG RAMBANG - BTS. KAB. OKU	', '22.000'),
('5906', '077', 'TALANG PADANG - PADANG TEPONG 	', '21.000'),
('60513', '062.11.K', 'JL. GATOT SUBROTO (BATURAJA)	', '6.900'),
('60670', '078', 'MUARA SIBAN - SP. EMABACANG	', '48.000'),
('61971', '087', 'JLN. SAUNG NAGA - TUGU BATU KUNING	', '6.000'),
('66439', '044.13.K', 'JLN. MP. MANGKUNEGARA (PALEMBANG)	', '2.580'),
('67707', '055', 'BTS. KAB. OKI - SP. KEPUH	', '49.150'),
('72046', '041.13.K', 'JLN. JAKSA AGUNG R. SUPRAPTO (PALEMBANG)	', '1.140'),
('72844', '086', 'JLN. KURUP - BATU KUNING (LUBUK BATANG)	', '11.000'),
('7306', '089', 'JLN. AKSES MENUJU KEBUN RAYA SRIWIJAYA - BTS. KAB OGAN ILIR	', '11.620'),
('73269', '060', 'PETANGGAN - TJ. KEMUNING - BTS. KAB. OKI	', '22.300'),
('73998', '041.11.K', 'JLN. KAPTEN A. RIVAI (PALEMBANG)	', '1.700'),
('76984', '041.17.K', 'JLN. SULTAN M. MANSYUR (PALEMBANG)	', '3.216'),
('78362', '043.14.K', 'JLN. LETKOL ISKANDAR (PALEMBANG)	', '1.230'),
('79229', '085', 'LEMBAK - BTS. KAB. OGAN ILIR	', '20.450'),
('79778', '053', 'BTS. KAB. OGAN ILIR - LUBUK BATANG	', '51.300'),
('81407', '039.12.K', 'JLN. DI PANJAITAN (PALEMBANG)	', '3.200'),
('84878', '040.11.K', 'JLN. MERDEKA (KAYU AGUNG)	', '0.400'),
('86919', '051', 'TANJUNG RAJA - SP. TAMBANG RAMBANG	', '55.550'),
('88775', '043.19.K', 'JLN. GANDUS - BTS. KAB. BANYUASIN (PALEMBANG)	', '8.000'),
('89876', '043.13.K', 'JLN. PSW SUBEKTI (PALEMBANG)	', '0.400'),
('90606', '043.11.K', 'JLN. MERDEKA (PALEMBANG)	', '1.400'),
('90930', '082', 'SP. PERIUK - TUGU MULYO - TERAWAS	', '38.000'),
('92288', '039', 'PLAJU - BTS. KAB. OKI	', '19.100'),
('96209', '056', 'SP. KEPUH - KURUNGAN NYAWA	', '41.450'),
('97074', '054', 'SP. PENYANDINGAN - BTS. KAB. OKUT	', '24.200'),
('97221', '044.15.K', 'JLN. TALANG KERAMAT (BANYUASIN)	', '5.600'),
('98274', '044.11.K', 'JLN. M. ISA (PALEMBANG)	', '2.180'),
('98911', '047', 'BTS. KAB OGAN ILIR - BERINGIN	', '29.600'),
('99724', '044.12.K', 'JLN. AKBP CEK AGUS (PALEMBANG)	', '1.310');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `jabatan_id` int(11) NOT NULL,
  `jabatan_kd` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `jabatan_nama` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jabatan_kelompok` int(11) NOT NULL,
  `jabatan_jenis` enum('kepala','bagian') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`jabatan_id`, `jabatan_kd`, `jabatan_nama`, `jabatan_kelompok`, `jabatan_jenis`) VALUES
(1, 'kepala_dinas', 'Plt. Kepala Dinas', 0, 'kepala'),
(2, 'sekretaris', 'Sekretaris', 1, 'kepala'),
(3, 'kasubag_udk', 'Plh. Ksb. Umum dan Kepegawaian', 1, 'bagian'),
(4, 'kasubag_ep', 'Ksb. Perencanaan, Evaluasi dan Pelaporan', 1, 'bagian'),
(5, 'kasubag_keu', 'Ksb. Keuangan', 1, 'bagian'),
(6, 'kbpjj', 'Kepala Bidang Pengembangan Jar. Jalan', 2, 'kepala'),
(7, 'kbjal', 'Kepala Bidang Jalan', 3, 'kepala'),
(8, 'kbjem', 'Kepala Bidang Jembatan', 4, 'kepala'),
(9, 'kbprdbmd', 'Kepala Bidang Pengujian, Peralatan dan BMD', 5, 'kepala'),
(10, 'pkbpr', 'Kepala Bidang  Penataan Ruang', 6, 'kepala'),
(11, 'kspt', 'Kepala Seksi Perencanaan Teknik', 2, 'bagian'),
(12, 'ksptdpjalw', 'Plh. Kepala Seksi Pembangunan dan Presevarsi Jalan Wilayah I', 3, 'bagian'),
(13, 'pkspdpjem', 'Plh. Kepala Seksi  Pembangunan dan Preservasi Jembatan Wilayah I', 4, 'bagian'),
(14, 'kspdp', 'Kepala Seksi Peralatan dan Perbekalan', 5, 'bagian'),
(15, 'ksptr', 'Kepala Seksi Perencanaan Tata Ruang', 6, 'bagian'),
(16, 'ksadddp', 'Kepala Seksi Analisa Data, Dokumen, dan Pengembangan Sistem', 2, 'bagian'),
(17, 'kspdpjalw', 'Plh. Kepala Seksi Pembangunan dan Preservasi Jalan Wilayah II', 3, 'bagian'),
(18, 'kspdpjemw', 'Kepala Seksi Pembangunan dan Preservasi Jembatan Wilayah II', 4, 'bagian'),
(19, 'kspjdj', 'Kepala Seksi Pengujian Jalan dan Jembatan', 5, 'bagian'),
(20, 'kspdpp', 'Kepala Seksi Pemanfaatan dan Pengendalian Pemanfaatan Tata Ruang', 6, 'bagian'),
(21, 'pksljpde', 'Plh. Kepala Seksi Leger Jalan, Pemantauan dan Evaluasi Teknis', 2, 'bagian'),
(22, 'pkspdej', 'Kepala Seksi Pengawasan dan Evaluasi Jalan', 3, 'bagian'),
(23, 'kspdej', 'Kepala Seksi Pengawasan dan Evaluasi Jembatan', 4, 'bagian'),
(24, 'kspdpbmd', 'Kepala Seksi Penatausahaan dan Pengamanan BMD', 5, 'bagian'),
(25, 'ksddi', 'Kepala Seksi Data dan Informasi', 6, 'bagian'),
(26, 'kupklah', 'Kepala UPTD PJ3 Kabupaten Lahat', 7, 'kepala'),
(27, 'kupkoku', 'Kepala UPTD PJ3 Kabupaten Ogan Komering Ulu', 8, 'kepala'),
(28, 'kpukmb', 'Kepala UPTD PJ3 Kabupaten Musi Banyuasin', 9, 'kepala'),
(29, 'pkupkp', 'Kepala UPTD Jalan dan Jembatan Kota Palembang', 10, 'kepala'),
(30, 'kupkoki', 'Kepala UPTD PJ3 Kabupaten Ogan Komering Ilir', 11, 'kepala'),
(31, 'kupkmr', 'Kepala UPTD PJ3 Kabupaten Musi Rawas', 12, 'kepala'),
(32, 'kupkme', 'Kepala UPTD PJ3 Kabupaten Muara Enim', 13, 'kepala'),
(33, 'pkujdjkot', 'Kepala UPTD Jalan dan Jembatan Kab. Oku Timur', 14, 'kepala'),
(34, 'pulbk', 'Plt. UPTD Labolatorium Bahan Kontruksi', 15, 'kepala'),
(35, 'pksbtu', 'Plh. Kepala Sub. Bagian Tata Usaha', 7, 'bagian'),
(36, 'kasubta', 'Kepala Sub. Bagian Tata Usaha', 8, 'bagian'),
(37, 'kasubtb', 'Kepala Sub. Bagian Tata Usaha', 9, 'bagian'),
(38, 'kasubtc', 'Kepala Sub. Bagian Tata Usaha', 10, 'bagian'),
(39, 'kasubtd', 'Kepala Sub. Bagian Tata Usaha', 11, 'bagian'),
(40, 'kasubte', 'Plh. Kepala Sub. Bagian Tata Usaha', 12, 'bagian'),
(41, 'kasubtf', 'Kepala Sub. Bagian Tata Usaha', 13, 'bagian'),
(42, 'kasubtg', 'Kepala Sub. Bagian Tata Usaha', 14, 'bagian'),
(43, 'kasubth', 'Plh. Kepala Sub. Bagian Tata Usaha', 15, 'bagian'),
(44, 'ksjdja', 'Kepala Seksi Jalan dan Jembatan', 7, 'bagian'),
(45, 'ksjdjb', 'Kepala Seksi Jalan dan Jembatan', 8, 'bagian'),
(46, 'ksjdjc', 'Kepala Seksi Jalan dan Jembatan', 9, 'bagian'),
(47, 'ksjdjd', 'Kepala Seksi Jalan dan Jembatan', 10, 'bagian'),
(48, 'ksjdje', 'Kepala Seksi Jalan dan Jembatan', 11, 'bagian'),
(49, 'ksjdjf', 'Kepala Seksi Jalan dan Jembatan', 12, 'bagian'),
(50, 'ksjdjg', 'Kepala Seksi Jalan dan Jembatan', 13, 'bagian'),
(51, 'ksjdjh', 'Kepala Seksi Jalan', 14, 'bagian'),
(52, 'ksjdji', 'Kepala Seksi Pengujian Material', 15, 'bagian'),
(53, 'kspdpa', 'Kepala Seksi Peralatan dan Perbekalan', 7, 'bagian'),
(54, 'kspdpb', 'Kepala Seksi Peralatan dan Perbekalan', 8, 'bagian'),
(55, 'kspdpc', 'Kepala Seksi Peralatan dan Perbekalan', 9, 'bagian'),
(56, 'kspdpd', 'Kepala Seksi Peralatan dan Perbekalan', 10, 'bagian'),
(57, 'kspdpe', 'Kepala Seksi Peralatan dan Perbekalan', 11, 'bagian'),
(58, 'kspdpf', 'Kepala Seksi Peralatan dan Perbekalan', 12, 'bagian'),
(59, 'kspdpg', 'Kepala Seksi Peralatan dan Perbekalan', 13, 'bagian'),
(60, 'pksj', 'Plh. Kepala Seksi Jembatan', 14, 'bagian'),
(61, 'kspm', 'Kepala Seksi Pengendalian Mutu', 15, 'bagian');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` bigint(20) NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_parent` bigint(20) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `slug_kategori`, `id_parent`, `aktif`, `terhapus`) VALUES
(6, 'Berita', 'berita', 0, 'Y', 'N'),
(7, 'pengumuman', 'pengumuman', 0, 'Y', 'N'),
(8, 'agenda', 'agenda', 0, 'Y', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id`, `nama_kategori`, `slug_kategori`, `aktif`, `terhapus`) VALUES
(3, 'UPTD Jalan dan Jembatan Kab. Oku Timur', 'uptd-jalan-dan-jembatan-kab-oku-timur', 'Y', 'N'),
(4, 'UPTD PJ3 Kabupaten Lahat', 'uptd-pj3-kabupaten-lahat', 'Y', 'N'),
(5, 'Bidang Penataan Ruang', 'bidang-penataan-ruang', 'Y', 'N'),
(6, 'Bidang Pengujian Peralatan dan BMD', 'bidang-pengujian-peralatan-dan-bmd', 'Y', 'N'),
(7, 'Bidang Jembatan', 'bidang-jembatan', 'Y', 'N'),
(8, 'Bidang Jalan', 'bidang-jalan', 'Y', 'N'),
(9, 'Bidang Pengembangan Jaringan Jalan', 'bidang-pengembangan-jaringan-jalan', 'Y', 'N'),
(10, 'Sekretariat', 'sekretariat', 'Y', 'N'),
(11, 'UPTD PJ3 Kabupaten Ogan Komering Ilir', 'uptd-pj3-kabupaten-ogan-komering-ilir', 'Y', 'N'),
(12, 'UPTD PJ3 Kabupaten Muara Enim', 'uptd-pj3-kabupaten-muara-enim', 'Y', 'N'),
(13, 'UPTD PJ3 Kota Palembang', 'uptd-pj3-kota-palembang', 'Y', 'N'),
(14, 'UPTD PJ3 Kabupaten Musi Banyuasin', 'uptd-pj3-kabupaten-musi-banyuasin', 'Y', 'N'),
(15, 'UPTD PJ3 Kabupaten Ogan Komering Ulu', 'uptd-pj3-kabupaten-ogan-komering-ulu', 'Y', 'N'),
(16, 'UPTD PJ3 Kabupaten Musi Rawas', 'uptd-pj3-kabupaten-musi-rawas', 'Y', 'N'),
(17, 'UPTD Laboratorium Bahan Kontruksi', 'uptd-laboratorium-bahan-kontruksi', 'Y', 'N'),
(18, 'All', 'all', 'Y', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_kategori` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_ktp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `komentar_nama` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `komentar_tel` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `komentar_pesan` text COLLATE utf8_unicode_ci NOT NULL,
  `komentar_tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`komentar_id`, `komentar_ktp`, `komentar_nama`, `komentar_tel`, `komentar_pesan`, `komentar_tanggal`) VALUES
(1, '2222', 'ads', '123123', 'asdasdasdasdasd', '2018-12-18 15:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `kontak_masuk`
--

CREATE TABLE `kontak_masuk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktp` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_code`, `menu_nama`, `menu_created`) VALUES
(1, 'horizontal', 'utama', '2016-04-14 02:12:24'),
(2, 'vertical', 'samping', '2016-04-14 02:12:24'),
(3, 'vertical2', 'tambahan 1', '2016-04-14 02:12:24'),
(4, 'vertical3', 'tambahan 2', '2016-04-14 02:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `menu_child`
--

CREATE TABLE `menu_child` (
  `menu_child_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `menu_child_parent` bigint(20) NOT NULL DEFAULT 0,
  `menu_child_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_target` enum('_self','_blank','_parent','_top') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `posisi` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_child`
--

INSERT INTO `menu_child` (`menu_child_id`, `menu_id`, `menu_child_parent`, `menu_child_code`, `menu_child_nama`, `menu_child_url`, `menu_child_target`, `aktif`, `posisi`) VALUES
(6, 1, 0, 'home', 'Beranda', 'http://dpubmtr.sumselprov.go.id/', '_self', 'Y', 1),
(9, 1, 0, 'syarat-ketentuan', 'Berita', 'http://dpubmtr.sumselprov.go.id/berita', '_self', 'Y', 23),
(12, 1, 0, 'about-us', 'Unit Dinas', 'http://dpubmtr.sumselprov.go.id/unit_kerja', '_self', 'Y', 7),
(14, 1, 0, 'about-us', 'Data Infrastruktur', 'http://dpubmtr.sumselprov.go.id/data-infrastruktur', '_self', 'Y', 24),
(15, 1, 0, 'home', 'Profil Instansi', '#', '_self', 'Y', 2),
(17, 1, 15, '', 'Visi Misi', 'http://dpubmtr.sumselprov.go.id/page/1-visi-dan-misi', '_self', 'Y', 3),
(18, 1, 15, '', 'Dasar Hukum', 'http://dpubmtr.sumselprov.go.id/page/6-dasar-hukum', '_self', 'Y', 4),
(19, 1, 15, '', 'Tugas dan Fungsi', 'http://dpubmtr.sumselprov.go.id/page/2-tugas-dan-fungsi', '_self', 'Y', 5),
(20, 1, 15, '', 'Struktur Organisasi', 'http://dpubmtr.sumselprov.go.id/struktur-organisasi', '_self', 'Y', 6),
(21, 1, 12, '', 'Bidang Pengembangan Jaringan Jalan', 'http://dpubmtr.sumselprov.go.id/bidang/2750-Bidang-Pengembangan-Jaringan', '_self', 'Y', 9),
(22, 1, 12, '', 'Bidang Jalan', 'http://dpubmtr.sumselprov.go.id/bidang/7822-Bidang', '_self', 'Y', 10),
(23, 1, 0, 'faq', 'Galeri', 'http://dpubmtr.sumselprov.go.id/galeri', '_self', 'Y', 25),
(24, 1, 0, 'faq', 'Kontak', 'http://dpubmtr.sumselprov.go.id/kontak', '_self', 'Y', 26),
(27, 1, 12, '', 'Bidang Jembatan', 'http://dpubmtr.sumselprov.go.id/bidang/7549-Bidang', '_self', 'Y', 11),
(28, 1, 12, '', 'Bidang Pengujian Peralatan dan BMD', 'http://dpubmtr.sumselprov.go.id/bidang/4454-Bidang-Pengujian-Peralatan-dan', '_self', 'Y', 12),
(29, 1, 12, '', 'Bidang Penataan Ruang', 'http://dpubmtr.sumselprov.go.id/bidang/3899-Bidang-Penataan', '_self', 'Y', 13),
(30, 1, 12, '', 'UPTD PJ3 Kabupaten Lahat', 'http://dpubmtr.sumselprov.go.id/bidang/3187-UPTD-PJ3-Kabupaten', '_self', 'Y', 14),
(31, 1, 12, '', 'Sekretariat', 'http://dpubmtr.sumselprov.go.id/bidang/2783-', '_self', 'Y', 8),
(33, 1, 12, '', 'UPTD Jalan dan Jembatan Kab. Oku Timur', 'http://dpubmtr.sumselprov.go.id/bidang/2941-UPTD-Jalan-dan-Jembatan-Kab-Oku', '_self', 'Y', 15),
(34, 1, 12, '', 'UPTD PJ3 Kabupaten Ogan Komering Ilir', 'http://dpubmtr.sumselprov.go.id/bidang/2586-UPTD-PJ3-Kabupaten-Ogan-Komering', '_self', 'Y', 16),
(35, 1, 12, '', 'UPTD PJ3 Kabupaten Muara Enim', 'http://dpubmtr.sumselprov.go.id/bidang/2094-UPTD-PJ3-Kabupaten-Muara', '_self', 'Y', 17),
(36, 1, 12, '', 'UPTD PJ3 Kota Palembang', 'http://dpubmtr.sumselprov.go.id/bidang/1796-UPTD-PJ3-Kota', '_self', 'Y', 18),
(37, 1, 12, '', 'UPTD PJ3 Kabupaten Musi Banyuasin', 'http://dpubmtr.sumselprov.go.id/bidang/1691-UPTD-PJ3-Kabupaten-Musi', '_self', 'Y', 19),
(38, 1, 12, '', 'UPTD PJ3 Kabupaten Ogan Komering Ulu', 'http://dpubmtr.sumselprov.go.id/bidang/194-UPTD-PJ3-Kabupaten-Ogan-Komering', '_self', 'Y', 20),
(39, 1, 12, '', 'UPTD PJ3 Kabupaten Musi Rawas', 'http://dpubmtr.sumselprov.go.id/bidang/6358-UPTD-PJ3-Kabupaten-Musi', '_self', 'Y', 21),
(40, 1, 12, '', 'UPTD Laboratorium Bahan Kontruksi', 'http://dpubmtr.sumselprov.go.id/bidang/5041-UPTD-Laboratorium-Bahan', '_self', 'Y', 22),
(41, 1, 0, '', 'Layanan Publik', 'http://localhost/pubmsumsel/pengujian', '_self', 'Y', 27),
(42, 1, 41, '', 'Labolatorium', '#', '_self', 'Y', 28),
(43, 1, 41, '', 'Alat Berat', '#', '_self', 'Y', 29);

-- --------------------------------------------------------

--
-- Table structure for table `news_ticker`
--

CREATE TABLE `news_ticker` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `berita` varchar(700) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_posting` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_ticker`
--

INSERT INTO `news_ticker` (`id`, `berita`, `link`, `tanggal_posting`) VALUES
(1, 'volutpat felis, quis tristique ligula luctus vel. Sed nec mi eros. Integer augue enim, sollicitudin', '#link', '2016-03-22 04:18:22'),
(2, 'Fusce sapien arcu, molestie eget varius egestas, faucibus ac urna. Sed at nisi in velit egestas aliquam ut a felis.', '#kedua', '2016-03-22 04:19:12'),
(3, 'Aliquam nulla augue, porta non sagittis quis, accumsan vitae sem', '#ketiga', '2016-03-22 04:19:28'),
(4, 'ivamus vel ipsum ac augue sodales mollis euismod nec tellus. Fusce et augue rutrum nunc semper vehicula vel semper nisl.', '#empat', '2016-03-22 04:19:56'),
(5, 'Curabitur malesuada fermentum lacus vel accumsan. Duis ornare scelerisque nulla, ac pulvinar ligula tempus sit amet ', '#test', '2016-03-22 04:20:12'),
(6, 'Vivamus luctus mi eget lorem lobortis pharetra. Phasellus at tortor quam, a volutpat purus.', '#hai', '2016-03-22 04:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` bigint(20) NOT NULL,
  `page_judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_url` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_javascript` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_status` enum('published','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `page_id_user` bigint(20) UNSIGNED NOT NULL,
  `page_id_edit` bigint(20) UNSIGNED NOT NULL,
  `page_created` datetime NOT NULL,
  `page_edited` datetime NOT NULL,
  `page_meta_keywords` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_meta_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_judul`, `page_url`, `page_isi`, `page_foto`, `page_javascript`, `page_status`, `page_id_user`, `page_id_edit`, `page_created`, `page_edited`, `page_meta_keywords`, `page_meta_description`) VALUES
(1, 'Visi dan Misi', 'visi-dan-misi', '<p style=\"text-align: center; padding-left: 30px;\"> </p>\n<div class=\"row\">\n<div class=\"\">\n<div class=\"col-md-2\" style=\"padding-left: 30px;\"><img src=\"http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/default.png\">\n<p style=\"text-align: left;\" align=\"justify\"><span style=\"color: #323233;\"><span style=\"font-family: \'Open sans\', sans-serif;\"><span style=\"font-size: small;\">H. Darma Budhi, S.H., S.T., M.T</span></span></span></p>\n<p class=\"western\" lang=\"x-none\" style=\"text-align: left;\"><span style=\"color: #323233;\"><span style=\"font-family: \'Open sans\', sans-serif;\"><span style=\"font-size: xx-small;\">Kepala Dinas PUBMTR Sumatera Selatan</span></span></span></p>\n<p style=\"text-align: center;\"> </p>\n</div>\n<div class=\"col-md-10\" style=\"text-align: justify;\">\n<p> </p>\n<p>     Dengan mempertimbangkan kemajuan yang telah dicapai pada periode 2013-2018; memperhatikan hasil analisis isu strategis; mengacu visi dan misi Gubernur dan Wakil Gubernur yang terpilih untuk masa bakti 2018-2023; mengikuti prioritas pembangunan RPJPD Provinsi Sumatera Selatan 2005-2025; memperhatikan prioritas pembangunan nasional; merujuk pada tujuan nasional yang tercantum dalam Pembukaan Undang-Undang Dasar 1945; serta memperhatikan tujuan pembangunan berkelanjutan, maka visi pembangunan Provinsi Sumatera Selatan Tahun 2018-2023 adalah:</p>\n<p> </p>\n<p><strong><em>”SUM</em></strong><strong><em>S</em></strong><strong><em>EL MAJU </em></strong><strong><em>UNTUK SEMUA”</em></strong></p>\n<p> </p>\n<p>Penjelasan visi pembangunan Sumatera Selatan tahun 2018-2023 sebagai berikut:</p>\n<p> </p>\n<p><strong><em>Sumsel maju untuk Semua</em></strong> adalah keadaan dimana terwujudnya pembangunan daerah yang berwawasan lingkungan atau pembangunan berkelanjutan dan pembangunan maritim yang merata dan berkeadilan, dimana hasil-hasil pembangunannya dinikmati seluruh anggota masyarakat.</p>\n<p> </p>\n<p><strong><em>Sumsel Maju untuk Semua</em></strong> adalah kondisi dimana meningkatnya kualitas sumber daya manusia yang menjunjung tinggi nilai-nilai keimanan, ketaqwaan, kejujuran, integritas, dan kearifan lokal, di samping terpenuhinya hak-hak dasar masyarakat dengan dukungan anggaran pro-rakyat, pro-lingkungan, dan pro-gender yang transparan dan akuntabel.</p>\n<p> </p>\n<p><strong><em>Sumsel Maju untuk Semua</em></strong> adalah kondisi tercapainya pelayanan publik yang baik dengan dukungan pemerintahan daerah yang bersih dan bebas dari korupsi, kolusi dan nepotisme (KKN), serta meningkatnya partisipasi masyarakat dalam proses penentuan kebijakan pembangunan yang menyangkut hajat hidup orang banyak.</p>\n<p> </p>\n<p><strong><em>Sumsel Maju untuk Semua</em></strong> adalah terwujudnya rasa aman dan nyaman bagi kehidupan masyarakat sehingga anggota masyarakat dapat menjalankan aktivitas keagamaan, terciptanya kehidupan masyarakat yang menghargaai perbedaan, dan masyarakat dapat menikmati kesenian yang bermutu di pusat-pusat kebudayaan.</p>\n<p> </p>\n<p>Berdasarkan visi pembangunan yang telah ditetapkan, misi pembangunan Provinsi Sumatera Selatan Tahun 2018-2023 adalah sebagai berikut:</p>\n<p> <img src=\"http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/visimisi.png\" alt=\"\"></p>\n<p> </p>\n<p>Sasaran :</p>\n<ol>\n<li>Maju Kualitas Lingkungan Hidup (Meningkatnya kualitas lingkungan Hidup);</li>\n<li>Maju Infrastruktur dan Konektivitas (Meningkatnya akses pelayanan infrastruktur dasar dan konektivitas).</li>\n</ol>\n<p> </p>\n<p>Untuk mewujudkan Misi 4, diuraikan dalam program kerja berikut :</p>\n<ol>\n<li>Menciptakan pembangunan Sumatera Selatan yang selaras dengan kondisi kewilayahan yang memiliki infrastruktur yang memadai dan di dukung tersedianya insfrastruktur yang dapat meningkatkan konektivitas antar wilayah.</li>\n<li>Memfasilitasi proses eksploitasi, pengolahan, dan distribusi kegiatan pertambangan yang senantiasa berada dalam koridor partisipasi dan kesejahteraan masyarakat lokal.</li>\n<li>Pembangunan industri keenergian kreatif yang berbasiskan batubara di tingkat masyarakat lokal.</li>\n<li>Mengundangkan Peraturan daerah yang menekankan keterlibatan dan partisipasi masyarakat dan pemerintah daerah setempat.  </li>\n<li>Peningkatan kualitas pengetahuan dan keterampilan masyarakat daerah agar mampu terlibat dalam kegiatan pertambangan dan energi.</li>\n<li>Membangun pengembangan sektor sektor energi alternatif (air, udara, biofuel, biomass) berbasiskan pada potensi di daerah Sumatera Selatan.  </li>\n<li>Pengembangan sistem teknologi baru dalam efektifitas sistem tranportasi batubara.  </li>\n<li>Revitalisasi sistem irigasi yang mendukung sistem pertanian masyarakat.  </li>\n<li>Menjamin kemudahan masyarakat untuk mengakses air bersih.  </li>\n<li>Mempercepat pembangunan insfrastruktur yang mendukung industri pertambangan batubara.</li>\n</ol>\n<p> </p>\n</div>\n</div>\n</div>', '', '', 'published', 1, 6, '2019-06-25 01:05:51', '0000-00-00 00:00:00', '', ''),
(2, 'Tugas dan Fungsi', 'tugas-dan-fungsi', '<div class=\"content\">\n<p align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: large;\"><strong>Kedudukan, Tugas, Fungsi dan Struktur Organisasi</strong></span></span></p>\n<p lang=\"x-none\" align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan merupakan dinas teknis dari Pemerintah Provinsi Sumatera Selatan yang dibentuk melalui Peraturan Daerah<span lang=\"en-US\"> No. 14 Tahun 2016 tentang Pembentukan dan Susunan Perangkat Daerah Provinsi Sumatera Selatan dan Peraturan Gubernur No.</span> <span lang=\"en-ID\">46</span> Tahun 20<span lang=\"en-ID\">16</span> <span lang=\"en-US\">tentang </span><span lang=\"en-ID\">Susunan Organisasi, Uraian Tugas dan Fungsi Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan. Perangkat </span>Daerah Provinisi Sumatera Selatan yang berada dan bertanggung jawab langsung kepada Gubernur Provinsi Sumatera Selatan.</span></span></p>\n<p lang=\"x-none\" align=\"justify\"> </p>\n<p lang=\"x-none\" align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><strong>a. Tugas Pokok</strong></span></span></p>\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Berdasarkan Peraturan <span lang=\"en-ID\">Gubernur</span> No. <span lang=\"en-ID\">46</span> Tahun 2016 <span lang=\"en-US\">tentang </span><span lang=\"en-ID\">Susunan Organisasi, Uraian Tugas dan Fungsi Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan dan Peraturan Gubernur No. 22 Tahun 2018 tentang</span></span></span></p>\n<p class=\"western\" lang=\"x-none\"> </p>\n<p align=\"left\"><span style=\"color: #000000;\">“<span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><em><strong>Melaksanakan kewenangan desentralisasi dan tugas dekonsentrasi di bidang pekerjaan </strong></em><span lang=\"en-ID\"><em><strong>u</strong></em></span><em><strong>mum bina </strong></em><span lang=\"en-ID\"><em><strong>m</strong></em></span><em><strong>arga dan tata ruang”.</strong></em></span></span></span></p>\n<p align=\"left\"> </p>\n<p class=\"western\" align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><strong>b. Fungsi</strong></span></span></p>\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Dalam menjalankan tugas pokok tersebut, Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan menyelenggarakan fungsi :</span></span></p>\n<ol style=\"list-style-type: lower-alpha;\">\n<li class=\"western\">\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><span lang=\"en-ID\">Penyusunan dan perumusan kebijaksanaan teknis pembangunan dan pengelolaan, pembinaan umum, pemberian bimbingan serta perizinan di bidang kebinamargaan dan penataan ruang sesuai dengan kebijakan yang ditetapkan oleh gubernur</span></span></span></p>\n</li>\n<li class=\"western\">\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Pengawasan dan pengendalian teknis dibidang <span lang=\"en-ID\">b</span>ina <span lang=\"en-ID\">m</span>arga<span lang=\"en-ID\"> dan tata ruang </span>sesuai dengan kebijaksanaan yang ditetapkan oleh gubernur</span></span></p>\n</li>\n<li class=\"western\">\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Pembinaan dan bimbingan terhadap dinas lingkup prasarana wilayah kabupaten/kota yang bersifat teknis <span lang=\"en-ID\">di bidang bina marga dan tata ruang</span></span></span></p>\n</li>\n<li class=\"western\">\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><span lang=\"en-ID\">Pengkoordinasian penatausahaan, pemanfaatan dan pengamanan barang milik negara/daerah</span></span></span></p>\n</li>\n<li class=\"western\">\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><span lang=\"en-ID\">Pembinaan administrasi dan Unit Pelaksana Teknis Dinas lingkup Dinas Pekerjaan Umum Bina Marga dan Tata Ruang</span></span></span></p>\n</li>\n<li class=\"western\">\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Pelaksanaan tugas <span lang=\"en-ID\">kedinasan lainnya</span> yang diberikan oleh <span lang=\"en-ID\">pimpinan.</span></span></span></p>\n</li>\n</ol>\n<p lang=\"x-none\" align=\"justify\"> </p>\n</div>', '', '', 'published', 1, 6, '2019-05-07 02:46:28', '0000-00-00 00:00:00', '', ''),
(3, 'Dinas PU', 'dinas-pu', '<div>\n<h2>Mengapa kita menggunakannya?</h2>\n<p>Sudah merupakan fakta bahwa seorang pembaca akan terpengaruh oleh isi tulisan dari sebuah halaman saat ia melihat tata letaknya. Maksud penggunaan Lorem Ipsum adalah karena ia kurang lebih memiliki penyebaran huruf yang normal, ketimbang menggunakan kalimat seperti \"Bagian isi disini, bagian isi disini\", sehingga ia seolah menjadi naskah Inggris yang bisa dibaca. Banyak paket Desktop Publishing dan editor situs web yang kini menggunakan Lorem Ipsum sebagai contoh teks. Karenanya pencarian terhadap kalimat \"Lorem Ipsum\" akan berujung pada banyak situs web yang masih dalam tahap pengembangan. Berbagai versi juga telah berubah dari tahun ke tahun, kadang karena tidak sengaja, kadang karena disengaja (misalnya karena dimasukkan unsur humor atau semacamnya)</p>\n</div>\n<p> </p>\n<div>\n<h2>Dari mana asalnya?</h2>\n<p>Tidak seperti anggapan banyak orang, Lorem Ipsum bukanlah teks-teks yang diacak. Ia berakar dari sebuah naskah sastra latin klasik dari era 45 sebelum masehi, hingga bisa dipastikan usianya telah mencapai lebih dari 2000 tahun. Richard McClintock, seorang professor Bahasa Latin dari Hampden-Sidney College di Virginia, mencoba mencari makna salah satu kata latin yang dianggap paling tidak jelas, yakni consectetur, yang diambil dari salah satu bagian Lorem Ipsum. Setelah ia mencari maknanya di di literatur klasik, ia mendapatkan sebuah sumber yang tidak bisa diragukan. Lorem Ipsum berasal dari bagian 1.10.32 dan 1.10.33 dari naskah \"de Finibus Bonorum et Malorum\" (Sisi Ekstrim dari Kebaikan dan Kejahatan) karya Cicero, yang ditulis pada tahun 45 sebelum masehi. BUku ini adalah risalah dari teori etika yang sangat terkenal pada masa Renaissance. Baris pertama dari Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", berasal dari sebuah baris di bagian 1.10.32.</p>\n<p>Bagian standar dari teks Lorem Ipsum yang digunakan sejak tahun 1500an kini di reproduksi kembali di bawah ini untuk mereka yang tertarik. Bagian 1.10.32 dan 1.10.33 dari \"de Finibus Bonorum et Malorum\" karya Cicero juga di reproduksi persis seperti bentuk aslinya, diikuti oleh versi bahasa Inggris yang berasal dari terjemahan tahun 1914 oleh H. Rackham.</p>\n</div>\n<div>\n<h2>Dari mana saya bisa mendapatkannya?</h2>\n<p>Ada banyak variasi tulisan Lorem Ipsum yang tersedia, tapi kebanyakan sudah mengalami perubahan bentuk, entah karena unsur humor atau kalimat yang diacak hingga nampak sangat tidak masuk akal. Jika anda ingin menggunakan tulisan Lorem Ipsum, anda harus yakin tidak ada bagian yang memalukan yang tersembunyi di tengah naskah tersebut. Semua generator Lorem Ipsum di internet cenderung untuk mengulang bagian-bagian tertentu. Karena itu inilah generator pertama yang sebenarnya di internet. Ia menggunakan kamus perbendaharaan yang terdiri dari 200 kata Latin, yang digabung dengan banyak contoh struktur kalimat untuk menghasilkan Lorem Ipsun yang nampak masuk akal. Karena itu Lorem Ipsun yang dihasilkan akan selalu bebas dari pengulangan, unsur humor yang sengaja dimasukkan, kata yang tidak sesuai dengan karakteristiknya dan lain sebagainya.</p>\n</div>', 'http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/graph.jpg', '', 'published', 1, 0, '2018-11-26 12:25:41', '0000-00-00 00:00:00', '', ''),
(4, 'page page', 'page-page', '<p>suwara suapja</p>', 'http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/sparkler-677774_1280.jpg', '', 'published', 1, 0, '2018-11-28 09:42:53', '0000-00-00 00:00:00', 'meta ', 'meta'),
(5, 'regerg', 'regerg', '<p>regergre</p>', '', '', 'published', 5, 0, '2018-12-05 13:26:23', '0000-00-00 00:00:00', 'rger', 'greger'),
(6, 'Dasar Hukum', 'dasar-hukum', '<p style=\"text-align: center; font-size: 16px;\"><strong>PERATURAN DAERAH PROVINSI SUMATERA SELATAN</strong></p>\n<p style=\"text-align: center; font-size: 16px;\"><strong>NOMOR 14 TAHUN 2016</strong></p>\n<p style=\"text-align: center; font-size: 16px;\"><strong>TENTANG</strong></p>\n<p style=\"text-align: center; font-size: 16px;\"><strong>PEMBENTUKAN DAN SUSUNAN PERANGKAT DAERAH<br></strong><strong>PROVINSI SUMATERA SELATAN</strong></p>\n<p style=\"text-align: center; font-size: 16px;\"> </p>\n<p style=\"text-align: center; font-size: 14px;\"><strong>BAB I </strong></p>\n<p style=\"text-align: center; font-size: 14px;\"><strong>KETENTUAN UMUM</strong></p>\n<p style=\"text-align: center; font-size: 14px;\"><strong>Pasal 2</strong></p>\n<p style=\"text-align: center; font-size: 12px;\"> </p>\n<p style=\"font-size: 16px; text-align: left;\">Pembentukan Perangkat Daerah Provinsi dilakukan berdasarkan asas :</p>\n<ol>\n<li>urusan pemerintahan yang menjadi kewenangan daerah;</li>\n<li>intensitas urusan pemerintahan dan potensi daerah;</li>\n<li>efisiensi;</li>\n<li>efektifitas;</li>\n<li>pembagian habis tugas;</li>\n<li>rentang kendali;</li>\n<li>tata kerja yang jelas; dan</li>\n<li>fleksibilitas.</li>\n</ol>\n<p> </p>\n<p style=\"text-align: center; font-size: 14px;\"><strong>BAB II</strong></p>\n<p style=\"text-align: center; font-size: 14px;\"><strong>PEMBENTUKAN DAN SUSUNAN</strong></p>\n<p style=\"text-align: center; font-size: 14px;\"><strong>PERANGKAT DAERAH</strong></p>\n<p style=\"text-align: center; font-size: 14px;\"><strong>Pasal 3</strong></p>\n<p style=\"text-align: center; font-size: 14px;\"> </p>\n<p style=\"text-align: left; font-size: 16px;\"> (2) Perangkat Daerah Provinsi sebagaimana dimaksud pada  ayat (I) dengan susunan sebagai berikut:</p>\n<ol style=\"list-style-type: lower-alpha;\">\n<li>Sekretariat Daerah Provinsi merupakan Sekretariat Daerah Tipe A;</li>\n<li>Sekretariat DPRD Provinsi merupakan Sekretariat DPRD Tipe A;</li>\n<li>Inspektorat Daerah Provinsi merupakan Inspektorat Tipe A;</li>\n<li>Dinas Daerah Provinsi terdiri dari:\n<ol>\n<li>Dinas Pendidikan Tipe A menyelenggarakan urusan pemerintahan bidang pendidikan;</li>\n<li>Dinas Kesehatan Tipe A menyelenggarakan urusan pemerintahan bidang kesehatan, dan bidang pengendalian penduduk dan keluarga berencana;</li>\n<li>Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Tipe A menyelenggarakan urusan pemerintahan bidang pekerjaan umum dan penataan ruang sub urusan jalan dan jembatan serta penataan ruang;</li>\n</ol>\n</li>\n</ol>\n<p> </p>\n<p> </p>\n<p style=\"text-align: center; font-size: 16px;\"><strong>PERATURAN GUBERNUR SUMATERA SELATAN</strong></p>\n<p style=\"text-align: center; font-size: 16px;\"><strong>NOMOR 46 TAHUN 2016</strong></p>\n<p style=\"text-align: center; font-size: 16px;\"><strong>TENTANG</strong></p>\n<p style=\"text-align: center; font-size: 16px;\"><strong>SUSUNAN ORGANISASI, URAIAN TUGAS DAN FUNGSI<br></strong><strong>DINAS PEKERJAAN UMUM BINA MARGA DAN TATA RUANG</strong><strong><br></strong><strong>PROVINSI SUMATERA SELATAN</strong></p>\n<p style=\"text-align: center; font-size: 14px;\"> </p>\n<p style=\"text-align: center; font-size: 14px;\"><strong>BAB II</strong></p>\n<p style=\"text-align: center; font-size: 14px;\"><strong>KEDUDUKAN</strong></p>\n<p style=\"text-align: center; font-size: 14px;\"><strong>Pasal 2</strong></p>\n<p style=\"text-align: center;\"><strong> </strong></p>\n<p style=\"font-size: 16px;\">(1) Dinas Pekerjaan Umum Bina Marga dan Tata Ruang merupakan unsur pelaksana urusan pemerintahan yang menjadi kewenangan pemerintah Provinsi di bidang pekerjaan umum dan tata ruang sub urusan jalan dan jembatan serta penataan ruang.</p>\n<p style=\"font-size: 16px;\">(2) Dinas Pekerjaan Umum Bina Marga dan Tata Ruang dipimpin oleh seorang Kepala Dinas yang berada dibawah dan bertanggung jawab terhadap Gubernur melalui Sekretaris Daerah.</p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p><strong>Lampiran :</strong></p>\n<p><strong><a title=\"PERGUB 14 TA. 2016\" href=\"http://dinaspu.pkitweb.com/uploads/produkhukum/PERGUB_14_TA__2016.docx\" target=\"_blank\">PERGUB 14 TA. 2016</a></strong></p>\n<p><strong><a title=\"PERGUB 46 TA. 2016\" href=\"http://dinaspu.pkitweb.com/uploads/produkhukum/PERGUB_46_TA__2016.docx\" target=\"_blank\">PERGUB 46 TA. 2016</a></strong></p>', '', '', 'published', 5, 6, '2019-05-24 00:50:22', '0000-00-00 00:00:00', '', ''),
(7, 'Struktur Organisasi', 'struktur-organisasi', '<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: left;\"> </p>', 'http://dpubmtr.sumselprov.pkitapp.com/an-component/media/upload-gambar-pendukung/graph.jpg', '', 'published', 5, 5, '2018-12-14 11:50:24', '0000-00-00 00:00:00', '', ''),
(8, 'Kontak', 'kontak', '<p style=\"text-align: center;\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d995.4256638888642!2d103.77722515982957!3d-3.6550789666388654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e39f6357ba7c49b%3A0x56c40cc246bc9212!2sDinas+Bina+Marga!5e0!3m2!1sid!2sid!4v1544771457196\" width=\"700\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\n<p style=\"text-align: center;\"> </p>\n<h5 style=\"text-align: center;\"> </h5>\n<p style=\"padding-left: 30px;\"><strong>Dinas Pekerjaan Umum &amp; Penataan Ruangan Kab. Muara Enim</strong></p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\">Jl. Mayor Tjik Agus Kiemas(Islamic Center),</p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\">Kec. Muara Enim, Kab. Muara Enim,</p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\">Sumatera Selatan - 31311</p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\">Telp: (0734) 421099</p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\"> </p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\"> </p>\n<form action=\"nextpage\" method=\"post\">\n<div class=\"col-md-6\">\n<div class=\"form-group\"><label>No. KTP</label> <input id=\"judul-pesan\" class=\"form-control\" readonly=\"readonly\" type=\"text\" value=\"&lt;?php echo $pesan[\'ktp\'] ?&gt;\"></div>\n</div>\n<div class=\"col-md-6\">\n<div class=\"form-group\"><label>Nama</label> <input id=\"judul-pesan\" class=\"form-control\" readonly=\"readonly\" type=\"text\" value=\"&lt;?php echo $pesan[\'nama\'] ?&gt;\"></div>\n</div>\n<div class=\"col-md-6\">\n<div class=\"form-group\"><label>Tanggal</label> <input id=\"judul-pesan\" class=\"form-control\" readonly=\"readonly\" type=\"text\" value=\"&lt;?php echo date(\'d-m-Y\',strtotime($pesan[\'tanggal\'])) ?&gt;\"></div>\n</div>\n<div class=\"col-md-6\">\n<div class=\"form-group\"><label>Telepon</label> <input id=\"judul-pesan\" class=\"form-control\" readonly=\"readonly\" type=\"text\" value=\"&lt;?php echo $pesan[\'phone\'] ?&gt;\"></div>\n</div>\n<div class=\"col-md-12\">\n<div class=\"form-group\"><label>Pesan</label> <textarea class=\"form-control\" readonly=\"readonly\">&lt;?php echo $pesan[\'pesan\'] ?&gt;</textarea></div>\n</div>\n<div class=\"col-md-12\"><input class=\"form-control\" type=\"submit\" value=\"Submit\"></div>\n</form>', '', '', 'published', 5, 5, '2018-12-24 11:35:20', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `page_like`
--

CREATE TABLE `page_like` (
  `pl_id` int(11) NOT NULL,
  `pl_ip` varchar(50) NOT NULL,
  `pl_like` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_like`
--

INSERT INTO `page_like` (`pl_id`, `pl_ip`, `pl_like`) VALUES
(25, '::1', 'yes'),
(26, '103.239.165.58', 'yes'),
(27, '103.129.105.30', 'yes'),
(28, '36.77.95.73', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `pencarian_artikel`
--

CREATE TABLE `pencarian_artikel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clean_keyword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pencarian_artikel`
--

INSERT INTO `pencarian_artikel` (`id`, `keyword`, `clean_keyword`, `tanggal`, `ip`) VALUES
(1, 'tes', 'tes', '2018-12-13 11:10:25', '158.140.173.22'),
(2, 'tes', 'tes', '2018-12-13 11:11:05', '158.140.165.36');

-- --------------------------------------------------------

--
-- Table structure for table `pihak_ketiga`
--

CREATE TABLE `pihak_ketiga` (
  `id` int(11) NOT NULL,
  `recaptcha_key` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recaptcha_secret_key` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script_google_analytics` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disqus_unique_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pihak_ketiga`
--

INSERT INTO `pihak_ketiga` (`id`, `recaptcha_key`, `recaptcha_secret_key`, `script_google_analytics`, `disqus_unique_name`) VALUES
(1, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `produk_hukum`
--

CREATE TABLE `produk_hukum` (
  `id_produk_hukum` varchar(5) NOT NULL,
  `nama_file` varchar(50) NOT NULL,
  `file` text NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `keterangan` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_hukum`
--

INSERT INTO `produk_hukum` (`id_produk_hukum`, `nama_file`, `file`, `tahun`, `keterangan`, `date`) VALUES
('99776', 'PERATURAN GUBERNUR SUMATERA SELATAN NOMOR 46', 'uploads/produkhukum/PERBUP_SUSUNAN_ORGANISASI,_TRUKTUR_DAN_FUNG_DINAS_DAN_BADAN_DAERAH_2016_FINAL.docx', '2016', 'SUSUNAN ORGANISASI, URAIAN, TUGAS DAN FUNGSI DINAS PEKERJAAN UMUM BINA MARGA DAN TATA RUANG PROVINSI SUMATERA SELATA', '2019-05-08'),
('10302', 'PERATURAN GUBERNUR SUMATERA SELATAN NOMOR 14', '', '2016', 'PEMBENTUKAN DAN SUSUNAN PERANGKAT DAERAH SUMATERA SELATAN', '2019-05-08'),
('67836', 'PERGUB 14 TA  2016', '', '2016', 'PERGUB 14 TA  2016', '2019-05-23'),
('58464', 'PERGUB 46 TA 2016', '', '2016', 'PERGUB 46 TA 2016', '2019-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `reply_id` int(11) NOT NULL,
  `kontak_id` int(11) NOT NULL,
  `reply_isi` text COLLATE utf8_unicode_ci NOT NULL,
  `reply_tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`reply_id`, `kontak_id`, `reply_isi`, `reply_tanggal`) VALUES
(1, 1, 'Terimakasih', '2019-06-23 18:40:29'),
(2, 2, 'Segera', '2019-06-23 18:40:55'),
(3, 3, 'Segera', '2019-06-23 18:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_email`
--

CREATE TABLE `smtp_email` (
  `id` int(11) NOT NULL,
  `host` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` bigint(20) NOT NULL DEFAULT 25,
  `ssl_connection` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_email`
--

INSERT INTO `smtp_email` (`id`, `host`, `user`, `password`, `nama`, `port`, `ssl_connection`) VALUES
(1, '', '', '', '', 26, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `struktur_organisasi`
--

CREATE TABLE `struktur_organisasi` (
  `so_id` int(11) NOT NULL,
  `jabatan_id` int(11) DEFAULT NULL,
  `so_nip` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_nama` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_foto` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'strukturfoto.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `struktur_organisasi`
--

INSERT INTO `struktur_organisasi` (`so_id`, `jabatan_id`, `so_nip`, `so_nama`, `so_foto`) VALUES
(39, 1, '196201101988111001', 'H. Darma Budhy, SH, ST, MT', 'grafik_garis_12.PNG'),
(40, 2, '197712041997032004', 'Dr. HJ. MEGAWATY, ST, MT', 'WhatsApp_Image_2020-02-11_at_10_01_04.jpg'),
(41, 3, '196205151983031017', 'Winarno, S.AP., M.Si', 'WhatsApp_Image_2020-02-11_at_10_01_04_(1).jpeg'),
(42, 4, '197907132002122004', 'Rina Anggraini, ST', 'WhatsApp_Image_2020-02-11_at_10_06_50.jpeg'),
(43, 5, '196201031988031004', 'H. Husnan, SE, MM', 'Husnan .png'),
(44, 6, '196612151995031003', 'Ir. Ridwan, M.M', 'Kabid Jaringan Jalan.png'),
(45, 7, '196207281988111002', 'Ir. Muchtar. MA', 'WhatsApp_Image_2019-10-25_at_14_45_291.jpeg'),
(46, 8, '1970212301992031002', 'Muhammad Affandi, ST, Msc', 'Kabid Jembatan.png'),
(47, 9, '196412241999031003', 'Ir. Indra Muliawan, M.Si', 'INDRA_MULIAWAN1.jpg'),
(48, 10, '197511251999031004', 'H. Novian Aswardani, ST., MM', 'WhatsApp_Image_2019-10-25_at_14_45_29_(1)1.jpeg'),
(49, 11, '196706121990031002', 'Dru Wismawan, SE, MT', 'DRU Wismawan.png'),
(50, 12, '197604162006041005', 'Achmad Abraham S.Armo.,ST.,MT', 'WhatsApp_Image_2020-02-11_at_10_35_55.jpeg'),
(51, 17, '1973012219980031005', 'Dedi Hendra, S.T.', 'Dedi Hendra.png'),
(52, 14, '198005232002121002', 'Ricky Meiza, ST, MM', 'Riki.png'),
(53, 15, '197401081995101001', 'Faustino Do Carmo, ST', 'Penataan Ruang.png'),
(54, 16, '198202232005022001', 'Ida Febriani ST, MT', 'Ida Febrianti.png'),
(55, 18, '198301272008011002', 'Popo Hartopo ST.', '27_Popo_Hartopo,_ST.jpg'),
(56, 13, '196302071987031004', 'Ir. Aria Darmawan, M.M', 'WhatsApp_Image_2020-02-11_at_14_54_381.jpeg'),
(57, 19, '196407111990032003', 'Ir. Nyayu Yulita', 'UPTD Laboratorium Bahan Konstruksi.png'),
(58, 20, '197609172011011002', 'Andri Wahyudi, ST', 'Andri Wahyudi.png'),
(59, 21, '198204292011011005', 'MA. Rizky Irfian, S.T.', 'Rizki irvian.png'),
(60, 22, '197903172006041008', 'Adrifan,ST', 'WhatsApp_Image_2020-02-11_at_10_32_51.jpeg'),
(61, 23, '197505252008011006', 'Rizal Hermansyah, ST, MT', 'Rizal Firmasyah.png'),
(62, 24, '198409182010011014', 'Anton Satria, SH', 'Anton.png'),
(63, 25, '196608081998031004', 'Ir. Agustiono, MM', 'Agustino.png'),
(64, 26, '197109281993031001', 'Hendry Wijaya, ST, MM', 'Hendry Wijaya.png'),
(65, 27, '196505031990031008', 'Indra Asmi Muharam, ST', 'UPTD Ogan Komering Ulu dan UPTD Jalan Jembatan OKU.png'),
(66, 28, '196309101990031006', 'Ir. Tarmisi, MM, M.SI', 'WhatsApp_Image_2020-02-11_at_11_24_38.jpeg'),
(67, 29, '196309151990031007', 'Ir. Arlan, M.T.', 'UPTD Kota Palembang.png'),
(68, 30, '196405201991032007', 'Ir. Hj. Mejiarti, MT', 'WhatsApp_Image_2020-02-11_at_10_01_05.jpeg'),
(69, 31, '196506251997031002', 'Ir. Mujianto, M.Si', 'UPTD Musi Rawas.png'),
(70, 32, '196305171991031004', 'Nurudin Hanafia, ST, MT', 'UPTD Muara Enim.png'),
(71, 33, '197105101998031008', 'Ibnu Holdun, ST.,MM.', 'WhatsApp_Image_2020-02-11_at_12_37_181.jpeg'),
(72, 34, '196407111990032003', 'Ir. Nyayu Yulita', 'UPTD Laboratorium Bahan Konstruksi.png'),
(73, 35, '197904282007011014', 'Aredho Hadianata Imron, S.T.', 'Aredho Hadinata.png'),
(74, 36, '1976112009011010', 'Mahmud, ST', 'Mahmud.png'),
(75, 37, '196211111986091001', 'Eddy Sabani, ST, MM', 'WhatsApp_Image_2020-02-11_at_11_37_541.jpeg'),
(76, 38, '19810022009021007', 'Tedi Suryadharma Putra, ST', 'Tedy Suryadharma Putra.png'),
(77, 39, '-', '-', 'man.png'),
(78, 40, '1970090031998031004', 'Firgani Arief, S.T., M.T.', 'Firgani Arief.png'),
(79, 41, '196801011992031011', 'Hermalan, ST', 'Hermalan.png'),
(80, 42, '196912231996031003', 'Zulkarnain, S.T.', 'Zulkarnain.png'),
(81, 43, '197111101997032004', 'Poppy Savutri, S.T., M.Si', 'Poppy Savitri.png'),
(82, 44, '197809272008011004', 'Endang Supriyadi, ST', 'endang Supriyadi.png'),
(83, 45, '196908101999031007', 'Saifuddin Hasibuan, ST, MM', 'WhatsApp_Image_2020-02-12_at_11_17_04.jpeg'),
(84, 46, '196308061991031007', 'Muhammad Nurman, S.IP, ST', 'WhatsApp_Image_2020-02-11_at_11_32_481.jpeg'),
(85, 47, '196206261994031005', 'Ir. Fauzi, MM', 'Fauzi .png'),
(86, 48, '196211101982121001', 'Muhammad Zarbani, ST, M.Si', 'M. Zarbani.png'),
(87, 49, '197704162007011001', 'Apriansyah Rustami, ST', 'Apriansyah Rustami.png'),
(88, 50, '197110221994031002', 'Rudy Susilo, ST, M.Si', 'Rudi Susilo.png'),
(89, 51, '-', '-', 'man.png'),
(90, 52, '-', '-', 'man.png'),
(91, 53, '198201212008011003', 'Eko Widiyanto, SE, ST', 'Eko Widiyanto.png'),
(92, 54, '-', '-', 'man.png'),
(93, 55, '196707121992031011', 'M. Iqbal Dewanto, ST, MM', 'WhatsApp_Image_2020-02-11_at_11_27_34.jpeg'),
(94, 56, '196605021996031003', 'Erwin Aduman, ST, MM', 'Erwin Aduman.png'),
(95, 57, '196301181991021002', 'Jon Fahlevi, ST', 'Jhon Fahlevi.png'),
(96, 58, '196210291991021001', 'Ir. Bayazi', 'Bayazi.png'),
(97, 59, '197805082007012007', 'Nukky Meiliana, ST, M.Eng', 'Nukki.png'),
(98, 60, ' ', '-', 'man.png'),
(99, 61, '-', '-', 'man.png');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id_tag` int(11) NOT NULL,
  `nama_tag` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_tag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_posting` bigint(20) NOT NULL,
  `user_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id_tag`, `nama_tag`, `slug_tag`, `user_posting`, `user_update`) VALUES
(6, 'dinaspu', 'dinaspu', 1, 0),
(14, 'sekretariat', 'sekretariat', 5, 0),
(15, 'Bidang Pengembangan Jaringan J', 'bidang-pengembangan-jaringan-jalan', 6, 0),
(16, 'Bidang Jalan', 'bidang-jalan', 6, 0),
(17, 'Bidang Jembatan', 'bidang-jembatan', 6, 0),
(18, 'Bidang Pengujian Peralatan dan', 'bidang-pengujian-peralatan-dan-bmd', 6, 0),
(19, 'Bidang Penataan Ruang', 'bidang-penataan-ruang', 6, 0),
(20, 'UPTD PJ3 Kabupaten Lahat', 'uptd-pj3-kabupaten-lahat', 6, 0),
(21, 'UPTD Jalan dan Jembatan Oku Ti', 'uptd-jalan-dan-jembatan-oku-timur', 6, 0),
(22, 'UPTD PJ3 Kabupaten OKI', 'uptd-pj3-kabupaten-oki', 6, 0),
(23, 'UPTD PJ3 Kabupaten Muara Enim', 'uptd-pj3-kabupaten-muara-enim', 6, 0),
(24, 'UPTD PJ3 Kota Palembang', 'uptd-pj3-kota-palembang', 6, 0),
(25, 'UPTD PJ3 Kabupaten Musi Banyua', 'uptd-pj3-kabupaten-musi-banyuasin', 6, 0),
(26, 'UPTD PJ3 Kabupaten OKU', 'uptd-pj3-kabupaten-oku', 6, 0),
(27, 'UPTD PJ3 Kabupaten Musi Rawas', 'uptd-pj3-kabupaten-musi-rawas', 6, 0),
(28, 'UPTD Laboratorium Bahan Kontru', 'uptd-laboratorium-bahan-kontruksi', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

CREATE TABLE `tema` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_tema` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versi` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screenshot` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tema`
--

INSERT INTO `tema` (`id`, `nama_tema`, `versi`, `aktif`, `author`, `web`, `screenshot`) VALUES
(22, 'ando', '1.0', 'Y', 'Ando Poluan', 'http://www.sandro.id', 'screenshot.jpg'),
(23, 'custom-dinaspu', '1.0', 'N', '', '', 'screenshot.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` bigint(11) UNSIGNED NOT NULL,
  `name_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_user` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_user` int(11) NOT NULL,
  `avatar_user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_user` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `terdaftar` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name_user`, `nama_lengkap`, `email`, `password_user`, `level_user`, `avatar_user`, `status_user`, `terhapus`, `terdaftar`) VALUES
(1, 'admin123', 'Admin Dinas PU ', '', 'd138768d3b5eca407f0dd579c5ca3767', 1, 'logo_dinaspupr1.png', 'Y', 'N', '0000-00-00'),
(2, 'budi', 'budi', 'budi@gmail.com', '750462c088103c9632e5a746a4b0dba5', 0, 'logo_dinaspupr.png', 'Y', 'N', '2018-11-15'),
(3, 'budi123', 'budi', 'budi@gmail.com', 'f7789394a7145c5ae84c119d31c168c0', 0, 'default.jpg', 'Y', 'Y', '2018-12-03'),
(4, 'budi321', 'budi baru', 'budi@yahoo.com', '4deefb36c7eaccd3aaa606f44b5311d7', 0, 'default.jpg', 'Y', 'N', '2018-12-03'),
(5, 'admin321', 'admin admin', 'admin321@gmail.cm', '7be771571e16277e200354af77253ecb', 1, 'default.jpg', 'Y', 'N', '2018-12-03'),
(6, 'adityads', 'adityads', 'adityads@pupr.com', '202cb962ac59075b964b07152d234b70', 1, 'default.jpg', 'Y', 'N', '2018-12-03'),
(7, 'dwitya', 'Dwitya Karina ', 'dwityakarinaseptiara1992@gmail.com', '24512b1b2abd8eedad752b2c0f22190c', 1, 'default.jpg', 'Y', 'N', '2020-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `visitor_id` int(11) NOT NULL,
  `visitor_ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `visitor_tanggal` date NOT NULL,
  `visitor_perangkat` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `visitor_hits` int(11) NOT NULL,
  `visitor_online` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`visitor_id`, `visitor_ip`, `visitor_tanggal`, `visitor_perangkat`, `visitor_hits`, `visitor_online`) VALUES
(7, '158.140.173.22', '2018-12-02', 'Chrome', 1, 1544593844),
(8, '216.162.47.73', '2018-12-11', 'Chrome', 1, 1544592577),
(9, '158.140.165.36', '2018-11-12', 'Chrome', 1, 1544593687),
(10, '72.35.247.140', '2018-12-12', 'Chrome', 1, 1544593936),
(11, '158.140.173.22', '2018-12-12', 'Firefox', 1, 1544638662),
(12, '182.1.20.77', '2018-12-12', 'Firefox', 1, 1544595307),
(13, '182.1.6.226', '2018-12-12', 'Firefox', 1, 1544595373),
(14, '182.1.4.93', '2018-12-12', 'Firefox', 1, 1544595381),
(15, '182.1.5.39', '2018-12-12', 'Firefox', 1, 1544595386),
(16, '182.1.22.186', '2018-12-12', 'Firefox', 1, 1544595392),
(17, '114.125.31.11', '2018-12-12', 'Chrome', 1, 1544605072),
(18, '114.125.31.100', '2018-12-12', 'Chrome', 1, 1544605075),
(19, '114.125.30.10', '2018-12-12', 'Chrome', 1, 1544605068),
(20, '158.140.165.36', '2018-12-12', 'Firefox', 1, 1544645700),
(21, '158.140.173.22', '2018-12-13', 'Firefox', 1, 1544740370),
(22, '158.140.165.36', '2018-12-13', 'Chrome', 1, 1544740481),
(23, '158.140.165.122', '2018-12-13', 'Chrome', 1, 1544677850),
(24, '158.140.165.70', '2018-12-13', 'Firefox', 1, 1544680823),
(25, '158.140.173.22', '2018-12-14', 'Chrome', 1, 1544778881),
(26, '115.178.207.171', '2018-12-14', 'Firefox', 1, 1544756203),
(27, '158.140.165.36', '2018-12-14', 'Chrome', 1, 1544778605),
(28, '182.1.19.40', '2018-12-14', 'Safari', 1, 1544756968),
(29, '114.125.13.49', '2018-12-14', 'Firefox', 1, 1544770909),
(30, '114.125.29.33', '2018-12-14', 'Firefox', 1, 1544761451),
(31, '182.1.22.159', '2018-12-14', 'Safari', 1, 1544763497),
(32, '182.1.7.49', '2018-12-14', 'Safari', 1, 1544763511),
(33, '158.140.173.65', '2018-12-14', 'Chrome', 1, 1544766174),
(34, '114.125.29.176', '2018-12-14', 'Safari', 1, 1544766503),
(35, '182.1.16.92', '2018-12-14', 'Safari', 1, 1544767549),
(36, '182.1.3.22', '2018-12-14', 'Safari', 1, 1544769755),
(37, '182.1.20.144', '2018-12-14', 'Safari', 1, 1544770079),
(38, '110.137.162.154', '2018-12-14', 'Chrome', 1, 1544773436),
(39, '114.125.15.62', '2018-12-14', 'Safari', 1, 1544771558),
(40, '64.233.173.134', '2018-12-14', 'Chrome', 1, 1544774539),
(41, '114.125.228.218', '2018-12-14', 'Chrome', 1, 1544774070),
(42, '180.242.45.30', '2018-12-14', 'Chrome', 1, 1544778500),
(43, '115.178.220.197', '2018-12-14', 'Firefox', 1, 1544784859),
(44, '158.140.165.36', '2018-12-15', 'Firefox', 1, 1544875592),
(45, '180.254.167.0', '2018-12-15', 'Chrome', 1, 1544863698),
(46, '158.140.173.22', '2018-12-15', 'Firefox', 1, 1544874623),
(47, '158.140.165.36', '2018-12-16', 'Firefox', 1, 1544935711),
(48, '158.140.173.22', '2018-12-18', 'Chrome', 1, 1545123833),
(49, '158.140.165.36', '2018-12-18', 'Chrome', 1, 1545155306),
(50, '158.140.173.22', '2018-12-19', 'Firefox', 1, 1545202304),
(51, '158.140.165.36', '2018-12-19', 'Chrome', 1, 1545200174),
(52, '158.140.173.22', '2018-12-20', 'Chrome', 1, 1545291059),
(53, '158.140.165.36', '2018-12-20', 'Chrome', 1, 1545347428),
(54, '158.140.173.22', '2018-12-21', 'Chrome', 1, 1545358704),
(55, '158.140.165.36', '2018-12-21', 'Chrome', 1, 1545361470),
(56, '158.140.173.22', '2018-12-23', 'Chrome', 1, 1545552280),
(57, '158.140.165.36', '2018-12-23', 'Firefox', 1, 1545566520),
(58, '158.140.173.22', '2018-12-24', 'Chrome', 1, 1545639229),
(59, '158.140.165.36', '2018-12-24', 'Firefox', 1, 1545630630),
(60, '158.140.173.85', '2018-12-24', 'Firefox', 1, 1545624978),
(61, '158.140.165.36', '2018-12-25', 'Chrome', 1, 1545705061),
(62, '213.180.203.47', '2018-12-26', 'YandexBot', 1, 1545847471),
(63, '158.140.173.22', '2018-12-27', 'Chrome', 1, 1545917934),
(64, '180.244.147.30', '2018-12-27', 'Firefox', 1, 1545917897),
(65, '87.250.233.120', '2018-12-27', 'YandexBot', 1, 1545912268),
(66, '158.140.173.22', '2018-12-28', 'Chrome', 1, 1545965119),
(67, '158.140.173.22', '2018-12-29', 'Chrome', 1, 1546058487),
(68, '36.76.235.170', '2018-12-29', 'Firefox', 1, 1546096041),
(69, '36.77.133.222', '2018-12-31', 'Firefox', 1, 1546239704),
(70, '158.140.165.36', '2019-01-02', 'Chrome', 1, 1546445890),
(71, '158.140.187.203', '2019-01-02', 'Chrome', 1, 1546448895),
(72, '114.125.228.205', '2019-01-03', 'Chrome', 1, 1546506244),
(73, '36.84.228.166', '2019-01-03', 'Firefox', 1, 1546521726),
(74, '100.27.3.103', '2019-01-04', 'Chrome', 1, 1546615027),
(75, '165.227.126.154', '2019-01-06', 'Mozilla', 1, 1546791795),
(76, '165.227.182.114', '2019-01-06', 'Mozilla', 1, 1546792956),
(77, '159.203.174.228', '2019-01-06', 'Mozilla', 1, 1546796241),
(78, '36.84.69.22', '2019-01-08', 'Chrome', 1, 1546908198),
(79, '64.233.173.156', '2019-01-09', 'Chrome', 1, 1547033838),
(80, '64.233.173.157', '2019-01-09', 'Chrome', 1, 1547033836),
(81, '64.233.173.156', '2019-01-13', 'Chrome', 1, 1547368590),
(82, '36.69.51.73', '2019-01-14', 'Chrome', 1, 1547427539),
(83, '209.17.97.2', '2019-01-15', 'Mozilla', 1, 1547515492),
(84, '103.102.146.2', '2019-01-15', 'Firefox', 1, 1547518197),
(85, '18.144.13.227', '2019-01-17', 'Chrome', 1, 1547719906),
(86, '50.112.90.211', '2019-01-17', 'Chrome', 1, 1547748976),
(87, '209.17.97.58', '2019-01-18', 'Mozilla', 1, 1547845010),
(88, '54.186.14.35', '2019-01-18', 'Chrome', 1, 1547848332),
(89, '209.17.97.18', '2019-01-21', 'Mozilla', 1, 1548094470),
(90, '209.17.96.218', '2019-01-22', 'Mozilla', 1, 1548121775),
(91, '209.17.97.114', '2019-01-22', 'Mozilla', 1, 1548153927),
(92, '158.140.187.251', '2019-01-23', 'Chrome', 1, 1548214847),
(93, '171.67.70.45', '2019-01-23', 'Mozilla', 1, 1548228696),
(94, '171.67.70.48', '2019-01-23', 'Mozilla', 1, 1548231658),
(95, '171.67.70.60', '2019-01-24', 'Mozilla', 1, 1548291185),
(96, '158.140.187.227', '2019-01-24', 'Chrome', 1, 1548293062),
(97, '202.77.98.186', '2019-01-24', 'Chrome', 1, 1548293535),
(98, '171.67.70.48', '2019-01-24', 'Mozilla', 1, 1548295372),
(99, '209.17.96.42', '2019-01-25', 'Mozilla', 1, 1548445544),
(100, '68.183.154.31', '2019-02-01', 'Mozilla', 1, 1548979454),
(101, '167.99.53.29', '2019-02-01', 'Mozilla', 1, 1549006258),
(102, '209.17.97.50', '2019-02-02', 'Mozilla', 1, 1549088405),
(103, '209.17.96.18', '2019-02-04', 'Mozilla', 1, 1549311541),
(104, '165.227.79.62', '2019-02-05', 'Mozilla', 1, 1549327631),
(105, '68.183.146.66', '2019-02-05', 'Mozilla', 1, 1549327676),
(106, '159.203.123.211', '2019-02-05', 'Mozilla', 1, 1549334316),
(107, '209.17.97.82', '2019-02-05', 'Mozilla', 1, 1549371099),
(108, '66.249.75.94', '2019-02-07', 'Googlebot', 1, 1549519808),
(109, '66.249.75.92', '2019-02-07', 'Googlebot', 1, 1549519816),
(110, '36.90.48.16', '2019-02-07', 'Firefox', 1, 1549525767),
(111, '103.213.130.127', '2019-02-08', 'Safari', 1, 1549586561),
(112, '66.249.71.156', '2019-02-08', 'Googlebot', 1, 1549601250),
(113, '66.249.71.157', '2019-02-10', 'Googlebot', 1, 1549787377),
(114, '118.97.169.170', '2019-02-11', 'Chrome', 1, 1549852059),
(115, '66.249.64.221', '2019-02-12', 'Googlebot', 1, 1549941081),
(116, '112.215.175.17', '2019-02-12', 'Chrome', 1, 1549947886),
(117, '36.84.69.29', '2019-02-12', 'Chrome', 1, 1549967812),
(118, '182.1.62.137', '2019-02-13', 'Safari', 1, 1550021011),
(119, '182.1.60.88', '2019-02-13', 'Safari', 1, 1550021044),
(120, '182.1.63.165', '2019-02-13', 'Safari', 1, 1550021045),
(121, '66.249.79.125', '2019-02-13', 'Googlebot', 1, 1550087868),
(122, '182.1.60.181', '2019-02-14', 'Chrome', 1, 1550111735),
(123, '182.1.63.149', '2019-02-14', 'Chrome', 1, 1550111749),
(124, '182.1.46.52', '2019-02-14', 'Chrome', 1, 1550112903),
(125, '66.249.69.89', '2019-02-17', 'Googlebot', 1, 1550426709),
(126, '158.140.187.255', '2019-02-18', 'Mozilla', 1, 1550485133),
(127, '158.140.187.214', '2019-02-19', 'Chrome', 1, 1550536619),
(128, '66.249.79.248', '2019-02-19', 'Googlebot', 1, 1550574118),
(129, '112.78.166.19', '2019-02-20', 'Chrome', 1, 1550637469),
(130, '66.249.71.149', '2019-02-22', 'Googlebot', 1, 1550825556),
(131, '66.249.71.151', '2019-02-23', 'Googlebot', 1, 1550909805),
(132, '198.27.70.45', '2019-02-24', 'Firefox', 1, 1550988201),
(133, '66.249.71.147', '2019-02-25', 'Googlebot', 1, 1551062904),
(134, '185.249.197.229', '2019-02-26', 'Other', 1, 1551163260),
(135, '64.233.173.151', '2019-02-27', 'Chrome', 1, 1551230736),
(136, '158.140.187.252', '2019-02-27', 'Mozilla', 1, 1551295284),
(137, '104.222.45.120', '2019-02-28', 'Chrome', 1, 1551392612),
(138, '23.27.152.135', '2019-02-28', 'Chrome', 1, 1551392638),
(139, '38.130.163.95', '2019-02-28', 'Chrome', 1, 1551392653),
(140, '147.135.254.225', '2019-02-28', 'Chrome', 1, 1551393064),
(141, '66.249.65.111', '2019-02-28', 'Googlebot', 1, 1551395369),
(142, '66.249.79.109', '2019-03-02', 'Googlebot', 1, 1551548891),
(143, '66.249.69.45', '2019-03-03', 'Googlebot', 1, 1551639770),
(144, '34.241.68.51', '2019-03-04', 'Chrome', 1, 1551709024),
(145, '142.93.182.137', '2019-03-05', 'Mozilla', 1, 1551751067),
(146, '134.209.36.10', '2019-03-05', 'Mozilla', 1, 1551751454),
(147, '134.209.38.148', '2019-03-05', 'Mozilla', 1, 1551752142),
(148, '18.232.107.185', '2019-03-05', 'Chrome', 1, 1551764444),
(149, '100.26.159.136', '2019-03-05', 'Chrome', 1, 1551792213),
(150, '134.209.32.58', '2019-03-05', 'Mozilla', 1, 1551794448),
(151, '134.209.46.173', '2019-03-05', 'Mozilla', 1, 1551796756),
(152, '134.209.44.240', '2019-03-05', 'Mozilla', 1, 1551798733),
(153, '66.249.71.151', '2019-03-06', 'Googlebot', 1, 1551873449),
(154, '103.76.23.115', '2019-03-08', 'Chrome', 1, 1552015033),
(155, '202.80.217.222', '2019-03-08', 'Chrome', 1, 1552032526),
(156, '64.233.173.149', '2019-03-08', 'Chrome', 1, 1552035218),
(157, '66.249.64.207', '2019-03-08', 'Googlebot', 1, 1552036402),
(158, '66.249.64.205', '2019-03-08', 'Googlebot', 1, 1552054977),
(159, '158.140.187.214', '2019-03-08', 'Chrome', 1, 1552064213),
(160, '34.73.236.160', '2019-03-09', 'Firefox', 1, 1552107688),
(161, '185.249.197.229', '2019-03-09', 'Other', 1, 1552130208),
(162, '37.59.55.45', '2019-03-09', 'Firefox', 1, 1552149637),
(163, '64.233.173.150', '2019-03-11', 'Chrome', 1, 1552294146),
(164, '203.30.236.121', '2019-03-11', 'Chrome', 1, 1552295723),
(165, '66.249.66.91', '2019-03-11', 'Googlebot', 1, 1552346937),
(166, '209.17.97.66', '2019-03-12', 'Mozilla', 1, 1552351110),
(167, '209.17.96.66', '2019-03-12', 'Mozilla', 1, 1552354313),
(168, '139.194.90.137', '2019-03-12', 'Chrome', 1, 1552363897),
(169, '66.249.66.93', '2019-03-12', 'Googlebot', 1, 1552371202),
(170, '140.213.50.49', '2019-03-12', 'Chrome', 1, 1552411525),
(171, '64.233.173.143', '2019-03-13', 'Chrome', 1, 1552445170),
(172, '66.102.6.170', '2019-03-13', 'Chrome', 1, 1552473314),
(173, '141.0.8.232', '2019-03-13', 'Opera', 1, 1552475320),
(174, '66.249.71.149', '2019-03-13', 'Googlebot', 1, 1552520194),
(175, '112.215.173.71', '2019-03-14', 'Safari', 1, 1552541854),
(176, '192.99.35.149', '2019-03-14', 'Firefox', 1, 1552557491),
(177, '192.99.15.55', '2019-03-14', 'Firefox', 1, 1552559186),
(178, '209.17.97.58', '2019-03-15', 'Mozilla', 1, 1552610140),
(179, '209.17.96.66', '2019-03-15', 'Mozilla', 1, 1552613846),
(180, '209.17.97.50', '2019-03-15', 'Mozilla', 1, 1552618585),
(181, '209.17.96.58', '2019-03-15', 'Mozilla', 1, 1552662327),
(182, '158.140.187.209', '2019-03-15', 'Chrome', 1, 1552668217),
(183, '158.140.187.209', '2019-03-16', 'Chrome', 1, 1552721162),
(184, '66.249.64.207', '2019-03-17', 'Googlebot', 1, 1552857161),
(185, '209.17.97.18', '2019-03-18', 'Mozilla', 1, 1552931983),
(186, '209.17.96.218', '2019-03-19', 'Mozilla', 1, 1552979882),
(187, '94.23.208.210', '2019-03-19', 'Firefox', 1, 1553009261),
(188, '66.249.66.91', '2019-03-19', 'Googlebot', 1, 1553014197),
(189, '209.17.97.18', '2019-03-20', 'Mozilla', 1, 1553042436),
(190, '64.233.173.151', '2019-03-20', 'Chrome', 1, 1553067844),
(191, '209.17.97.90', '2019-03-20', 'Mozilla', 1, 1553095694),
(192, '209.17.97.106', '2019-03-20', 'Mozilla', 1, 1553096274),
(193, '192.99.15.139', '2019-03-20', 'Firefox', 1, 1553113574),
(194, '66.249.66.91', '2019-03-21', 'Googlebot', 1, 1553137190),
(195, '118.97.169.170', '2019-03-21', 'Firefox', 1, 1553161397),
(196, '64.233.173.151', '2019-03-21', 'Chrome', 1, 1553173125),
(197, '182.1.46.231', '2019-03-21', 'Chrome', 1, 1553173214),
(198, '64.233.173.149', '2019-03-21', 'Chrome', 1, 1553173303),
(199, '114.125.231.247', '2019-03-21', 'Chrome', 1, 1553173584),
(200, '182.1.62.172', '2019-03-21', 'Chrome', 1, 1553173322),
(201, '182.1.61.103', '2019-03-21', 'Chrome', 1, 1553173334),
(202, '182.1.47.189', '2019-03-21', 'Chrome', 1, 1553173515),
(203, '209.17.97.82', '2019-03-21', 'Mozilla', 1, 1553206512),
(204, '209.17.96.242', '2019-03-22', 'Mozilla', 1, 1553215444),
(205, '64.233.173.151', '2019-03-22', 'Chrome', 1, 1553232553),
(206, '125.166.164.200', '2019-03-23', 'Chrome', 1, 1553316708),
(207, '209.17.96.242', '2019-03-23', 'Mozilla', 1, 1553320932),
(208, '66.249.66.91', '2019-03-23', 'Googlebot', 1, 1553344927),
(209, '158.140.187.233', '2019-03-24', 'Chrome', 1, 1553415382),
(210, '66.249.79.236', '2019-03-25', 'Googlebot', 1, 1553502049),
(211, '118.96.125.253', '2019-03-25', 'Firefox', 1, 1553503716),
(212, '110.138.150.69', '2019-03-25', 'Chrome', 1, 1553519591),
(213, '64.233.173.149', '2019-03-26', 'Chrome', 1, 1553568886),
(214, '202.43.93.23', '2019-03-26', 'Chrome', 1, 1553570284),
(215, '192.99.35.63', '2019-03-26', 'Firefox', 1, 1553600410),
(216, '209.17.96.58', '2019-03-26', 'Mozilla', 1, 1553623851),
(217, '209.17.96.18', '2019-03-26', 'Mozilla', 1, 1553633959),
(218, '112.215.245.27', '2019-03-27', 'Chrome', 1, 1553730181),
(219, '66.249.71.149', '2019-03-28', 'Googlebot', 1, 1553776746),
(220, '223.27.152.173', '2019-03-29', 'Firefox', 1, 1553827276),
(221, '66.249.69.45', '2019-03-29', 'Googlebot', 1, 1553899447),
(222, '66.249.69.47', '2019-03-29', 'Googlebot', 1, 1553863906),
(223, '209.17.97.34', '2019-03-29', 'Mozilla', 1, 1553864828),
(224, '64.233.173.150', '2019-03-29', 'Chrome', 1, 1553868685),
(225, '209.17.97.90', '2019-03-29', 'Mozilla', 1, 1553876931),
(226, '66.249.75.81', '2019-03-30', 'Googlebot', 1, 1553987792),
(227, '180.245.213.16', '2019-03-31', 'Chrome', 1, 1554009409),
(228, '8.37.233.167', '2019-04-01', 'Safari', 1, 1554112532),
(229, '158.140.187.236', '2019-04-01', 'Chrome', 1, 1554142073),
(230, '159.65.189.34', '2019-04-02', 'Mozilla', 1, 1554204376),
(231, '36.77.94.15', '2019-04-03', 'Firefox', 1, 1554284955),
(232, '66.249.66.93', '2019-04-04', 'Googlebot', 1, 1554367490),
(233, '104.248.1.48', '2019-04-04', 'Mozilla', 1, 1554368129),
(234, '159.89.44.226', '2019-04-04', 'Mozilla', 1, 1554370793),
(235, '134.209.168.89', '2019-04-04', 'Mozilla', 1, 1554370983),
(236, '64.233.173.150', '2019-04-04', 'Chrome', 1, 1554386117),
(237, '13.56.252.207', '2019-04-04', 'Chrome', 1, 1554394753),
(238, '66.249.66.205', '2019-04-04', 'Googlebot', 1, 1554401330),
(239, '66.249.65.111', '2019-04-05', 'Googlebot', 1, 1554439489),
(240, '66.249.65.109', '2019-04-05', 'Googlebot', 1, 1554473366),
(241, '209.17.96.210', '2019-04-05', 'Mozilla', 1, 1554501122),
(242, '209.17.97.58', '2019-04-06', 'Mozilla', 1, 1554540539),
(243, '116.66.207.110', '2019-04-08', 'Chrome', 1, 1554697831),
(244, '158.140.187.233', '2019-04-08', 'Firefox', 1, 1554698313),
(245, '158.140.187.209', '2019-04-08', 'Chrome', 1, 1554725101),
(246, '192.99.35.149', '2019-04-08', 'Other', 1, 1554739455),
(247, '94.23.208.210', '2019-04-08', 'Other', 1, 1554740604),
(248, '158.140.187.233', '2019-04-09', 'Firefox', 1, 1554781760),
(249, '182.1.62.120', '2019-04-09', 'Chrome', 1, 1554819358),
(250, '182.1.61.230', '2019-04-09', 'Chrome', 1, 1554819423),
(251, '182.1.61.193', '2019-04-09', 'Chrome', 1, 1554821222),
(252, '182.1.44.247', '2019-04-09', 'Chrome', 1, 1554820376),
(253, '182.1.45.218', '2019-04-09', 'Chrome', 1, 1554820730),
(254, '182.1.45.65', '2019-04-09', 'Chrome', 1, 1554821177),
(255, '182.1.62.89', '2019-04-09', 'Chrome', 1, 1554821338),
(256, '64.233.173.150', '2019-04-09', 'Chrome', 1, 1554823740),
(257, '66.249.79.238', '2019-04-10', 'Googlebot', 1, 1554860067),
(258, '114.125.15.222', '2019-04-10', 'Chrome', 1, 1554860180),
(259, '114.125.12.121', '2019-04-10', 'Chrome', 1, 1554860214),
(260, '182.1.4.123', '2019-04-10', 'Chrome', 1, 1554861223),
(261, '182.1.7.233', '2019-04-10', 'Chrome', 1, 1554861224),
(262, '182.1.22.197', '2019-04-10', 'Chrome', 1, 1554861226),
(263, '36.71.235.106', '2019-04-10', 'Chrome', 1, 1554863435),
(264, '66.249.71.151', '2019-04-10', 'Googlebot', 1, 1554925579),
(265, '140.213.52.192', '2019-04-11', 'Safari', 1, 1554958837),
(266, '66.249.71.147', '2019-04-11', 'Googlebot', 1, 1554959295),
(267, '66.249.71.149', '2019-04-11', 'Googlebot', 1, 1554959513),
(268, '140.213.52.220', '2019-04-11', 'Safari', 1, 1554964710),
(269, '66.249.64.207', '2019-04-11', 'Googlebot', 1, 1555005166),
(270, '158.140.187.233', '2019-04-11', 'Chrome', 1, 1555009004),
(271, '209.17.97.122', '2019-04-12', 'Mozilla', 1, 1555037826),
(272, '209.17.97.2', '2019-04-12', 'Mozilla', 1, 1555101554),
(273, '88.198.39.184', '2019-04-13', 'Internet Explorer', 1, 1555135847),
(274, '209.17.96.66', '2019-04-13', 'Mozilla', 1, 1555161308),
(275, '36.90.42.139', '2019-04-14', 'Chrome', 1, 1555201517),
(276, '112.215.170.172', '2019-04-14', 'Chrome', 1, 1555228328),
(277, '66.249.69.111', '2019-04-14', 'Googlebot', 1, 1555237130),
(278, '182.1.44.183', '2019-04-14', 'Chrome', 1, 1555257242),
(279, '66.249.69.107', '2019-04-15', 'Googlebot', 1, 1555360066),
(280, '66.249.69.111', '2019-04-15', 'Googlebot', 1, 1555338187),
(281, '209.17.96.50', '2019-04-15', 'Mozilla', 1, 1555369033),
(282, '209.17.97.26', '2019-04-16', 'Mozilla', 1, 1555377469),
(283, '36.84.62.151', '2019-04-16', 'Chrome', 1, 1555401963),
(284, '66.249.64.205', '2019-04-16', 'Googlebot', 1, 1555448899),
(285, '114.125.247.110', '2019-04-18', 'Opera', 1, 1555559821),
(286, '36.77.166.203', '2019-04-18', 'Chrome', 1, 1555609107),
(287, '66.249.66.207', '2019-04-18', 'Googlebot', 1, 1555611612),
(288, '209.17.97.10', '2019-04-18', 'Mozilla', 1, 1555622603),
(289, '54.154.204.232', '2019-04-19', 'Chrome', 1, 1555676669),
(290, '66.249.64.207', '2019-04-19', 'Googlebot', 1, 1555678569),
(291, '192.99.35.149', '2019-04-19', 'Firefox', 1, 1555705612),
(292, '54.169.101.53', '2019-04-19', 'Chrome', 1, 1555705709),
(293, '209.17.96.58', '2019-04-19', 'Mozilla', 1, 1555710499),
(294, '110.137.147.170', '2019-04-20', 'Chrome', 1, 1555775820),
(295, '66.249.65.111', '2019-04-20', 'Googlebot', 1, 1555788647),
(296, '192.99.15.55', '2019-04-21', 'Firefox', 1, 1555821966),
(297, '64.233.173.149', '2019-04-21', 'Chrome', 1, 1555867887),
(298, '140.213.3.130', '2019-04-21', 'Chrome', 1, 1555888611),
(299, '66.249.79.107', '2019-04-22', 'Googlebot', 1, 1555894090),
(300, '158.140.187.209', '2019-04-22', 'Chrome', 1, 1555899868),
(301, '::1', '2019-04-22', 'Chrome', 1, 1555916068),
(302, '::1', '2019-04-24', 'Chrome', 1, 1556111391),
(303, '::1', '2019-04-25', 'Chrome', 1, 1556202713),
(304, '::1', '2019-04-26', 'Chrome', 1, 1556282905),
(305, '::1', '2019-04-27', 'Chrome', 1, 1556331865),
(306, '::1', '2019-04-29', 'Chrome', 1, 1556503288),
(307, '::1', '2019-05-05', 'Chrome', 1, 1557088597),
(308, '::1', '2019-05-06', 'Chrome', 1, 1557177300),
(309, '::1', '2019-05-07', 'Chrome', 1, 1557262585),
(310, '::1', '2019-05-08', 'Chrome', 1, 1557332848),
(311, '::1', '2019-05-09', 'Chrome', 1, 1557437584),
(312, '::1', '2019-05-14', 'Chrome', 1, 1557858015),
(313, '::1', '2019-05-14', 'Chrome', 1, 1557858015),
(314, '::1', '2019-05-23', 'Chrome', 1, 1558628268),
(315, '::1', '2019-06-20', 'Chrome', 1, 1561065391),
(316, '::1', '2019-06-21', 'Chrome', 1, 1561080142),
(317, '::1', '2019-06-22', 'Chrome', 1, 1561201070),
(318, '::1', '2019-06-23', 'Chrome', 1, 1561324201),
(319, '::1', '2019-06-24', 'Chrome', 1, 1561399438),
(320, '::1', '2019-06-25', 'Chrome', 1, 1561425943),
(321, '::1', '2019-07-17', 'Chrome', 1, 1563391881),
(322, '::1', '2019-07-22', 'Chrome', 1, 1563825814),
(323, '::1', '2019-09-16', 'Chrome', 1, 1568663209),
(324, '::1', '2019-09-18', 'Chrome', 1, 1568833759),
(325, '::1', '2019-09-20', 'Chrome', 1, 1568997871),
(326, '::1', '2019-10-25', 'Chrome', 1, 1572014538),
(327, '::1', '2020-01-20', 'Chrome', 1, 1579535685),
(328, '::1', '2020-02-10', 'Chrome', 1, 1581327367),
(329, '103.129.105.28', '2020-02-10', 'Chrome', 1, 1581331667),
(330, '179.43.169.182', '2020-02-10', 'Firefox', 1, 1581331773),
(331, '103.129.105.30', '2020-02-10', 'Chrome', 1, 1581332336),
(332, '36.68.238.140', '2020-02-10', 'Firefox', 1, 1581331938),
(333, '114.125.248.27', '2020-02-10', 'Chrome', 1, 1581341469),
(334, '182.1.45.55', '2020-02-10', 'Chrome', 1, 1581339241),
(335, '182.1.61.50', '2020-02-10', 'Chrome', 1, 1581339237),
(336, '103.76.23.118', '2020-02-11', 'Chrome', 1, 1581408750),
(337, '36.68.238.140', '2020-02-11', 'Firefox', 1, 1581399171),
(338, '195.154.62.232', '2020-02-11', 'Firefox', 1, 1581412055),
(339, '195.154.63.222', '2020-02-11', 'Firefox', 1, 1581412058),
(340, '163.172.70.242', '2020-02-11', 'Firefox', 1, 1581412766),
(341, '62.210.10.77', '2020-02-11', 'Firefox', 1, 1581412771),
(342, '103.76.23.118', '2020-02-12', 'Chrome', 1, 1581492109),
(343, '103.129.105.30', '2020-02-12', 'Firefox', 1, 1581477521),
(344, '51.255.109.162', '2020-02-12', 'Firefox', 1, 1581537429),
(345, '51.255.109.173', '2020-02-12', 'Firefox', 1, 1581537435),
(346, '36.77.93.78', '2020-02-13', 'Chrome', 1, 1581567198),
(347, '103.129.105.30', '2020-02-13', 'Chrome', 1, 1581629702),
(348, '103.239.165.58', '2020-02-13', 'Chrome', 1, 1581569185),
(349, '103.129.105.28', '2020-02-13', 'Chrome', 1, 1581573150),
(350, '114.125.250.68', '2020-02-13', 'Firefox', 1, 1581574798),
(351, '103.76.23.118', '2020-02-13', 'Chrome', 1, 1581575671),
(352, '64.233.173.112', '2020-02-13', 'Chrome', 1, 1581575579),
(353, '64.233.173.110', '2020-02-13', 'Chrome', 1, 1581575614),
(354, '103.129.105.30', '2020-02-14', 'Firefox', 1, 1581643870),
(355, '103.76.23.118', '2020-02-14', 'Chrome', 1, 1581654154),
(356, '158.140.187.48', '2020-02-20', 'Chrome', 1, 1582210534),
(357, '158.140.187.50', '2020-02-20', 'Chrome', 1, 1582210541),
(358, '54.218.214.64', '2020-02-28', 'Firefox', 1, 1582877233),
(359, '103.76.23.118', '2020-03-03', 'Chrome', 1, 1583218678),
(360, '18.228.16.20', '2020-03-05', 'Chrome', 1, 1583381291),
(361, '191.96.85.255', '2020-03-05', 'Opera', 1, 1583381594),
(362, '158.140.173.31', '2020-03-06', 'Chrome', 1, 1583470828),
(363, '158.140.173.115', '2020-03-06', 'Chrome', 1, 1583459613),
(364, '180.246.151.70', '2020-03-08', 'Firefox', 1, 1583627729),
(365, '103.76.23.115', '2020-03-09', 'Chrome', 1, 1583724164),
(366, '64.233.173.91', '2020-03-09', 'Chrome', 1, 1583724213),
(367, '64.233.173.89', '2020-03-10', 'Chrome', 1, 1583876146),
(368, '64.233.173.91', '2020-03-10', 'Chrome', 1, 1583876154),
(369, '36.68.237.70', '2020-03-11', 'Chrome', 1, 1583883758),
(370, '114.142.169.30', '2020-03-12', 'Firefox', 1, 1583983446),
(371, '36.77.95.73', '2020-03-13', 'Firefox', 1, 1584072948),
(372, '158.140.187.48', '2020-03-13', 'Chrome', 1, 1584074608),
(373, '158.140.187.50', '2020-03-13', 'Chrome', 1, 1584073084),
(374, '158.140.186.16', '2020-03-13', 'Chrome', 1, 1584074608),
(375, '158.140.186.14', '2020-03-13', 'Chrome', 1, 1584080917),
(376, '158.140.187.39', '2020-03-13', 'Chrome', 1, 1584074453),
(377, '114.142.168.57', '2020-03-13', 'Firefox', 1, 1584128648),
(378, '114.142.168.44', '2020-03-17', 'Firefox', 1, 1584485210),
(379, '103.76.23.115', '2020-03-18', 'Chrome', 1, 1584500578),
(380, '114.125.246.90', '2020-03-18', 'Other', 1, 1584545078),
(381, '180.242.62.177', '2020-03-18', 'Chrome', 1, 1584546894),
(382, '180.242.62.177', '2020-03-19', 'Chrome', 1, 1584580227),
(383, '110.137.143.63', '2020-03-19', 'Chrome', 1, 1584601023),
(384, '3.86.97.99', '2020-03-19', 'Other', 1, 1584584296),
(385, '103.208.137.2', '2020-03-19', 'Chrome', 1, 1584584539),
(386, '180.245.111.113', '2020-03-19', 'Chrome', 1, 1584592995),
(387, '54.167.12.22', '2020-03-19', 'Other', 1, 1584586098),
(388, '158.140.173.115', '2020-03-19', 'Chrome', 1, 1584586549),
(389, '158.140.173.31', '2020-03-19', 'Chrome', 1, 1584586964),
(390, '114.125.231.35', '2020-03-19', 'Safari', 1, 1584587657),
(391, '180.245.135.214', '2020-03-19', 'Firefox', 1, 1584625207),
(392, '114.142.168.55', '2020-03-19', 'Firefox', 1, 1584657814),
(393, '125.165.132.180', '2020-03-19', 'Chrome', 1, 1584658788),
(394, '165.227.70.127', '2020-03-29', 'Mozilla', 1, 1585509424),
(395, '163.172.161.137', '2020-04-01', 'Chrome', 1, 1585692387),
(396, '64.225.8.123', '2020-04-01', 'Mozilla', 1, 1585695305),
(397, '103.76.23.115', '2020-04-03', 'Chrome', 1, 1585897273),
(398, '18.229.150.208', '2020-04-05', 'Chrome', 1, 1586046099),
(399, '182.1.39.49', '2020-04-13', 'Chrome', 1, 1586750742),
(400, '182.1.61.140', '2020-04-13', 'Other', 1, 1586750780),
(401, '182.1.61.58', '2020-04-13', 'Chrome', 1, 1586750998),
(402, '209.17.97.26', '2020-04-14', 'Mozilla', 1, 1586815823),
(403, '209.17.97.114', '2020-04-14', 'Mozilla', 1, 1586834414),
(404, '209.17.96.82', '2020-04-16', 'Mozilla', 1, 1587071557),
(405, '209.17.96.42', '2020-04-17', 'Mozilla', 1, 1587131318),
(406, '209.17.96.10', '2020-04-18', 'Mozilla', 1, 1587185235),
(407, '114.125.237.54', '2020-04-21', 'Chrome', 1, 1587464588),
(408, '209.17.96.122', '2020-04-21', 'Mozilla', 1, 1587477857),
(409, '209.17.96.138', '2020-04-21', 'Mozilla', 1, 1587483800),
(410, '209.17.97.122', '2020-04-21', 'Mozilla', 1, 1587491116),
(411, '209.17.96.114', '2020-04-22', 'Mozilla', 1, 1587513422),
(412, '209.17.97.98', '2020-04-24', 'Mozilla', 1, 1587690844),
(413, '209.17.96.226', '2020-04-24', 'Mozilla', 1, 1587691061),
(414, '209.17.97.2', '2020-04-24', 'Mozilla', 1, 1587700660),
(415, '209.17.96.114', '2020-04-24', 'Mozilla', 1, 1587750967),
(416, '209.17.96.250', '2020-04-28', 'Mozilla', 1, 1588052064),
(417, '209.17.96.226', '2020-04-29', 'Mozilla', 1, 1588152556),
(418, '209.17.97.50', '2020-04-29', 'Mozilla', 1, 1588156648),
(419, '209.17.96.202', '2020-04-29', 'Mozilla', 1, 1588156882),
(420, '159.65.161.172', '2020-05-01', 'Mozilla', 1, 1588317962),
(421, '209.17.97.18', '2020-05-01', 'Mozilla', 1, 1588355603),
(422, '209.17.96.138', '2020-05-02', 'Mozilla', 1, 1588405073),
(423, '157.245.124.223', '2020-05-05', 'Mozilla', 1, 1588644857),
(424, '209.17.96.42', '2020-05-05', 'Mozilla', 1, 1588672167),
(425, '209.17.96.226', '2020-05-05', 'Mozilla', 1, 1588677552),
(426, '209.17.97.2', '2020-05-08', 'Mozilla', 1, 1588941445),
(427, '209.17.96.2', '2020-05-08', 'Mozilla', 1, 1588953886),
(428, '209.17.96.130', '2020-05-09', 'Mozilla', 1, 1588976305),
(429, '209.17.97.90', '2020-05-09', 'Mozilla', 1, 1588979546),
(430, '103.76.23.115', '2020-05-12', 'Chrome', 1, 1589259757),
(431, '209.17.96.242', '2020-05-12', 'Mozilla', 1, 1589270802),
(432, '209.17.96.42', '2020-05-13', 'Mozilla', 1, 1589323151),
(433, '209.17.96.130', '2020-05-14', 'Mozilla', 1, 1589418138),
(434, '209.17.96.250', '2020-05-14', 'Mozilla', 1, 1589419392),
(435, '209.17.96.178', '2020-05-15', 'Mozilla', 1, 1589528512),
(436, '209.17.96.10', '2020-05-15', 'Mozilla', 1, 1589547221),
(437, '209.17.96.58', '2020-05-16', 'Mozilla', 1, 1589640266),
(438, '209.17.96.130', '2020-05-19', 'Mozilla', 1, 1589843701),
(439, '40.113.240.29', '2020-05-19', 'Firefox', 1, 1589913233),
(440, '103.76.23.115', '2020-05-20', 'Chrome', 1, 1589951537),
(441, '209.17.97.98', '2020-05-20', 'Mozilla', 1, 1589978352),
(442, '209.17.96.66', '2020-05-20', 'Mozilla', 1, 1589993903),
(443, '209.17.96.58', '2020-05-22', 'Mozilla', 1, 1590138370),
(444, '209.17.96.26', '2020-05-22', 'Mozilla', 1, 1590177415),
(445, '209.17.96.154', '2020-05-23', 'Mozilla', 1, 1590199168),
(446, '209.17.96.2', '2020-05-24', 'Mozilla', 1, 1590317032),
(447, '209.17.97.50', '2020-05-26', 'Mozilla', 1, 1590462614),
(448, '36.68.239.9', '2020-05-26', 'Chrome', 1, 1590496999),
(449, '209.17.96.170', '2020-05-26', 'Mozilla', 1, 1590517297),
(450, '36.68.239.9', '2020-05-27', 'Chrome', 1, 1590561795),
(451, '209.17.96.82', '2020-05-27', 'Mozilla', 1, 1590585454),
(452, '209.17.96.26', '2020-05-28', 'Mozilla', 1, 1590625400),
(453, '209.17.96.210', '2020-05-29', 'Mozilla', 1, 1590706199),
(454, '209.17.96.114', '2020-05-30', 'Mozilla', 1, 1590832309),
(455, '209.17.96.58', '2020-05-30', 'Mozilla', 1, 1590836325),
(456, '209.17.96.10', '2020-05-30', 'Mozilla', 1, 1590859443),
(457, '36.77.92.135', '2020-06-01', 'Firefox', 1, 1591020090),
(458, '193.176.86.36', '2020-06-01', 'Chrome', 1, 1591020131);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`artikel_id`);

--
-- Indexes for table `banner_depan`
--
ALTER TABLE `banner_depan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_item`
--
ALTER TABLE `banner_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_group` (`id_group`);

--
-- Indexes for table `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`bidang_id`),
  ADD KEY `galeri_kategori_id` (`galeri_kategori_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download_temp`
--
ALTER TABLE `download_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_masuk`
--
ALTER TABLE `email_masuk`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foto_artikel`
--
ALTER TABLE `foto_artikel`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `foto_artikel_temp`
--
ALTER TABLE `foto_artikel_temp`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `foto_galeri`
--
ALTER TABLE `foto_galeri`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `foto_galeri_temp`
--
ALTER TABLE `foto_galeri_temp`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `foto_user_tmp`
--
ALTER TABLE `foto_user_tmp`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`galeri_id`);

--
-- Indexes for table `group_banner`
--
ALTER TABLE `group_banner`
  ADD PRIMARY KEY (`id_group`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infrastruktur`
--
ALTER TABLE `infrastruktur`
  ADD PRIMARY KEY (`id_infrastruktur`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`jabatan_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`komentar_id`);

--
-- Indexes for table `kontak_masuk`
--
ALTER TABLE `kontak_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu_child`
--
ALTER TABLE `menu_child`
  ADD PRIMARY KEY (`menu_child_id`);

--
-- Indexes for table `news_ticker`
--
ALTER TABLE `news_ticker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `page_like`
--
ALTER TABLE `page_like`
  ADD PRIMARY KEY (`pl_id`);

--
-- Indexes for table `pencarian_artikel`
--
ALTER TABLE `pencarian_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pihak_ketiga`
--
ALTER TABLE `pihak_ketiga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `smtp_email`
--
ALTER TABLE `smtp_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  ADD PRIMARY KEY (`so_id`),
  ADD KEY `jabatan_id` (`jabatan_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `artikel_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `banner_depan`
--
ALTER TABLE `banner_depan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banner_item`
--
ALTER TABLE `banner_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bidang`
--
ALTER TABLE `bidang`
  MODIFY `bidang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7823;

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `download_temp`
--
ALTER TABLE `download_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_masuk`
--
ALTER TABLE `email_masuk`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `foto_artikel`
--
ALTER TABLE `foto_artikel`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `foto_artikel_temp`
--
ALTER TABLE `foto_artikel_temp`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `foto_galeri`
--
ALTER TABLE `foto_galeri`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `foto_galeri_temp`
--
ALTER TABLE `foto_galeri_temp`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `foto_user_tmp`
--
ALTER TABLE `foto_user_tmp`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `galeri_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `group_banner`
--
ALTER TABLE `group_banner`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `jabatan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kontak_masuk`
--
ALTER TABLE `kontak_masuk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_child`
--
ALTER TABLE `menu_child`
  MODIFY `menu_child_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `news_ticker`
--
ALTER TABLE `news_ticker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `page_like`
--
ALTER TABLE `page_like`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pencarian_artikel`
--
ALTER TABLE `pencarian_artikel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pihak_ketiga`
--
ALTER TABLE `pihak_ketiga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  MODIFY `so_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tema`
--
ALTER TABLE `tema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bidang`
--
ALTER TABLE `bidang`
  ADD CONSTRAINT `bidang_ibfk_1` FOREIGN KEY (`galeri_kategori_id`) REFERENCES `kategori_galeri` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bidang_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id_tag`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  ADD CONSTRAINT `struktur_organisasi_ibfk_1` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`jabatan_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

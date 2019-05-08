-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 07:22 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puprmuar_dpu`
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
  `artikel_kategori` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `artikel_dibaca` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
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
(44, 'Bupati Berharap PWRI Bersinergi Dengan Pemkab', '<p><strong>Tim News Room Muara Enim Diskominfo</strong><br>Bupati Muara Enim, Ir. H. Ahmad Yani, MM menghadiri pelantikan Persatuan Wredatama Republik Indonesia (PWRI) Kecamatan Lawang Kidul, Rabu (10/04) di Aula Kecamatan Lawang Kidul.<br>Usai dilantiknya PWRI Lawang Kidul ini, Bupati menyambut baik keberadaan PWRI Lawang Kidul dan orang nomor satu di Bumi Serasan Sekundang ini berharap adanya sinergitas dengan Pemerintah Kabupaten (Pemkab) Muara Enim dalam hal program - program yang digalakan Pemkab Muara Enim, seperti bantuan untuk lansia, santunan kematian, dan program lainnya.<br>Bahkan program Pemkab Muara Enim saat ini, mengurus masyarakat mulai dari lahir sampai mati. Banyak dana APBD Pemkab Muara Enim yang dikembalikan ke masyarakat Muara Enim.<br>Kedepan, Bupati berharap juga eksistensi dan posisi PWRI Lawang Kidul semakin kokoh dan berkarya.<br>\"Jaga terus kesehatan dan terus berkarya, karena seperti orang tua sendiri, saya tidak sanggup memberikan nasehat,\"ujar Bupati.<br>Sementara itu, Ketua PWRI Lawang Kidul, Fajeri Erham, yang langsung dilantik Ketua PWRI Kabupaten Muara Enim, H.Zulkifli HS, SH,mengucapkan terima kasih atas terlaksananya pelantikan ini.<br>Fajeri mengatakan dalam usia pensiun ini sudah kewajiban PWRI Lawang Kidul mendukung Pemkab Muara Enum melalui program yang sudah dicanangkan. \"Usia boleh tua, tapi semangat untuk berkarya akan tetap bergelora,\" tegas Fajeri.</p>', 6, '', '', 'Y', '2019-04-12 01:56:15', 6, '0000-00-00 00:00:00', 'Y', 0, 'bupati-berharap-pwri-bersinergi-dengan-pemkab', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '891111904', 4),
(45, 'Target H-5 Lebaran Sebagian Jalan Rusak Berat di Sumsel Tuntas', '<div class=\"td-post-featured-image\">\n<figure style=\"text-align: center;\">\n<figcaption class=\"wp-caption-text\">Plt Kepala Dinas PUBM-TR Provinsi Sumsel, Dharma Budhy saat diwawancarai awak media, Senin (6/5)</figcaption>\n<figcaption class=\"wp-caption-text\"></figcaption>\n<figcaption class=\"wp-caption-text\"></figcaption>\n<figcaption class=\"wp-caption-text\"></figcaption>\n</figure>\n</div>\n<p><strong>Palembang, Detik Sumsel- </strong>Jalan rusak berat di beberapa ruas jalan Provinsi Sumsel khususnya di daerah OI, OKU, dan OKU Timur akhirnya mulai diperbaiki. Tercatat, ada sebanyak 15 paket pengerjaan peningkatan jalan yang mulai dikerjakan Dinas Pekerjaan Umum Bina Marga dan Tata Ruang (PUBM-TR) Provinsi Sumsel dan ditargetkan H-5 lebaran sudah tuntas.</p>\n<p>“Ada 15 paket pengerjaan paket jalan yang rusak berat kita prioritaskan dengan menggelontorkan dana sebesar Rp364 miliar,” ungkap Plt Kepala Dinas Pekerjaan Umum Bina Marga dan Tata Ruang (PUBM-TR) Provinsi Sumsel, Darma Budhy, Senin (6/5)</p>\n<p>Dijelaskan, adapun 15 paket pengerjaan peningkatan jalan tersebut yakni diantaranya peningkatan jalan SP Kepuh-Kurungan Nyawa, peningkatan jalan Kurungan Nyawa-Gumawang, peningkatan Kurungan Nyawa-Gumawang (DAK), peningkatan jalan Gumawang-Petanggan, pemeliharaan berkala BTS OKI-SP Kepuh, pemeliharaan berkala Kurungan Nyawa-Martapura, peningkatan jalan Batas Kabupaten OI-Lubuk Batang, peningkatan jalan Muara Dua-Kota Batu-Batas Provinsi Lampung.</p>\n<p>Kemudian, peningkatan dan pelebaran jalan Sekayu-Batas Muara Enim, peningkatan jalan Tanjung Raja-SP Tambang Rambang, peningkatan jalan SP Tambang Rambang-Batas OKU, peningkatan jalan SP Sugi Rawas-Batas Lahat, peningkatan jalan Muara Siban-SP Embacang, peningkatan jalan SP Periuk-Tugumulyo-Terawas, peningkatan jalan Terawas-Taba Tinggi-Maur.</p>\n<p>“15 paket jalan ini sudah layak nantinya untuk dilalui sebelum lebaran, memang untuk pengaspalan belum dilakukan sebelum lebaran nanti kemungkinan baru dilakukan setelah lebaran. Intinya, sebelum lebaran bisa layak dilalui saja dan tidak menyebabkan kemacetan arus mudik,” ulasnya. Saat ini, lanjut Darma Budhy progress pengerjaan sudah mencapai 10 persen untuk 15 paket pengerjaan tersebut.(tet)</p>\n<p> </p>\n<p>sumber: <a href=\"https://www.detiksumsel.com/target-h-5-lebaran-sebagian-jalan-rusak-berat-di-sumsel-tuntas/\">https://www.detiksumsel.com/target-h-5-lebaran-sebagian-jalan-rusak-berat-di-sumsel-tuntas/</a></p>', 6, '26,24,22,21,16,6', '', 'Y', '2019-05-08 20:01:52', 6, '2019-05-08 20:04:16', 'Y', 6, 'target-h-5-lebaran-sebagian-jalan-rusak-berat-di-sumsel-tuntas', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '9306081905', 10),
(46, 'Gubernur Herman Deru Jawab Keluhan Netizen Perbaikan Banyak Jalan Rusak di Sumsel', '<p>FOTO Ilustrasi : Lubang besar tertutup genangan air dan jalan retak di Jalan Mayor zen Sungai Selayur Palembang, sering membahayakan pengendara, Minggu (17/2/2019) </p>\n<p><br><br>Artikel ini telah tayang di <a href=\"http://localhost/pubmsumsel/admin/http:\">Tribunsumsel.com</a> dengan judul Gubernur Herman Deru Jawab Keluhan Netizen Perbaikan Banyak Jalan Rusak di Sumsel, <a href=\"http://sumsel.tribunnews.com/2019/05/03/gubernur-herman-deru-jawab-keluhannetizenperbaikan-banyak-jalan-rusak-di-sumsel\">http://sumsel.tribunnews.com/2019/05/03/gubernur-herman-deru-jawab-keluhannetizenperbaikan-banyak-jalan-rusak-di-sumsel</a>.<br>Penulis: Wawan Perdana <br>Editor: Wawan Perdana</p>\n<p><strong>TRIBUNSUMSEL.COM, PALEMBANG-</strong>Kerusakan di sejumlah ruas jalan di Sumsel semakin parah selama musim hujan.</p>\n<p>Warga banyak mengungkapkan keluhan itu di media sosial instagram dan facebook. <br>Bahkan berapa waktu lalu ada yang menggunakan cara unik menjadikan jalan rusak sebagai lokasi foto model.</p>\n<p>Gubernur Sumsel Herman Deru menjawab semua keluhan itu melalui akun instagram terverifikasi @hermanderu67.</p>\n<figure class=\"op-interactive\"><iframe class=\"bor1\" src=\"https://sosmed.tribunnews.com/socmed.php?instagram=https://www.instagram.com/p/Bw_O4qQgOjo/?utm_source=ig_web_copy_link&amp;capck=no\" width=\"500.02083400000004\" height=\"741.0208339999999\" frameborder=\"0\" scrolling=\"no\"></iframe></figure>\n<div id=\"ompk-BsOaz6OSEcOIB4exB86NF8e2B82YA8iLDs9\" class=\"\" data-google-query-id=\"COy5t-X_i-ICFa5jFQgdbb4PmQ\"> </div>\n<p><em>\"Kepada yg terhormat para netizen, menanggapi banyaknya pertanyaan tentang perbaikan jalan kapan akan di perbaiki khususnya jalan yang berada dibawah wewenang pemerintahan provinsi.\"</em></p>\n<p><em>\"Perlu saya sampaikan bahwa ruas-ruas jalan provinsi se-Sumatra Selatan sudah di anggarkan pada tahun ini, sebagian ruas sudah di mulai perbaikan nya sebagian lagi masih dalam proses tahapan lelang.\"</em></p>\n<p><em>\"Untuk itu saya juga menginformasikan bahwa jalan adalah anggaran negara yang memiliki aturan, tidak bisa semena-mena dibelanjakan begitu saja. Harus melalui proses lelang.\"</em></p>\n<p><em>\"Pemerintah provinsi dalam menggunakan anggaran tidak dapat semena-mena, namun harus dengan cara menggikuti tata kelola keuangan yg benar dan akuntabel. \"</em></p>\n<p><em>\"Mohon doa semoga dalam beberapa minggu lagi untuk ruas-ruas jalan yang berada dibawah tanggung jawab pemerintahan provinsi yang mengalami kerusakan sudah dapat di mulai perbaikannya, demikian untuk dapat di maklumi.\"</em></p>\n<p><strong>Lelang 15 Proyek</strong> </p>\n<p>Dinas Pekerjaan Umum Bina Marga dan Tata Ruang (PUBM-TR) Provinsi Sumatera Selatan telah melelang 15 pekerjaan proyek perbaikan jalan.</p>\n<p>Nilai dari keseluruhan proyek sebesar Rp 300 Miliar.</p>\n<p>Plt Kepala Dinas PUBM-TR Provinsi Sumsel Darma Budhy mengatakan, dari 15 proyek perbaikan jalan itu, beberapa sudah masuk tanda tangan kontrak.</p>\n<p>\"Targetnya dalam sebulan ke depan, seluruh kegiatan sudah masuk proses kontrak. Sehingga, pemenang lelang bisa segera mengerjakan proses perbaikan jalan,\" ujarnya, Kamis (18/4/2019).</p>\n<div id=\"div-Inside-MediumRectangle\"> </div>\n<p>Lebih lanjut ia mengatakan, targetnya sekitar 15 Mei, semuanya sudah kontrak. <br>Tapi, dari tanggal 10 April lalu, sudah ada beberapa kegiatan yang sudah jalan.</p>\n<p>Jalan yang diperbaiki mayoritas berada di Kabupaten OKU Timur. Mulai dari Simpang Penyandingan, Simpang Kebo-Kurungan Nyawa, Gumawang-Kurungan Nyawa-Petanggan.</p>\n<p>\"Ada satu juga di Kabupaten Muba sampai dengan Batas Kabupaten Muara Enim,\". katanya.</p>\n<p>Perbaikan jalan merupakan salah satu program yang menjadi prioritas Gubernur Sumsel Herman Deru.</p>\n<p>Sehingga, pihaknya berusaha untuk mempercepat proses kegiatan.</p>\n<p>\"Tidak hanya itu, percepatan perbaikan jalan juga sebagai persiapan menghadapi arus mudik Lebaran. Lebih cepat diperbaiki, lebih bagus. Sehingga Lebaran nanti sudah bisa dilintasi dengan nyaman,\" ujarnya.</p>\n<p><br>sumber: <a href=\"http://sumsel.tribunnews.com/2019/05/03/gubernur-herman-deru-jawab-keluhannetizenperbaikan-banyak-jalan-rusak-di-sumsel\">http://sumsel.tribunnews.com/2019/05/03/gubernur-herman-deru-jawab-keluhannetizenperbaikan-banyak-jalan-rusak-di-sumsel</a></p>', 6, '24,16', '', 'Y', '2019-05-08 20:09:29', 6, '0000-00-00 00:00:00', 'Y', 0, 'gubernur-herman-deru-jawab-keluhan-netizen-perbaikan-banyak-jalan-rusak-di-sumsel', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '16400081905', 0),
(47, 'Kelola Kedisplinan Pegawai, Sekda Sumsel Lanjutkan Sidak ke OPD', '<p><strong>Palembang, sumselprov.go.id</strong> -- Sekda Prov Sumsel Nasrun Umar melanjutkan inspeksi mendadak (sidak) kedisplinan pegawai di hari kedua Ramadhan. Di hari kedua ini Dinas PU dan Dinas Perumahan dan Pemukiman menjadi sasaran, Selasa (7/5) pagi.</p>\n<p>OPD yang pertama kali disisir rombongan Sekda, BKD dan Inspektorat dan Kasat Pol PP ini adalah Dinas Perumahan dan Pemukiman Provinsi Sumsel. Sambil menunggu daftar absensi dikumpulkan, Sekda melakukan sosialisasi kepada ASN. </p>\n<p>Sesuai edaran Gubernur jelasnya sudah dipaparkan bahwa jam kerja ASN saat bulan puasa mengalami sedikit perubahan dibandingkan hari biasa. Jadwal tersebut yakni Hari Senin-Kamis semua pegawai wajib masuk pukul 08.00 wib-15.00 wib (waktu istirahat pukul 12.00 wib-13.00 wib). Sedangkan untuk hari Jumat waktu kerja mulai pukul 08.00 wib-15.30 wib ( waktu istirahat 11.30 wib- 12.30 wib).</p>\n<p>Tak hanya membahas soal jam kerja ASN, kesempatan itu juga dimanfaatkan oleh Sekda untuk mengecek kelengkapan seragam ASN. Menurutnya kelengkapan ini penting sebagai bentuk intergritas dan identitas ASN.</p>\n<p>\"Kemarin masih saya toleransi. Tapi hari ini tidak. Saya tidak akan toleransi lagi. Siapa yang tidak masuk tanpa alasan akan kita sanksi. Ini sesuai arahan Gubernur,\" jelasnya.</p>\n<p>Dikatakannya, disiplin pegawai telah diatur dalam PP 53. Dan sesuai arahan gubernur dirinya, kata Sekda, sebagai pejabat yang berwenang harus mengelola kedisplinan para ASN.</p>\n<p>\"Secara tegas dan konsekuen ini berlaku di semua OPD yang saya kunjungi. Ini bukan tidak berdasar karena di pusat pun demikian,\" tandasnya seperti dikutif dari GlobalPlanet.News</p>\n<p>Dari hasil dua hari sidak yang dilakukannya diakui Nasrun masih ada beberapa pegawai yang ditemukan datang tidak sesuai jam kerja. Namun diakuinya pada sidak hari kedua di Dinas Perkim dan Dinas PU Bina Marga tingkat kehadiran pegawai sudah sangat bagus.</p>\n<p>\"Masih ada yang seperti itu (belum menaati aturan) tapi kalau melihat yang dua (Dinas Perkim dan PU) ini bagus absensinya. Yang belum itu mungkin  karena ketidaktahuan mereka. Nah ini perlu saya tekankan sekali lagi pada BKD. Saya ingin surat edaran itu betul-betul diketahui ASN yang lain seluruh sampai level terendah sekalipun,\" jelasnya.</p>\n<p>Jika mereka tahu ada aturan hari kerja dan pegawai masih saja tidak mentaati aturan, menurut Sekda dirinya tak segan menerapkan sanksi yang berlaku.</p>\n<p>Untuk diketahui pada sidak hari kedua bulan Ramadan 1440 Hijriah itu Sekda menyisir sejumlah OPD yang berada di sekitar lingkungan Setda Provinsi Sumsel. Dinas pertama yang disambangi rombongan ini adalah Dinas PU Perumahan dan Pemukiman (Perkim), kemudian berlanjut ke Dinas PU Bina Marga, lalu ke Dinas Sosial, Disdukcapil, Badan Kesbangpol hingga Dinas Perhubungan Provinsi Sumsel.</p>\n<p>sumber: <a href=\"http://www.sumselprov.go.id/mobile/index.php?module=newsdetail&amp;id=5641\">http://www.sumselprov.go.id/mobile/index.php?module=newsdetail&amp;id=5641</a></p>', 6, '24,6', '', 'Y', '2019-05-08 20:10:58', 6, '2019-05-08 20:11:07', 'Y', 6, 'kelola-kedisplinan-pegawai-sekda-sumsel-lanjutkan-sidak-ke-opd', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '5678081905', 0),
(48, 'Jembatan Musi VI Ditarget Rampung Tahun 2020', '<p>KBRN, Palembang : Pemerintah Provinsi Sumatera Selatan melalui Dinas PU Bina Marga dan Tata Ruang terus berupaya melanjutkan penyelesaian pembangunan jembatan Musi VI yang menghubungkan  kawasan 32 Ilir dan kawasan Seberang Ulu 1 Palembang.</p>\n<p>Keberadaan jembatan ini nantinya diyakini akan mampu mengurangi beban lalu lintas angkutan di jembatan Ampera. Disamping dapat  mengurai kemacetan lalu lintas serta penumpukan kendaraan di sejumlah titik di kota Palembang.</p>\n<p>Gubernur Sumsel H. Herman Deru saat meninjau pembangunan jembatan Musi VI dan penyerahan sertifikat tanah program Pendaftaran Sistematis Lengkap menyebutkan proses pengerjaan pembangunan jembatan Musi VI  saat ini masih berjalan dan ditargetkan akan rampung tahun 2020 mendatang.</p>\n<p>\"Kita targetkan jembatan musi  enam ini bisa dilalui untuk kendaraan. Begitu juga dengan  taman dan fasilitas umum disekitarnya. Pembebasan lahannya secepatnya kita rampungkan,\" tegas Herman Deru.</p>\n<p>Lebih lanjut, Herman Deru menambahkan penyelesaian pembangunan jembatan Musi VI adalah bentuk tanggung jawab Pemerintah Provinsi kepada masyarakat. Untuk itu, mantan Bupati Oku Timur dua periode tersebut mengharapkan dukungan dan kerjasama dari semua pihak yaitu terutama Pemerintah kota Palembang berikut seluruh OPD dan masyarakatnya.</p>\n<p>\"Selesainya pembangunan jembatan Musi VI ini membutuhkan dukungan dari semua pihak. Bersama- sama kita selesaikan ini, baik dibagian seberang Ilir maupun di seberang Ulu,\" tambahnya.</p>\n<p>Terkait pembebasan lahan, Herman Deru memastikan  untuk di wilayah seberang Ulu sudah tidak ada kendala lagi. Sedangkan pembebasan bidang tanah yang masih belum terlaksana, Gubernur mengharapkan dukungan dari para tokoh setempat.  Mengingat pembangunan jembatan Musi VI tidak hanya menekankan keindahan dan fisik jembatannya saja, melainkan juga keindahan di wilayah sekitar jembatan, baik di Ilir maupun di bagian  Ulu.</p>\n<p>\"Akses menuju jembatan musi enam ini  akan ditingkatkan seperti ketersediaan fasilitas umum. Hingga nantinya jembatan ini  dapat menjadi obyek wisata baru bagi masyarakat,\" tambahnya.</p>\n<p>Selain meninjau kelanjutan pembangunan jembatan Musi VI, dikesempatan yang sama  Gubernur H. Herman Deru juga secara simbolis menyerahkan sertifikat tanah program PTSL kepada warga seberang Ulu. Dalam pembuatan sertifikat tanah Herman Deru menjamin tidak ada pungutan.</p>\n<p>Di lain pihak, Plt Kepala Dinas PU Bina Marga dan Tata Ruang Sumsel Darma Budhi mengatakan kontrak pembangunan jembatan Musi VI dimulai pertama kali pada tahun 2015 menggunakan dana APBD provinsi Sumsel.</p>\n<p>Tahap pertama pembangunan jembatan Musi VI tahun kontrak 2015, dengan jenis kontrak tahun jamak dengan masa pelaksanaan 756 hari kerja, nilai kontrak Rp. 344. 320.772. 000, 00.</p>\n<p>Kemudian untuk pembangunan tahap kedua juga bersumber dari APBD Provinsi Sumsel, tahun anggaran 2018, jenis kontrak tahun jamak, nilai kontrak Rp.219. 677. 000.000, 00 dengan masa pelaksanaan 360 hari kerja, dan masa pemeliharaan 360 hari kerja dengan kontraktor pelaksana PT Nindya Karya.</p>\n<p>Sementara itu, untuk realisasi dan sisa kebutuhan anggaran proyek jembatan Musi VI, Darma Budhi menjelaskan , kontrak tahap pertama nilai kontrak awal sebesar Rp.344. 320. 772. 000, 00. dan nilai final amandemen Rp. 344. 320. 772. 000, 00 ( bobot terhadap keseluruhan 60, 4%). Kemudian untuk tahap kedua, nilai kontrak awal Rp. 219. 677. 000. 000, 00 dan nilai final amandemen Rp. 135. 315. 850.334, 10 ( bobot terhadap keseluruhan 24%).</p>\n<p>\"Dengan demikian total nilai untuk tahap pertama dan kedua adalah Rp. 469.636.622. 344, - (84, 4%).  Jumlah dana yang dibutuhkan untuk penyelesaian pembangunan jembatan Musi VI senilai Rp. 87 milyar\", pungkasnya.</p>\n<p> </p>\n<p>sumber: <a href=\"http://rri.co.id/palembang/post/berita/662235/daerah/jembatan_musi_vi_ditarget_rampung_tahun_2020.html\">http://rri.co.id/palembang/post/berita/662235/daerah/jembatan_musi_vi_ditarget_rampung_tahun_2020.html</a></p>', 6, '24,17', '', 'Y', '2019-05-08 20:12:28', 6, '2019-05-08 20:12:44', 'Y', 6, 'jembatan-musi-vi-ditarget-rampung-tahun-2020', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '2137081905', 0),
(49, 'Tahun 2020 Jembatan Musi VI Rampung ', '<p><strong>Divianews.com | Palembang</strong> — Pemerintah terus berupaya agara penyelesaian pembangunan jembatan Musi VI yang menghubungkan kawasan 32 Ilir dan kawasan Seberang Ulu 1 Palembang, bisa terealisasi secepatnya. Sebab jembatan tersebut diharapkan mampu mengurangi beban lalu lintas angkutan di jembatan yang ada di Kota Palembang,</p>\n<p>Dikonfirmasi ulang mengenai hal tersebut diatas,  Kepala Dinas PU Bina Marga dan Tata Ruang Sumsel Darma Budhi kembali menjelaskan secara rinci terkait tahapan kontrak pembangunan jembatan Musi VI dimulai pertama kali pada tahun 2015 menggunakan dana APBD provinsi Sumsel.</p>\n<p>Tahap pertama pembangunan jembatan Musi VI tahun kontrak 2015, dengan jenis kontrak tahun jamak dengan masa pelaksanaan 756 hari kerja, nilai kontrak Rp. 344. 320.772. 000, 00.</p>\n<p>Kemudian untuk pembangunan tahap kedua juga bersumber dari APBD Provinsi Sumsel, tahun anggaran 2018, jenis kontrak tahun jamak, nilai kontrak Rp.219. 677. 000.000, 00 dengan masa pelaksanaan 360 hari kerja, dan masa pemeliharaan 360 hari kerja dengan kontraktor pelaksana PT Nindya Karya.</p>\n<p>Sementara itu, untuk realisasi dan sisa kebutuhan anggaran proyek jembatan Musi VI, Darma Budhi menjelaskan , kontrak tahap pertama nilai kontrak awal sebesar Rp.344. 320. 772. 000, 00. dan nilai final amandemen Rp. 344. 320. 772. 000, 00 ( bobot terhadap keseluruhan 60, 4%). Kemudian untuk tahap kedua, nilai kontrak awal Rp. 219. 677. 000. 000, 00 dan nilai final amandemen Rp. 135. 315. 850.334, 10 ( bobot terhadap keseluruhan 24%).</p>\n<p>“Dengan demikian total nilai untuk tahap pertama dan kedua adalah Rp. 469.636.622. 344, – (84, 4%). Jumlah dana yang dibutuhkan untuk penyelesaian pembangunan jembatan Musi VI senilai Rp. 87 milyar”, jelasnya, selasa (16/04/2019).</p>\n<p>Untuk itu diharapakan secepatnya jembatan yang tinggal beberapa persen tersebut, bisa rampung pada tahun 2020 mendatang.</p>\n<p> </p>\n<p>Sebelumnya Gubernur Sumsel Herman Deru juga telah memantau langsung progres jembatan dan meminta agar jembatan tersebut selesai secepatnya untuk mengurai kemacetan yang ada saat ini. (adi)</p>\n<p> </p>\n<p>sumber:<a href=\"http://divianews.com/2019/04/16/tahun-2020-jembatan-musi-vi-rampung/\">http://divianews.com/2019/04/16/tahun-2020-jembatan-musi-vi-rampung/</a></p>', 6, '17,24', '', 'Y', '2019-05-08 20:14:30', 6, '0000-00-00 00:00:00', 'Y', 0, 'tahun-2020-jembatan-musi-vi-rampung', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '4373081905', 0),
(50, 'Gurbernur Sumsel Pastikan Proyek Musi VI Rampung Tahun Depan', '<p>PALEMBANG-KRSumsel.com-.Pemerintah Provinsi Sumatera Selatan melalui Dinas PU Bina Marga dan Tata Ruang terus berupaya melanjutkan penyelesain pembangunan Jembatan Musi VI yang menghubungkan kawasan 32 Ilir dan kawasan Seberang Ulu I Palembang.<br><br><br>Keberadaan jembatan ini nantinya diyakini akan mampu mengurangi beban lalu lintas angkutan di jembatan ampera. Disamping dapat  mengurai kemacetan lalu lintas serta penumpukan kendaraan di sejumlah titik di kota Palembang.<br><br><br>Gubernur Sumsel H. Herman Deru saat meninjau pembangunan jembatan Musi VI dan penyerahan sertifikat tanah program Pendaftaran Sistematis Lengkap (PTSL) di Palembang, Sabtu (13/4) menyebutkan proses pengerjaan pembangunan jembatan Musi VI  saat ini masih berjalan dan ditargetkan akan rampung tahun 2020 mendatang.<br><br>\"Kita targetkan jembatan Musi  VI ini bisa dilalui untuk kendaraan. Begitu juga dengan  taman dan fasilitas umum disekitarnya. Pembebasan lahannya secepatnya kita rampungkan,\" tegas Herman Deru.<br><br>Lebih lanjut, Herman Deru menambahkan penyelesaian pembangunan jembatan Musi VI adalah bentuk tanggung jawab Pemerintah Provinsi kepada masyarakat.<br><br>Untuk itu, mantan Bupati Oku Timur dua periode tersebut mengharapkan dukungan dan kerjasama dari semua pihak yaitu terutama Pemerintah kota Palembang berikut seluruh OPD dan masyarakatnya.<br><br>\"Selesainya pembangunan jembatan Musi VI ini membutuhkan dukungan dari semua pihak. Bersama- sama kita selesaikan ini, baik dibagian seberang Ilir maupun di seberang Ulu,\" tambahnya.<br><br>Terkait pembebasan lahan, Herman Deru memastikan  untuk di wilayah seberang Ulu sudah tidak ada kendala lagi. Sedangkan pembebasan bidang tanah yang masih belum terlaksana, Gubernur mengharapkan dukungan dari para tokoh setempat.  Mengingat pembangunan jembatan Musi VI tidak hanya menekankan keindahan dan fisik jembatannya saja, melainkan juga keindahan di wilayah sekitar jembatan, baik di Ilir maupun di bagian  Ulu.<br><br>\"Akses menuju jembatan musi enam ini  akan ditingkatkan seperti ketersediaan fasilitas umum. Hingga nantinya jembatan ini  dapat menjadi obyek wisata baru bagi masyarakat,\" tambahnya.<br><br>Selain meninjau kelanjutan pembangunan jembatan Musi VI, dikesempatan yang sama  Gubernur H. Herman Deru juga secara simbolis menyerahkan sertifikat tanah program PTSL kepada warga seberang Ulu. Dalam pembuatan sertifikat tanah Herman Deru menjamin tidak ada pungutan.<br><br>Sementara Plt Kepala Dinas PU Bina Marga dan Tata Ruang Sumsel Darma Budhi mengatakan kontrak pembangunan jembatan Musi VI dimulai pertama kali pada tahun 2015 menggunakan dana APBD Provinsi Sumsel.<br><br>Tahap pertama pembangunan jembatan Musi VI tahun kontrak 2015, dengan jenis kontrak tahun jamak dengan masa pelaksanaan 756 hari kerja, nilai kontrak Rp. 344. 320.772. 000, 00.<br><br>Kemudian untuk pembangunan tahap kedua juga bersumber dari APBD Provinsi Sumsel, tahun anggaran 2018, jenis kontrak tahun jamak, nilai kontrak Rp.219. 677. 000.000, 00 dengan masa pelaksanaan 360 hari kerja, dan masa pemeliharaan 360 hari kerja dengan kontraktor pelaksana PT Nindya Karya.<br><br>Sementara itu, untuk realisasi dan sisa kebutuhan anggaran proyek jembatan Musi VI, Darma Budhi menjelaskan , kontrak tahap pertama nilai kontrak awal sebesar Rp.344. 320. 772. 000, 00. dan nilai final amandemen Rp. 344. 320. 772. 000, 00 (bobot terhadap keseluruhan 60, 4%). Kemudian untuk tahap kedua, nilai kontrak awal Rp. 219. 677. 000. 000, 00 dan nilai final amandemen Rp. 135. 315. 850.334, 10 ( bobot terhadap keseluruhan 24%).</p>\n<p><br>\"Dengan demikian total nilai untuk tahap pertama dan kedua adalah Rp. 469.636.622. 344, - (84, 4%).  Jumlah dana yang dibutuhkan untuk penyelesaian pembangunan jembatan Musi VI senilai Rp. 87 milyar\", pungkasnya.</p>\n<p> </p>\n<p>sumber: <a href=\"http://www.krsumsel.com/2019/04/gubernur-sumsel-pastikan-proyek-musi-vi.html\">http://www.krsumsel.com/2019/04/gubernur-sumsel-pastikan-proyek-musi-vi.html</a></p>', 6, '24,17', '', 'Y', '2019-05-08 20:15:19', 6, '2019-05-08 20:18:52', 'Y', 6, 'gurbernur-sumsel-pastikan-proyek-musi-vi-rampung-tahun-depan', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '81464081905', 5);

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
(10, 'http://localhost/pubmsumsel/an-component/media/upload-gambar-pendukung/pupr6.png', '', 'Indahnya Ramadhan', '', ''),
(11, 'http://localhost/pubmsumsel/an-component/media/upload-gambar-pendukung/pupr7.png', '', 'Indahnya Ramadhan', '', '');

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
(3, 1, 'http://localhost/pubmsumsel/an-component/media/upload-gambar-pendukung/milky-way-1023340_1280.jpg', 'dddddd', 'ddd', 'ddd', 'dddddddddd', 'dddd'),
(4, 1, 'http://localhost/pubmsumsel/an-component/media/upload-gambar-pendukung/sparkler-677774_1280.jpg', 'tes', 'tes', 'asd', 'dsd', 'sa');

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
(194, 0, 15, 26, 'UPTD PJ3 Kabupaten Ogan Komering Ulu', '', '', 'http://localhost/pubmsumsel/bidang/194-UPTD-PJ3-Kabupaten-Ogan-Komering', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(1691, 0, 14, 25, 'UPTD PJ3 Kabupaten Musi Banyuasin', '', '', 'http://localhost/pubmsumsel/bidang/1691-UPTD-PJ3-Kabupaten-Musi', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(1796, 0, 13, 24, 'UPTD PJ3 Kota Palembang', '', '', 'http://localhost/pubmsumsel/bidang/1796-UPTD-PJ3-Kota', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2094, 0, 12, 23, 'UPTD PJ3 Kabupaten Muara Enim', '', '', 'http://localhost/pubmsumsel/bidang/2094-UPTD-PJ3-Kabupaten-Muara', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2586, 0, 11, 22, 'UPTD PJ3 Kabupaten Ogan Komering Ilir', '', '', 'http://localhost/pubmsumsel/bidang/2586-UPTD-PJ3-Kabupaten-Ogan-Komering', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2750, 0, 9, 15, 'Bidang Pengembangan Jaringan Jalan', '', '', 'http://localhost/pubmsumsel/bidang/2750-Bidang-Pengembangan-Jaringan', '', 'uploads/bidang/struktur 5 - bid air minum-01.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2783, 0, 10, 14, 'Sekretariat', '', '', 'http://localhost/pubmsumsel/bidang/2783-', '', 'uploads/bidang/struktur 01 - sekretariat.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2941, 0, 3, 21, 'UPTD Jalan dan Jembatan Kab Oku Timur', '', '', 'http://localhost/pubmsumsel/bidang/2941-UPTD-Jalan-dan-Jembatan-Kab-Oku', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3187, 0, 4, 20, 'UPTD PJ3 Kabupaten Lahat', '', '', 'http://localhost/pubmsumsel/bidang/3187-UPTD-PJ3-Kabupaten', '', 'uploads/bidang/struktur 4 - tata bangunan.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3899, 0, 5, 19, 'Bidang Penataan Ruang', '', '', 'http://localhost/pubmsumsel/bidang/3899-Bidang-Penataan', '', 'uploads/bidang/struktur 02 - bid pemb jalan jembatan.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4454, 0, 6, 18, 'Bidang Pengujian Peralatan dan BMD', '', '', 'http://localhost/pubmsumsel/bidang/4454-Bidang-Pengujian-Peralatan-dan', '', 'uploads/bidang/struktur 3 - preservasi jalan jemb.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5041, 0, 17, 28, 'UPTD Laboratorium Bahan Kontruksi', '', '', 'http://localhost/pubmsumsel/bidang/5041-UPTD-Laboratorium-Bahan', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6358, 0, 16, 27, 'UPTD PJ3 Kabupaten Musi Rawas', '', '', 'http://localhost/pubmsumsel/bidang/6358-UPTD-PJ3-Kabupaten-Musi', '', '', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7549, 0, 7, 17, 'Bidang Jembatan', '', '', 'http://localhost/pubmsumsel/bidang/7549-Bidang', '', 'uploads/bidang/struktur 6 - sumber daya air-01.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7822, 0, 8, 16, 'Bidang Jalan', '', '', 'http://localhost/pubmsumsel/bidang/7822-Bidang', '', 'uploads/bidang/struktur 7 - bid tata ruang-01.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

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
(1, 'Dinas PU PR', 'http://localhost/pubmsumsel/an-component/media/upload-gambar-pendukung/logo_dinaspupr.png', 'Kementerian Pekerjaan Umum dan Perumahan Rakyat Republik Indonesia adalah kementerian dalam Pemerintah Indonesia yang membidangi urusan pekerjaan umum dan perumahan rakyat', '', '');

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
(15, 'Question 2', '<p>Morbi non accumsan odio. Nulla tortor tortor, semper a justo quis, porta consequat mi. Nullam quis ante at felis dapibus hendrerit et non lectus. Pellentesque a aliquet justo. Etiam mauris urna, scelerisque vel ex nec, ultrices accumsan libero. Etiam auctor ipsum sit amet porta dignissim. Etiam enim lectus, tempus quis placerat maximus, posuere ut arcu. Nulla felis leo, vestibulum non eleifend congue, congue vel turpis. Nulla at enim consectetur, egestas purus ac, eleifend sem. Aenean malesuada congue venenatis. Sed nec viverra turpis, eget pharetra augue. Cras rutrum quam vitae ipsum interdum, eu elementum nisi consectetur.</p>\n<p>Phasellus in diam imperdiet, finibus tortor nec, ullamcorper est. Nam commodo felis at quam venenatis, eu dictum felis feugiat. Aliquam id orci dolor. In luctus mi vitae orci suscipit, vitae dignissim enim porttitor. Pellentesque lectus odio, mollis ac aliquam in, dapibus eu velit. Nullam mauris ligula, dictum non elit eleifend, venenatis dignissim purus. Cras maximus porttitor dui elementum auctor. Pellentesque accumsan metus vitae egestas vehicula.</p>\n<p><img src=\"http://localhost/dinaspu/an-component/media/upload-gambar-pendukung/man-489744_1280.jpg\" alt=\"man-489744_1280\"></p>\n<p>Mauris porta quis elit quis tincidunt. Proin at aliquet augue, eu auctor augue. Vivamus consequat risus quis dolor iaculis scelerisque. Sed eu posuere turpis, a tincidunt nunc. Maecenas sit amet metus eget purus ultrices porta. Sed eleifend, eros sit amet semper pulvinar, est quam sollicitudin velit, eu mollis felis enim vel enim. Proin tincidunt ut diam ac faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus ac pharetra arcu. Morbi facilisis, quam rhoncus laoreet egestas, neque urna euismod purus, sed rutrum mi lacus sed eros. Duis ut egestas turpis. Nullam sed nisi maximus, eleifend libero eu, ultricies mauris. Duis accumsan tincidunt lectus non gravida.</p>', 'question-2', '2018-07-13 07:38:55'),
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
(64, 50, 'IMG-20190416-WA0070.jpg', 'Y', '');

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
(95, 21, '19.jpeg', '', '');

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
  `id_user` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
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
  `kategori_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
(21, 18, 'Pembangunan Jembatan Musi 6', '', '', 'pembangunan-jembatan-musi-6', '', '', '', '', '2019-05-08 23:02:06', '0000-00-00 00:00:00', 6, 0, 'publish');

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
  `width_thumb_artikel` int(10) UNSIGNED NOT NULL DEFAULT '300',
  `width_thumb_galeri` int(10) UNSIGNED NOT NULL DEFAULT '300',
  `width_thumb_produk` int(10) UNSIGNED NOT NULL DEFAULT '500',
  `prefix_suffix_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix_suffix_sebagai` enum('prefix','suffix','none') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'prefix',
  `default_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_populer_artikel` int(11) NOT NULL DEFAULT '10',
  `max_tampil_artikel` int(11) NOT NULL DEFAULT '10',
  `max_headline_artikel` int(11) NOT NULL DEFAULT '10',
  `max_headline_galeri` int(11) NOT NULL DEFAULT '10',
  `max_tampil_galeri` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `max_headline_produk` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `max_tampil_produk` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `sleep_mode` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `sleep_sampai` datetime NOT NULL,
  `max_tampil_agenda` int(11) NOT NULL DEFAULT '10',
  `max_tampil_download` int(11) NOT NULL DEFAULT '10',
  `max_tampil_agenda_umum` int(11) NOT NULL DEFAULT '3',
  `max_tampil_download_umum` int(11) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `nama`, `deskripsi`, `disclaimer`, `webprivacy`, `termcondition`, `meta_keyword`, `meta_deskripsi`, `default_banner`, `featured_image`, `thumbnail_media`, `favicon`, `develope_mode`, `logo`, `custom_css`, `width_thumb_artikel`, `width_thumb_galeri`, `width_thumb_produk`, `prefix_suffix_title`, `prefix_suffix_sebagai`, `default_title`, `max_populer_artikel`, `max_tampil_artikel`, `max_headline_artikel`, `max_headline_galeri`, `max_tampil_galeri`, `max_headline_produk`, `max_tampil_produk`, `sleep_mode`, `sleep_sampai`, `max_tampil_agenda`, `max_tampil_download`, `max_tampil_agenda_umum`, `max_tampil_download_umum`) VALUES
(1, 'Dinas Pekerjaaan Umum Muara Enim', '', '', '', '', 'PUPR MUARA ENIM', 'Dinas pekerjaan umum', '', 'http://localhost/dinaspu/an-component/media/upload-gambar-pendukung/footpath-691021_1280.jpg', '', 'http://localhost/dinaspu/an-component/media/upload-gambar-pendukung/close.png', 'N', '', '/*Masukan code CSS anda disini\nGunakan flag !important*/\n', 300, 300, 500, '| Sandro.id', 'suffix', '', 10, 10, 10, 10, 1, 10, 10, 'N', '2016-04-14 02:13:08', 10, 10, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `infrastruktur`
--

CREATE TABLE `infrastruktur` (
  `id_infrastruktur` varchar(5) NOT NULL,
  `nama_kegiatan` varchar(100) NOT NULL,
  `nama_pelaksana` varchar(100) NOT NULL,
  `anggaran` varchar(50) NOT NULL,
  `nilai_kontrak` varchar(50) NOT NULL,
  `progres` varchar(50) NOT NULL,
  `ppk` varchar(50) NOT NULL,
  `tahun` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infrastruktur`
--

INSERT INTO `infrastruktur` (`id_infrastruktur`, `nama_kegiatan`, `nama_pelaksana`, `anggaran`, `nilai_kontrak`, `progres`, `ppk`, `tahun`) VALUES
('42132', 'Kegiatan Peningkatan Jalan di Wilayah Muara Enim', 'tas', '11290033000', '315058900', '0', 'Nusa Suryadi ST. M.Eng', 2018),
('44584', 'Kegiatan Peningkatan Jalan di Wilayah IX', 'tes', '63783570000', '53367450', '0', 'Yan Suheri, SST', 2019),
('58542', 'Kegiatan Peningkatan Jalan di Wilayah Muara Enim', 'tes', '11290033000', '53367450', '0', 'Nusa Suryadi ST. M.Eng', 2017),
('86973', 'k1', 'aaa', '222', '333', '2', '222', 2018),
('94329', 'Kegiatan Pembangunan Jembatan di Kabupaten Merangin', 'nama_pelaksana', '57830355000', '52904250', '0', 'Edy Damhuri, MT', 2017);

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
(1, 'kepala_dinas', 'Plt. Kepala Dinas ', 0, 'kepala'),
(2, 'sekretaris', 'Sekretaris', 1, 'kepala'),
(3, 'kasubag_udk', 'Ksb. Umum dan Kepegawaian', 1, 'bagian'),
(4, 'kasubag_ep', 'Ksb. Perencanaan, Evaluasi dan Pelaporan', 1, 'bagian'),
(5, 'kasubag_keu', 'Ksb. Keuangan', 1, 'bagian'),
(6, 'kbpjj', 'Kepala Bidang Pengembangan Jar. Jalan', 2, 'kepala'),
(7, 'kbjal', 'Kepala Bidang Jalan', 3, 'kepala'),
(8, 'kbjem', 'Kepala Bidang Jembatan', 4, 'kepala'),
(9, 'kbprdbmd', 'Kepala Bidang Pengujian, Peralatan dan BMD', 5, 'kepala'),
(10, 'pkbpr', 'Plt. Kepala Bidang  Penataan Ruang', 6, 'kepala'),
(11, 'kspt', 'Kepala Seksi Perencanaan Teknik', 2, 'bagian'),
(12, 'ksptdpjalw', 'Kepala Seksi Pembangunan dan Presevarsi Jalan Wilayah I', 3, 'bagian'),
(13, 'pkspdpjem', 'Plh. Kepala Seksi  Pembangunan dan Preservasi Jembatan Wilayah I', 4, 'bagian'),
(14, 'kspdp', 'Kepala Seksi Peralatan dan Perbekalan', 5, 'bagian'),
(15, 'ksptr', 'Kepala Seksi Perencanaan Tata Ruang', 6, 'bagian'),
(16, 'ksadddp', 'Kepala Seksi Analisa Data, Dokumen, dan Pengembangan Sistem', 2, 'bagian'),
(17, 'kspdpjalw', 'Kepala Seksi Pembangunan dan Preservasi Jalan Wilayah II', 3, 'bagian'),
(18, 'kspdpjemw', 'Kepala Seksi Pembangunan dan Preservasi Jembatan Wilayah II', 4, 'bagian'),
(19, 'kspjdj', 'Kepala Seksi Pengujian Jalan dan Jembatan', 5, 'bagian'),
(20, 'kspdpp', 'Kepala Seksi Pemanfaatan dan Pengadilan Pemanfaatan Tata Ruang', 6, 'bagian'),
(21, 'pksljpde', 'Plh. Kepala Seksi Leger Jalan, Pemantauan dan Evaluasi Teknis', 2, 'bagian'),
(22, 'pkspdej', 'Plh. Kepala Seksi Pengawasan dan Evaluasi Jalan', 3, 'bagian'),
(23, 'kspdej', 'Kepala Seksi Pengawasan dan Evaluasi Jembatan', 4, 'bagian'),
(24, 'kspdpbmd', 'Kepala Seksi Penatausahaan dan Pengamanan BMD', 5, 'bagian'),
(25, 'ksddi', 'Kepala Seksi Data dan Informasi', 6, 'bagian'),
(26, 'kupklah', 'Kepala UPTD PJ3 Kabupaten Lahat', 7, 'kepala'),
(27, 'kupkoku', 'Kepala UPTD PJ3 Kabupaten Ogan Komering Ulu', 8, 'kepala'),
(28, 'kpukmb', 'Kepala UPTD PJ3 Kabupaten Musi Banyuasin', 9, 'kepala'),
(29, 'pkupkp', 'Plh. Kepala UPTD PJ3 Kota Palembang', 10, 'kepala'),
(30, 'kupkoki', 'Kepala UPTD PJ3 Kabupaten Ogan Komering Ilir', 11, 'kepala'),
(31, 'kupkmr', 'Kepala UPTD PJ3 Kabupaten Musi Rawas', 12, 'kepala'),
(32, 'kupkme', 'Kepala UPTD PJ3 Kabupaten Muara Enim', 13, 'kepala'),
(33, 'pkujdjkot', 'Plt. Kepala UPTD Jalan dan Jembatan Kab. Oku Timur', 14, 'kepala'),
(34, 'pulbk', 'Plt. UPTD Labolatorium Bahan Kontruksi', 15, 'kepala'),
(35, 'pksbtu', 'Plh. Kepala Sub. Bagian Tata Usaha', 7, 'bagian'),
(36, 'kasubta', 'Kepala Sub. Bagian Tata Usaha', 8, 'bagian'),
(37, 'kasubtb', 'Kepala Sub. Bagian Tata Usaha', 9, 'bagian'),
(38, 'kasubtc', 'Kepala Sub. Bagian Tata Usaha', 10, 'bagian'),
(39, 'kasubtd', 'Kepala Sub. Bagian Tata Usaha', 11, 'bagian'),
(40, 'kasubte', 'Kepala Sub. Bagian Tata Usaha', 12, 'bagian'),
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
  `id_parent` bigint(20) NOT NULL DEFAULT '0',
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
  `parent_kategori` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `komentar_tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kontak_masuk`
--

INSERT INTO `kontak_masuk` (`id`, `nama`, `ktp`, `phone`, `pesan`, `tanggal`, `ip`, `dibaca`) VALUES
(1, 'adityads', '825863', '082371373347', 'tes kontak masuk', '2018-12-18 16:28:48', '', 'Y'),
(2, 'ads', '11123', '222', 'asd', '2018-12-18 17:12:00', '', 'N'),
(3, '1', '1', '555-666-0606', '1', '2019-04-11 18:33:48', '', 'Y');

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
  `menu_child_parent` bigint(20) NOT NULL DEFAULT '0',
  `menu_child_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_target` enum('_self','_blank','_parent','_top') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `posisi` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_child`
--

INSERT INTO `menu_child` (`menu_child_id`, `menu_id`, `menu_child_parent`, `menu_child_code`, `menu_child_nama`, `menu_child_url`, `menu_child_target`, `aktif`, `posisi`) VALUES
(6, 1, 0, 'home', 'Beranda', 'http://localhost/pubmsumsel', '_self', 'Y', 1),
(9, 1, 0, 'syarat-ketentuan', 'Berita', 'http://localhost/pubmsumsel/berita', '_self', 'Y', 23),
(12, 1, 0, 'about-us', 'Unit Dinas', 'http://localhost/pubmsumsel/unit_kerja', '_self', 'Y', 7),
(14, 1, 0, 'about-us', 'Data Infrastruktur', 'http://localhost/pubmsumsel/data-infrastruktur', '_self', 'Y', 24),
(15, 1, 0, 'home', 'Profil Instansi', '#', '_self', 'Y', 2),
(17, 1, 15, '', 'Visi Misi', 'http://localhost/pubmsumsel/page/1-visi-dan-misi', '_self', 'Y', 3),
(18, 1, 15, '', 'Dasar Hukum', 'http://localhost/pubmsumsel/page/6-dasar-hukum', '_self', 'Y', 4),
(19, 1, 15, '', 'Tugas dan Fungsi', 'http://localhost/pubmsumsel/page/2-tugas-dan-fungsi', '_self', 'Y', 5),
(20, 1, 15, '', 'Struktur Organisasi', 'http://localhost/pubmsumsel/struktur-organisasi', '_self', 'Y', 6),
(21, 1, 12, '', 'Bidang Pengembangan Jaringan Jalan', 'http://localhost/pubmsumsel/bidang/2750-Bidang-Pengembangan-Jaringan', '_self', 'Y', 9),
(22, 1, 12, '', 'Bidang Jalan', 'http://localhost/pubmsumsel/bidang/7822-Bidang', '_self', 'Y', 10),
(23, 1, 0, 'faq', 'Galeri', 'http://localhost/pubmsumsel/galeri', '_self', 'Y', 25),
(24, 1, 0, 'faq', 'Kontak', 'http://localhost/pubmsumsel/kontak', '_self', 'Y', 26),
(27, 1, 12, '', 'Bidang Jembatan', 'http://localhost/pubmsumsel/bidang/7549-Bidang', '_self', 'Y', 11),
(28, 1, 12, '', 'Bidang Pengujian Peralatan dan BMD', 'http://localhost/pubmsumsel/bidang/4454-Bidang-Pengujian-Peralatan-dan', '_self', 'Y', 12),
(29, 1, 12, '', 'Bidang Penataan Ruang', 'http://localhost/pubmsumsel/bidang/3899-Bidang-Penataan', '_self', 'Y', 13),
(30, 1, 12, '', 'UPTD PJ3 Kabupaten Lahat', 'http://localhost/pubmsumsel/bidang/3187-UPTD-PJ3-Kabupaten', '_self', 'Y', 14),
(31, 1, 12, '', 'Sekretariat', 'http://localhost/pubmsumsel/bidang/2783-', '_self', 'Y', 8),
(33, 1, 12, '', 'UPTD Jalan dan Jembatan Kab. Oku Timur', 'http://localhost/pubmsumsel/bidang/2941-UPTD-Jalan-dan-Jembatan-Kab-Oku', '_self', 'Y', 15),
(34, 1, 12, '', 'UPTD PJ3 Kabupaten Ogan Komering Ilir', 'http://localhost/pubmsumsel/bidang/2586-UPTD-PJ3-Kabupaten-Ogan-Komering', '_self', 'Y', 16),
(35, 1, 12, '', 'UPTD PJ3 Kabupaten Muara Enim', 'http://localhost/pubmsumsel/bidang/2094-UPTD-PJ3-Kabupaten-Muara', '_self', 'Y', 17),
(36, 1, 12, '', 'UPTD PJ3 Kota Palembang', 'http://localhost/pubmsumsel/bidang/1796-UPTD-PJ3-Kota', '_self', 'Y', 18),
(37, 1, 12, '', 'UPTD PJ3 Kabupaten Musi Banyuasin', 'http://localhost/pubmsumsel/bidang/1691-UPTD-PJ3-Kabupaten-Musi', '_self', 'Y', 19),
(38, 1, 12, '', 'UPTD PJ3 Kabupaten Ogan Komering Ulu', 'http://localhost/pubmsumsel/bidang/194-UPTD-PJ3-Kabupaten-Ogan-Komering', '_self', 'Y', 20),
(39, 1, 12, '', 'UPTD PJ3 Kabupaten Musi Rawas', 'http://localhost/pubmsumsel/bidang/6358-UPTD-PJ3-Kabupaten-Musi', '_self', 'Y', 21),
(40, 1, 12, '', 'UPTD Laboratorium Bahan Kontruksi', 'http://localhost/pubmsumsel/bidang/5041-UPTD-Laboratorium-Bahan', '_self', 'Y', 22);

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
(1, 'Visi dan Misi', 'visi-dan-misi', '<p style=\"text-align: center; padding-left: 30px;\"><img src=\"http://localhost/an-component/media/upload-gambar-pendukung/default.png\" alt=\"\"> </p>\r\n<div class=\"row\">\r\n<div class=\"\">\r\n<div class=\"col-md-2\" style=\"padding-left: 30px;\"><img src=\"http://localhost/pubmsumsel/an-component/media/upload-gambar-pendukung/default.png\">\r\n<p align=\"justify\"><span style=\"color: #323233;\"><span style=\"font-family: \'Open sans\', sans-serif;\"><span style=\"font-size: small;\">H. Darma Budhi, S.H., S.T., M.T</span></span></span></p>\r\n<p class=\"western\" lang=\"x-none\"><span style=\"color: #323233;\"><span style=\"font-family: \'Open sans\', sans-serif;\"><span style=\"font-size: xx-small;\">Kepala Dinas PUBMTR Sumatera Selatan</span></span></span></p>\r\n<p style=\"text-align: center;\"> </p>\r\n</div>\r\n<div class=\"col-md-10\" style=\"text-align: justify;\">\r\n<p><span style=\"color: #323233;\"><span style=\"font-family: Lato;\"><span style=\"font-size: large;\"><strong>Visi dan Misi</strong></span></span></span></p>\r\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: small;\"><span style=\"font-size: medium;\">Sesuai tugas pokok dan fungsi Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan mempunyai rencana stratejik yang berorientasi pada hasil yang ingin dicapai selama kurun waktu 5 (lima) tahun, yaitu untuk tahun 201</span><span style=\"font-size: medium;\"><span lang=\"en-ID\">8</span></span><span style=\"font-size: medium;\"> – 20</span><span style=\"font-size: medium;\"><span lang=\"en-ID\">23</span></span><span style=\"font-size: medium;\"> dengan memperhitungkan potensi, peluang, dan kendala yang ada atau mungkin yang timbul, Rencana Stratejik Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan yang mencakup visi, misi, serta cara pencapaian tujuan dan sasaran tersebut akan diuraikan dalam bab ini. Kemudian, sasaran yang ingin dicapai dalam tahun 201</span><span style=\"font-size: medium;\"><span lang=\"en-ID\">8</span></span><span style=\"font-size: medium;\"> akan dijelaskan dalam Rencana Kinerja.</span></span></span></p>\r\n<p class=\"western\" lang=\"x-none\"> </p>\r\n<p><span style=\"color: #323233;\"><span style=\"font-family: Lato;\"><span style=\"font-size: large;\"><strong>Visi</strong></span></span></span></p>\r\n<p class=\"western\" align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Visi merupakan pandangan jauh ke depan, kemana dan bagaimana Instansi Pemerintah harus dibawa dan berkarya agar konsisten dan dapat eksis,antisipatif, inovatif serta produktif. Visi tidak lain adalah suatu gambaran yang menantang tentang keadaan masa depan berisikan cita dan citra yang ingin diwujudkan oleh Instansi Pemerintah.</span></span></p>\r\n<p class=\"western\" align=\"justify\"> </p>\r\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Visi Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan didasarkan dengan tugas pokok dan fungsi serta melihat latar belakang dan sejalan dengan era globalisasi saat ini, yaitu :</span></span></p>\r\n<p class=\"western\" lang=\"x-none\"> </p>\r\n<p align=\"left\"><span style=\"color: #000000;\">“<span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><em><strong>Terwujudnya prasarana jalan dan jembatan yang andal guna mendukung Sumatera Selatan yang sejahtera, lebih maju dan berdaya saing internasional”.</strong></em></span></span></span></p>\r\n<p align=\"left\"> </p>\r\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Makna dari visi tersebut adalah bahwa Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan berkeinginan menjadi instansi profesional dibidang pembinaan jalan dan jembatan di Provinsi Sumatera Selatan, dan sebagai motor penggerak dalam pembangunan wilayah dan pengemangan wilayah dengan meningkatkan peran pemerintah dan masyarakat dengan tetap meletakkan keimanan dan ketakwaan sebagai landasan profesionalisme organisasi, dalam menuju <em>Clean Goverment</em> atau Pemerintahan yang bersih dan berwibawa sebagai prasyarat utama untuk mewujudkan aspirasi masyarakat dalam mencapai cita-cita bangsa.</span></span></p>\r\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Tujuan penetapan visi tersebut adalah :</span></span></p>\r\n<ol style=\"list-style-type: lower-alpha;\">\r\n<li class=\"western\" lang=\"x-none\">\r\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Mencerminkan apa yang ingin dicapai oleh Dinas PU Bina Marga<span lang=\"en-ID\"> dan Tata Ruang</span></span></span></p>\r\n</li>\r\n<li class=\"western\" lang=\"x-none\">\r\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Memberi arah dan fokus strategi yang jelas</span></span></p>\r\n</li>\r\n<li class=\"western\" lang=\"x-none\">\r\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Memiliki orientasi terhadap masa depan.</span></span></p>\r\n</li>\r\n</ol>\r\n<p> </p>\r\n<p><span style=\"color: #323233;\"><span style=\"font-family: Lato;\"><span style=\"font-size: large;\"><strong>Misi</strong></span></span></span></p>\r\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Untuk mewujudkan visi diatas, maka Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan mempunyai misi yang harus diemban, yaitu :</span></span></p>\r\n<p class=\"western\" lang=\"x-none\"> </p>\r\n<p align=\"justify\"><span style=\"color: #000000;\">“<span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><span lang=\"en-ID\"><em><strong>Membangun dan meningkatkan kualitas dan kuantitas infrastruktur termasuk infrastruktur dasar guna percepatan pembangunan wilayah pedalaman dan perbatasan, untuk memperlancar arus barang dan mobilitas penduduk, serta mewujudkan daya saing daerah dengan mempertimbangkan pemerataan dan keseimbangan daerah”</strong></em></span></span><em><strong>.</strong></em></span></span></p>\r\n</div>\r\n</div>\r\n</div>', '', '', 'published', 1, 6, '2019-05-07 01:25:28', '0000-00-00 00:00:00', '', ''),
(2, 'Tugas dan Fungsi', 'tugas-dan-fungsi', '<div class=\"content\">\n<p align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: large;\"><strong>Kedudukan, Tugas, Fungsi dan Struktur Organisasi</strong></span></span></p>\n<p lang=\"x-none\" align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan merupakan dinas teknis dari Pemerintah Provinsi Sumatera Selatan yang dibentuk melalui Peraturan Daerah<span lang=\"en-US\"> No. 14 Tahun 2016 tentang Pembentukan dan Susunan Perangkat Daerah Provinsi Sumatera Selatan dan Peraturan Gubernur No.</span> <span lang=\"en-ID\">46</span> Tahun 20<span lang=\"en-ID\">16</span> <span lang=\"en-US\">tentang </span><span lang=\"en-ID\">Susunan Organisasi, Uraian Tugas dan Fungsi Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan. Perangkat </span>Daerah Provinisi Sumatera Selatan yang berada dan bertanggung jawab langsung kepada Gubernur Provinsi Sumatera Selatan.</span></span></p>\n<p lang=\"x-none\" align=\"justify\"> </p>\n<p lang=\"x-none\" align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><strong>a. Tugas Pokok</strong></span></span></p>\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Berdasarkan Peraturan <span lang=\"en-ID\">Gubernur</span> No. <span lang=\"en-ID\">46</span> Tahun 2016 <span lang=\"en-US\">tentang </span><span lang=\"en-ID\">Susunan Organisasi, Uraian Tugas dan Fungsi Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan dan Peraturan Gubernur No. 22 Tahun 2018 tentang</span></span></span></p>\n<p class=\"western\" lang=\"x-none\"> </p>\n<p align=\"left\"><span style=\"color: #000000;\">“<span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><em><strong>Melaksanakan kewenangan desentralisasi dan tugas dekonsentrasi di bidang pekerjaan </strong></em><span lang=\"en-ID\"><em><strong>u</strong></em></span><em><strong>mum bina </strong></em><span lang=\"en-ID\"><em><strong>m</strong></em></span><em><strong>arga dan tata ruang”.</strong></em></span></span></span></p>\n<p align=\"left\"> </p>\n<p class=\"western\" align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><strong>b. Fungsi</strong></span></span></p>\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Dalam menjalankan tugas pokok tersebut, Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan menyelenggarakan fungsi :</span></span></p>\n<ol style=\"list-style-type: lower-alpha;\">\n<li class=\"western\">\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><span lang=\"en-ID\">Penyusunan dan perumusan kebijaksanaan teknis pembangunan dan pengelolaan, pembinaan umum, pemberian bimbingan serta perizinan di bidang kebinamargaan dan penataan ruang sesuai dengan kebijakan yang ditetapkan oleh gubernur</span></span></span></p>\n</li>\n<li class=\"western\">\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Pengawasan dan pengendalian teknis dibidang <span lang=\"en-ID\">b</span>ina <span lang=\"en-ID\">m</span>arga<span lang=\"en-ID\"> dan tata ruang </span>sesuai dengan kebijaksanaan yang ditetapkan oleh gubernur</span></span></p>\n</li>\n<li class=\"western\">\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Pembinaan dan bimbingan terhadap dinas lingkup prasarana wilayah kabupaten/kota yang bersifat teknis <span lang=\"en-ID\">di bidang bina marga dan tata ruang</span></span></span></p>\n</li>\n<li class=\"western\">\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><span lang=\"en-ID\">Pengkoordinasian penatausahaan, pemanfaatan dan pengamanan barang milik negara/daerah</span></span></span></p>\n</li>\n<li class=\"western\">\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\"><span lang=\"en-ID\">Pembinaan administrasi dan Unit Pelaksana Teknis Dinas lingkup Dinas Pekerjaan Umum Bina Marga dan Tata Ruang</span></span></span></p>\n</li>\n<li class=\"western\">\n<p class=\"western\" lang=\"x-none\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Pelaksanaan tugas <span lang=\"en-ID\">kedinasan lainnya</span> yang diberikan oleh <span lang=\"en-ID\">pimpinan.</span></span></span></p>\n</li>\n</ol>\n<p lang=\"x-none\" align=\"justify\"> </p>\n</div>', '', '', 'published', 1, 6, '2019-05-07 02:46:28', '0000-00-00 00:00:00', '', ''),
(3, 'Dinas PU', 'dinas-pu', '<div>\n<h2>Mengapa kita menggunakannya?</h2>\n<p>Sudah merupakan fakta bahwa seorang pembaca akan terpengaruh oleh isi tulisan dari sebuah halaman saat ia melihat tata letaknya. Maksud penggunaan Lorem Ipsum adalah karena ia kurang lebih memiliki penyebaran huruf yang normal, ketimbang menggunakan kalimat seperti \"Bagian isi disini, bagian isi disini\", sehingga ia seolah menjadi naskah Inggris yang bisa dibaca. Banyak paket Desktop Publishing dan editor situs web yang kini menggunakan Lorem Ipsum sebagai contoh teks. Karenanya pencarian terhadap kalimat \"Lorem Ipsum\" akan berujung pada banyak situs web yang masih dalam tahap pengembangan. Berbagai versi juga telah berubah dari tahun ke tahun, kadang karena tidak sengaja, kadang karena disengaja (misalnya karena dimasukkan unsur humor atau semacamnya)</p>\n</div>\n<p> </p>\n<div>\n<h2>Dari mana asalnya?</h2>\n<p>Tidak seperti anggapan banyak orang, Lorem Ipsum bukanlah teks-teks yang diacak. Ia berakar dari sebuah naskah sastra latin klasik dari era 45 sebelum masehi, hingga bisa dipastikan usianya telah mencapai lebih dari 2000 tahun. Richard McClintock, seorang professor Bahasa Latin dari Hampden-Sidney College di Virginia, mencoba mencari makna salah satu kata latin yang dianggap paling tidak jelas, yakni consectetur, yang diambil dari salah satu bagian Lorem Ipsum. Setelah ia mencari maknanya di di literatur klasik, ia mendapatkan sebuah sumber yang tidak bisa diragukan. Lorem Ipsum berasal dari bagian 1.10.32 dan 1.10.33 dari naskah \"de Finibus Bonorum et Malorum\" (Sisi Ekstrim dari Kebaikan dan Kejahatan) karya Cicero, yang ditulis pada tahun 45 sebelum masehi. BUku ini adalah risalah dari teori etika yang sangat terkenal pada masa Renaissance. Baris pertama dari Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", berasal dari sebuah baris di bagian 1.10.32.</p>\n<p>Bagian standar dari teks Lorem Ipsum yang digunakan sejak tahun 1500an kini di reproduksi kembali di bawah ini untuk mereka yang tertarik. Bagian 1.10.32 dan 1.10.33 dari \"de Finibus Bonorum et Malorum\" karya Cicero juga di reproduksi persis seperti bentuk aslinya, diikuti oleh versi bahasa Inggris yang berasal dari terjemahan tahun 1914 oleh H. Rackham.</p>\n</div>\n<div>\n<h2>Dari mana saya bisa mendapatkannya?</h2>\n<p>Ada banyak variasi tulisan Lorem Ipsum yang tersedia, tapi kebanyakan sudah mengalami perubahan bentuk, entah karena unsur humor atau kalimat yang diacak hingga nampak sangat tidak masuk akal. Jika anda ingin menggunakan tulisan Lorem Ipsum, anda harus yakin tidak ada bagian yang memalukan yang tersembunyi di tengah naskah tersebut. Semua generator Lorem Ipsum di internet cenderung untuk mengulang bagian-bagian tertentu. Karena itu inilah generator pertama yang sebenarnya di internet. Ia menggunakan kamus perbendaharaan yang terdiri dari 200 kata Latin, yang digabung dengan banyak contoh struktur kalimat untuk menghasilkan Lorem Ipsun yang nampak masuk akal. Karena itu Lorem Ipsun yang dihasilkan akan selalu bebas dari pengulangan, unsur humor yang sengaja dimasukkan, kata yang tidak sesuai dengan karakteristiknya dan lain sebagainya.</p>\n</div>', 'http://localhost/dinaspu/an-component/media/upload-gambar-pendukung/graph.jpg', '', 'published', 1, 0, '2018-11-26 12:25:41', '0000-00-00 00:00:00', '', ''),
(4, 'page page', 'page-page', '<p>suwara suapja</p>', 'http://localhost/dinaspu/an-component/media/upload-gambar-pendukung/sparkler-677774_1280.jpg', '', 'published', 1, 0, '2018-11-28 09:42:53', '0000-00-00 00:00:00', 'meta ', 'meta'),
(5, 'regerg', 'regerg', '<p>regergre</p>', '', '', 'published', 5, 0, '2018-12-05 13:26:23', '0000-00-00 00:00:00', 'rger', 'greger'),
(6, 'Dasar Hukum', 'dasar-hukum', '<p align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: large;\"><strong>Dasar Hukum</strong></span></span></p>\n<p class=\"western\" align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Dinas P<span lang=\"en-ID\">ekerjaan </span>U<span lang=\"en-ID\">mum</span> Bina Marga <span lang=\"en-ID\">dan Tata Ruang </span>Provinsi Sumatera Selatan sebagai salah satu unsur penyelenggara pemerintahan Daerah, berkewajiban untuk mempertanggungjawabkan pelaksanaan tugas pokok dan fungsinya dalam mengelola segala sumber daya yang dimiliki dan dalam mencapai misi dan tujuan organisasi. Pertanggungjawaban tersebut diwujudkan Dinas P<span lang=\"en-ID\">ekerjaan </span>U<span lang=\"en-ID\">mum</span> Bina Marga<span lang=\"en-ID\"> dan Tata Ruang</span> Provinsi Sumatera Selatan melalui sistem perencanaan dan penganggaran serta pengukuran kinerja yang terintegrasi dan menyeluruh. Hal tersebut sesuai dengan Instruksi Presiden (Inpres) Nomor 7 Tahun 1999 tentang Akuntabilitas Kinerja Instansi Pemerintah (AKIP) yang mewajibkan seluruh instansi pemerintah untuk mempertanggungjawabkan keberhasilan atau kegagalan pelaksanaan misi organisasi dalam mencapai tujuan dan sasaran yang telah ditetapkan, dalam rangka mendorong terciptanya akuntabilitas kinerja instansi pemerintah. Dalam pelaksanaannya, Inpres ini juga dilengkapi dengan Peraturan Menteri Negara Pendayagunaan Aparatur Negara dan Reformasi Birokrasi (Permen PAN dan RB) Nomor 53 Tahun 2014 tentang Petunjuk Teknis Perjanjian Kinerja, Pelaporan Kinerja dan Tata Cara Reviu Atas Laporan Kinerja Instansi Pemerintah.</span></span></p>\n<p class=\"western\" align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Pertanggungjawaban tersebut dimulai dengan Penyusunan Rencana Strategis (Renstra) Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan 2013-2018. Tahun 201<span lang=\"en-ID\">8</span> merupakan tahun <span lang=\"en-ID\">terakhir</span> dari pelaksanaan Renstra Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan yang mengalami pengembangan di sesuaikan dengan Visi Pembangunan Provinsi Sumatera Selatan. Indikator Kinerja Utama (IKU) juga mengalami perbaikan dalam rangka menyelaraskan dengan sasaran strategis serta Visi dan Misi Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan Tahun 201<span lang=\"en-ID\">8</span> – 20<span lang=\"en-ID\">23</span>.</span></span></p>\n<p class=\"western\" align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">Laporan Kinerja Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan ini disampaikan sebagai wujud dari pertanggungjawaban pencapaian kinerja dikaitkan dengan anggaran yang digunakan oleh Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan dan pencapaian tujuan, sasaran </span></span></p>\n<p class=\"western\" align=\"justify\"><span style=\"font-family: Lato;\"><span style=\"font-size: medium;\">sasaran strategis, serta indikator-indikator yang telah ditetapkan dalam Renstra Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan Tahun 2013-2018. Laporan Kinerja ini juga digunakan sebagai umpan balik untuk memicu perbaikan kinerja Dinas Pekerjaan Umum Bina Marga dan Tata Ruang Provinsi Sumatera Selatan di tahun yang akan datang.</span></span></p>', '', '', 'published', 5, 6, '2019-05-07 02:46:01', '0000-00-00 00:00:00', '', ''),
(7, 'Struktur Organisasi', 'struktur-organisasi', '<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: left;\"> </p>', 'http://localhost/pubmsumsel/an-component/media/upload-gambar-pendukung/graph.jpg', '', 'published', 5, 5, '2018-12-14 11:50:24', '0000-00-00 00:00:00', '', ''),
(8, 'Kontak', 'kontak', '<p style=\"text-align: center;\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d995.4256638888642!2d103.77722515982957!3d-3.6550789666388654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e39f6357ba7c49b%3A0x56c40cc246bc9212!2sDinas+Bina+Marga!5e0!3m2!1sid!2sid!4v1544771457196\" width=\"700\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\n<p style=\"text-align: center;\"> </p>\n<h5 style=\"text-align: center;\"> </h5>\n<p style=\"padding-left: 30px;\"><strong>Dinas Pekerjaan Umum &amp; Penataan Ruangan Kab. Muara Enim</strong></p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\">Jl. Mayor Tjik Agus Kiemas(Islamic Center),</p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\">Kec. Muara Enim, Kab. Muara Enim,</p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\">Sumatera Selatan - 31311</p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\">Telp: (0734) 421099</p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\"> </p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\"> </p>\n<form action=\"nextpage\" method=\"post\">\n<div class=\"col-md-6\">\n<div class=\"form-group\"><label>No. KTP</label> <input id=\"judul-pesan\" class=\"form-control\" readonly=\"readonly\" type=\"text\" value=\"&lt;?php echo $pesan[\'ktp\'] ?&gt;\"></div>\n</div>\n<div class=\"col-md-6\">\n<div class=\"form-group\"><label>Nama</label> <input id=\"judul-pesan\" class=\"form-control\" readonly=\"readonly\" type=\"text\" value=\"&lt;?php echo $pesan[\'nama\'] ?&gt;\"></div>\n</div>\n<div class=\"col-md-6\">\n<div class=\"form-group\"><label>Tanggal</label> <input id=\"judul-pesan\" class=\"form-control\" readonly=\"readonly\" type=\"text\" value=\"&lt;?php echo date(\'d-m-Y\',strtotime($pesan[\'tanggal\'])) ?&gt;\"></div>\n</div>\n<div class=\"col-md-6\">\n<div class=\"form-group\"><label>Telepon</label> <input id=\"judul-pesan\" class=\"form-control\" readonly=\"readonly\" type=\"text\" value=\"&lt;?php echo $pesan[\'phone\'] ?&gt;\"></div>\n</div>\n<div class=\"col-md-12\">\n<div class=\"form-group\"><label>Pesan</label> <textarea class=\"form-control\" readonly=\"readonly\">&lt;?php echo $pesan[\'pesan\'] ?&gt;</textarea></div>\n</div>\n<div class=\"col-md-12\"><input class=\"form-control\" type=\"submit\" value=\"Submit\"></div>\n</form>', '', '', 'published', 5, 5, '2018-12-24 11:35:20', '0000-00-00 00:00:00', '', '');

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
('10302', 'PERATURAN GUBERNUR SUMATERA SELATAN NOMOR 14', '', '2016', 'PEMBENTUKAN DAN SUSUNAN PERANGKAT DAERAH SUMATERA SELATAN', '2019-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `reply_id` int(11) NOT NULL,
  `kontak_id` int(11) NOT NULL,
  `reply_isi` text COLLATE utf8_unicode_ci NOT NULL,
  `reply_tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`reply_id`, `kontak_id`, `reply_isi`, `reply_tanggal`) VALUES
(1, 1, 'tess1', '2018-12-18 17:46:27');

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
  `port` bigint(20) NOT NULL DEFAULT '25',
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
(39, 1, '196201101988111001', 'H. Darma Budhy, SH, ST, MT', 'man.png'),
(40, 2, '197712041997032004', 'Dr. HJ. MEGAWATY, ST, MT', 'sekertaris.png'),
(41, 3, '196205151983031017', 'Drs. H. Eddy Manhar, MM', 'Edy Manhar.png'),
(42, 4, '197907132002122004', 'Rina Anggraini, ST', 'man.png'),
(43, 5, '196201031988031004', 'H. Husnan, SE, MM', 'Husnan .png'),
(44, 6, '196612151995031003', 'Ir. Ridwan, M.M', 'Kabid Jaringan Jalan.png'),
(45, 7, '196207281988111002', 'Ir. Muchtar. MA', 'man.png'),
(46, 8, '1970212301992031002', 'Muhammad Affandi, ST, Msc', 'Kabid Jembatan.png'),
(47, 9, '196607171988031004', 'Tendy Jumat, ST, M.Si', 'Bidang Pengujian Peralatan BMD.png'),
(48, 10, '197401081995101001', 'Faustino Do Carmo, ST', 'Penataan Ruang.png'),
(49, 11, '196706121990031002', 'Dru Wismawan, SE, MT', 'DRU Wismawan.png'),
(50, 12, '196412241999031003', 'Ir. Indra Muliawan, M.Si', 'Indra Muliawan.png'),
(51, 13, '1973012219980031005', 'Dedu Hendra, S.T.', 'Dedi Hendra.png'),
(52, 14, '198005232002121002', 'Ricky Meiza, ST, MM', 'Riki.png'),
(53, 15, '197401081995101001', 'Faustino Do Carmo, ST', 'Penataan Ruang.png'),
(54, 16, '198202232005022001', 'Ida Febriani ST, MT', 'Ida Febrianti.png'),
(55, 17, '197302051999031007', 'Ramaly, ST., M.T', 'Ramaly.png'),
(56, 18, '198301272008011002', 'Popo Hartopo, ST', 'man.png'),
(57, 19, '196407111990032003', 'Ir. Nyayu Yulita', 'UPTD Laboratorium Bahan Konstruksi.png'),
(58, 20, '197609172011011002', 'Andri Wahyudi, ST', 'Andri Wahyudi.png'),
(59, 21, '198204292011011005', 'MA. Rizky Irfian, S.T.', 'Rizki irvian.png'),
(60, 22, '197612312005012019', 'Delly Puspita, S.T.', 'Delly.png'),
(61, 23, '197505252008011006', 'Rizal Hermansyah, ST, MT', 'Rizal Firmasyah.png'),
(62, 24, '198409182010011014', 'Anton Satria, SH', 'Anton.png'),
(63, 25, '196608081998031004', 'Ir. Agustiono, MM', 'Agustino.png'),
(64, 26, '197109281993031001', 'Hendry Wijaya, ST, MM', 'Hendry Wijaya.png'),
(65, 27, '196505031990031008', 'Indra Asmi Muharam, ST', 'UPTD Ogan Komering Ulu dan UPTD Jalan Jembatan OKU.png'),
(66, 28, '196309101990031006', 'Ir. Tarmisi, MM, M.SI', 'man.png'),
(67, 29, '196309151990031007', 'Ir. Arlan, M.T.', 'UPTD Kota Palembang.png'),
(68, 30, '196405201991032007', 'Ir. Hj. Mejiarti, MT', 'man.png'),
(69, 31, '196506251997031002', 'Ir. Mujianto, M.Si', 'UPTD Musi Rawas.png'),
(70, 32, '196305171991031004', 'Nurudin Hanafia, ST, MT', 'UPTD Muara Enim.png'),
(71, 33, '196505031990031008', 'Indra Asmi Muharam, ST', 'UPTD Ogan Komering Ulu dan UPTD Jalan Jembatan OKU.png'),
(72, 34, '196407111990032003', 'Ir. Nyayu Yulita', 'UPTD Laboratorium Bahan Konstruksi.png'),
(73, 35, '197904282007011014', 'Aredho Hadianata Imron, S.T.', 'Aredho Hadinata.png'),
(74, 36, '1976112009011010', 'Mahmud, ST', 'Mahmud.png'),
(75, 37, '196211111986091001', 'Eddy Sabani, ST, MM', 'man.png'),
(76, 38, '19810022009021007', 'Tedi Suryadharma Putra, ST', 'Tedy Suryadharma Putra.png'),
(77, 39, '-', '-', 'man.png'),
(78, 40, '1970090031998031004', 'Firgani Arief, S.T., M.T.', 'Firgani Arief.png'),
(79, 41, '196801011992031011', 'Hermalan, ST', 'Hermalan.png'),
(80, 42, '196912231996031003', 'Zulkarnain, S.T.', 'Zulkarnain.png'),
(81, 43, '197111101997032004', 'Poppy Savutri, S.T., M.Si', 'Poppy Savitri.png'),
(82, 44, '197809272008011004', 'Endang Supriyadi, ST', 'endang Supriyadi.png'),
(83, 45, '196908101999031007', 'Saifuddin Hasibuan, ST, MM', 'man.png'),
(84, 46, '196308061991031007', 'Muhammad Nurman, S.IP, ST', 'man.png'),
(85, 47, '196206261994031005', 'Ir. Fauzi, MM', 'Fauzi .png'),
(86, 48, '196211101982121001', 'Muhammad Zarbani, ST, M.Si', 'M. Zarbani.png'),
(87, 49, '197704162007011001', 'Apriansyah Rustami, ST', 'Apriansyah Rustami.png'),
(88, 50, '197110221994031002', 'Rudy Susilo, ST, M.Si', 'Rudi Susilo.png'),
(89, 51, '-', '-', 'man.png'),
(90, 52, '-', '-', 'man.png'),
(91, 53, '198201212008011003', 'Eko Widiyanto, SE, ST', 'Eko Widiyanto.png'),
(92, 54, '-', '-', 'man.png'),
(93, 55, '196707121992031011', 'M. Iqbal Dewanto, ST, MM', 'man.png'),
(94, 56, '196605021996031003', 'Erwin Aduman, ST, MM', 'Erwin Aduman.png'),
(95, 57, '196301181991021002', 'Jon Fahlevi, ST', 'Jhon Fahlevi.png'),
(96, 58, '196210291991021001', 'Ir. Bayazi', 'Bayazi.png'),
(97, 59, '197805082007012007', 'Nukky Meiliana, ST, M.Eng', 'Nukki.png'),
(98, 60, '196306021998031002', 'Ir. Mgs. Hidayatullah, M.M.', 'man.png'),
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
(6, 'adityads', 'adityads', 'adityads@pupr.com', '202cb962ac59075b964b07152d234b70', 1, 'default.jpg', 'Y', 'N', '2018-12-03');

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
(310, '::1', '2019-05-08', 'Chrome', 1, 1557332848);

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
  MODIFY `artikel_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `banner_depan`
--
ALTER TABLE `banner_depan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `foto_artikel_temp`
--
ALTER TABLE `foto_artikel_temp`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `foto_galeri`
--
ALTER TABLE `foto_galeri`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `foto_galeri_temp`
--
ALTER TABLE `foto_galeri_temp`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `foto_user_tmp`
--
ALTER TABLE `foto_user_tmp`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `galeri_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id_kategori` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `menu_child_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id_user` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

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

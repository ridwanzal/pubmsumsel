<style>
    /* Carousel Styles */
    
    .carousel-indicators .active {
        background-color: #2980b9;
    }
    
    .carousel-inner img {
        width: 100%;
        max-height: 460px
    }
    
    .carousel-control {
        width: 0;
    }
    
    .carousel-control.left,
    .carousel-control.right {
        opacity: 1;
        filter: alpha(opacity=100);
        background-image: none;
        background-repeat: no-repeat;
        text-shadow: none;
    }
    /*
.carousel-control.left span {
	padding: 15px;
}

.carousel-control.right span {
	padding: 15px;
}
*/

.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right,
.carousel-control .icon-prev,
.carousel-control .icon-next {
    position: absolute;
    top: 45%;
    z-index: 5;
    display: inline-block;
}

.carousel-control .glyphicon-chevron-left,
.carousel-control .icon-prev {
    left: 0;
}

.carousel-control .glyphicon-chevron-right,
.carousel-control .icon-next {
    right: 0;
}

.carousel-control.left span,
.carousel-control.right span {
    background-color: #000;
}

.carousel-control.left span:hover,
.carousel-control.right span:hover {
    opacity: .7;
    filter: alpha(opacity=70);
}
/* Carousel Header Styles */

.header-text {
    position: absolute;
    top: 20%;
    left: 1.8%;
    right: auto;
    width: 96.66666666666666%;
    color: #fff;
}

.header-text h2 {
    font-size: 50px;
}

.header-text h2 span {
    -webkit-text-stroke: 1px black;
    color: #f9af4a;
    text-shadow: 3px 3px 0 #000, -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
}

.header-text h3 span {
    padding: 15px;
    font-size: 40px;
    color: #03a9f4;
    -webkit-text-stroke: 0.2px white;
}

.btn-min-block {
    min-width: 170px;
    line-height: 26px;
}

.btn-theme {
    color: #fff;
    background-color: transparent;
    border: 2px solid #fff;
    margin-right: 15px;
}

.btn-theme:hover {
    color: #000;
    background-color: #fff;
    border-color: #fff;
}


/*

All grid code is placed in a 'supports' rule (feature query) at the bottom of the CSS (Line 310). 
        
The 'supports' rule will only run if your browser supports CSS grid.

Flexbox and floats are used as a fallback so that browsers which don't support grid will still recieve a similar layout.

*/

/* Base Styles */


img {
    display: block;
}


.btn {
    display: inline-block;
    font: inherit;
    background: none;
    border: none;
    color: inherit;
    padding: 0;
    cursor: pointer;
}

.btn:focus {
    outline: 0.5rem auto #4d90fe;
}

.visually-hidden {
    position: absolute !important;
    height: 1px;
    width: 1px;
    overflow: hidden;
    clip: rect(1px, 1px, 1px, 1px);
}

/* Profile Section */

.profile {
    padding: 5rem 0;
}

.profile::after {
    content: "";
    display: block;
    clear: both;
}

.profile-image {
    float: left;
    width: calc(33.333% - 1rem);
    display: flex;
    justify-content: center;
    align-items: center;
    margin-right: 3rem;
}

.profile-image img {
    border-radius: 50%;
}

.profile-user-settings,
.profile-stats,
.profile-bio {
    float: left;
    width: calc(66.666% - 2rem);
}

.profile-user-settings {
    margin-top: 1.1rem;
}

.profile-user-name {
    display: inline-block;
    font-size: 3.2rem;
    font-weight: 300;
}

.profile-edit-btn {
    font-size: 1.4rem;
    line-height: 1.8;
    border: 0.1rem solid #dbdbdb;
    border-radius: 0.3rem;
    padding: 0 2.4rem;
    margin-left: 2rem;
}

.profile-settings-btn {
    font-size: 2rem;
    margin-left: 1rem;
}

.profile-stats {
    margin-top: 2.3rem;
}

.profile-stats li {
    display: inline-block;
    font-size: 1.6rem;
    line-height: 1.5;
    margin-right: 4rem;
    cursor: pointer;
}

.profile-stats li:last-of-type {
    margin-right: 0;
}

.profile-bio {
    font-size: 1.6rem;
    font-weight: 400;
    line-height: 1.5;
    margin-top: 2.3rem;
}

.profile-real-name,
.profile-stat-count,
.profile-edit-btn {
    font-weight: 600;
}

/* Gallery Section */

.gallery {
    display: flex;
    flex-wrap: wrap;
    margin: -1rem -1rem;
    padding-bottom: 3rem;
}

.gallery-item {
    position: relative;
    color: #fff;
    margin-bottom: 15px;
    width : 160px;
    height : 160px;
    cursor: pointer;

}

.gallery-item:hover .gallery-item-info,
.gallery-item:focus .gallery-item-info {
    display: flex;
    justify-content: center;
    align-items: center;
    position: absolute;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.3);
}

.gallery-item-info {
    display: none;
}

.gallery-item-info li {
    display: inline-block;
    font-size: 1.7rem;
    font-weight: 600;
}

.gallery-item-likes {
    margin-right: 2.2rem;
}

.gallery-item-type {
    position: absolute;
    top: 1rem;
    right: 1rem;
    font-size: 2.5rem;
    text-shadow: 0.2rem 0.2rem 0.2rem rgba(0, 0, 0, 0.1);
}

.fa-clone,
.fa-comment {
    transform: rotateY(180deg);
}

.gallery-image {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

/* Loader */

.loader {
    width: 5rem;
    height: 5rem;
    border: 0.6rem solid #999;
    border-bottom-color: transparent;
    border-radius: 50%;
    margin: 0 auto;
    animation: loader 500ms linear infinite;
}

/* Media Query */

@media screen and (max-width: 40rem) {
    .profile {
        display: flex;
        flex-wrap: wrap;
        padding: 4rem 0;
    }

    .profile::after {
        display: none;
    }

    .profile-image,
    .profile-user-settings,
    .profile-bio,
    .profile-stats {
        float: none;
        width: auto;
    }

    .profile-image img {
        width: 7.7rem;
    }

    .profile-user-settings {
        flex-basis: calc(100% - 10.7rem);
        display: flex;
        flex-wrap: wrap;
        margin-top: 1rem;
    }

    .profile-user-name {
        font-size: 2.2rem;
    }

    .profile-edit-btn {
        order: 1;
        padding: 0;
        text-align: center;
        margin-top: 1rem;
    }

    .profile-edit-btn {
        margin-left: 0;
    }

    .profile-bio {
        font-size: 1.4rem;
        margin-top: 1.5rem;
    }

    .profile-edit-btn,
    .profile-bio,
    .profile-stats {
        flex-basis: 100%;
    }

    .profile-stats {
        order: 1;
        margin-top: 1.5rem;
    }

    .profile-stats ul {
        display: flex;
        text-align: center;
        padding: 1.2rem 0;
        border-top: 0.1rem solid #dadada;
        border-bottom: 0.1rem solid #dadada;
    }

    .profile-stats li {
        font-size: 1.4rem;
        flex: 1;
        margin: 0;
    }

    .profile-stat-count {
        display: block;
    }
}

/* Spinner Animation */

@keyframes loader {
    to {
        transform: rotate(360deg);
    }
}

/*

The following code will only run if your browser supports CSS grid.

Remove or comment-out the code block below to see how the browser will fall-back to flexbox & floated styling. 

*/

@supports (display: grid) {
    .profile {
        display: grid;
        grid-template-columns: 1fr 2fr;
        grid-template-rows: repeat(3, auto);
        grid-column-gap: 3rem;
        align-items: center;
    }

    .profile-image {
        grid-row: 1 / -1;
    }

    .gallery {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(22rem, 1fr));
        grid-gap: 2rem;
    }

    .profile-image,
    .profile-user-settings,
    .profile-stats,
    .profile-bio,
    .gallery-item,
 /*   .gallery {
        width: auto;
        margin: 0;
        }*/

        @media (max-width: 40rem) {
            .profile {
                grid-template-columns: auto 1fr;
                grid-row-gap: 1.5rem;
            }

            .profile-image {
                grid-row: 1 / 2;
            }

            .profile-user-settings {
                display: grid;
                grid-template-columns: auto 1fr;
                grid-gap: 1rem;
            }

            .profile-edit-btn,
            .profile-stats,
            .profile-bio {
                grid-column: 1 / -1;
            }

            .profile-user-settings,
            .profile-edit-btn,
            .profile-settings-btn,
            .profile-bio,
            .profile-stats {
                margin: 0;
            }
        }
    }

</style>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" width="100%;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <?php  $no=0; foreach ($banner_depan as $key => $value) { $no++; ?>
            <li data-target="#carousel-example-generic" data-slide-to="<?= $no; ?>" class=" <?php if($no==1){ ?>active <?php } ?>"></li>
        <?php } ?>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <?php  $no=0; foreach ($banner_depan as $key => $value) { $no++; ?>
            <!-- <? print_r($banner_depan) ?> -->
            <div class="item <?php if($no==1){ ?>active <?php } ?>">
                <img src="<?= $value['gambar']; ?>" alt="First slide">
                <!-- Static Header -->
                <div class="header-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h2>
                           <span><?= $value['header']; ?></span>
                       </h2>
                       <br>
                       <div class="col-lg-8 col-md-8">
                        <p style="bottom:0px ; font-size: 39px; letter-spacing: 0.5px; text-align:left; line-height:40px; left: -29px !important; float:left; color : #fff; position: relative; top:235px; font-weight:bold;">
                            <?= $value['caption']; ?>
                        </p>
                    </div>
                        <!--<div class="">
                            <a class="btn btn-theme btn-sm btn-min-block" href="#">Login</a><a class="btn btn-theme btn-sm btn-min-block" href="#">Register</a></div> -->
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
        <!-- Controls -->
        <a title="Slide Sebelumnya" class="left carousel-control" style="padding:5px;" href="#carousel-example-generic" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" style="background: transparent; left: 25px;"></span>
        </a>
        <a title="Slide Sesudahnya" class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" style="background: transparent; right: 25px;"></span>
            <span>Next</span>
        </a>
    </div>
    <!-- /carousel -->
    <div style="background: #ffc928; color:#2055a2; opacity : 0.8; height:auto; padding : 10px;">
        <span style="color:#2055a2;font-weight:600; margin-left:16px;"><span class="fa fa-exclamation-circle">
        </span>&nbsp;&nbsp;Berita : <a href="<?= artikel_url($artikel_berita[0]['id'],$artikel_berita[0]['slug']); ?>"><?php print_r($artikel_berita[0]['judul']) ?>,</a>&nbsp;&nbsp;<span><?php echo format_tanggal($artikel_berita[0]['tanggal']) ?></span>
        <a href=""><span class="fa fa-caret-right pull-right" style="margin-right:25px; margin-top:5px;"></span></span>
        </div>
        <div class="container">
            <div class="row" style="margin-top:20px;margin-bottom:20px;text-align:center; cursor:text !important;">
                <div class="col-lg-12 col-md-12 col-xs-12" style="background : url('https://pubmtrsumsel.scafol.id/an-theme/ando/assets/img/palembang_ampera.svg'); padding: 20px 40px 40px 40px; border : 1px solid #eee; box-shadow : 1px 2px 5px #eee; text-align:left;">
                    <h3 style="color: #999; font-weight:bold; font-size:16px;margin-bottom:20px;">Visi Sumsel 2018 - 2023</h3>
                    <p style="font-weight:600; font-size:35px;">"Sumsel Maju Untuk Semua"</p>
                    <br/>
                    <span style="display:flex;">
                        <img width="50" height="50" src="<?php echo assets_url('img/gubwagub.svg') ?>" alt="" style="border-radius:6px;" class="">&nbsp;&nbsp;
                        <span style="margin-left: 10px;">
                            <p style="font-weight:600;font-size:18px;">H. Herman Deru & H. Mawardi Yahya</p>
                            <p style="font-size:14px; color: #999;">Gubernur & Wakil Gubernur Provinsi Sumatera Selatan</p>
                        </span>
                    </span>
                </div>
            </div>  
            <hr>
            <div class="row" style="margin-top:20px;margin-bottom:20px;text-align:center;">
                <!-- <div class="col-lg-2 col-md-2 col-xs-12 rows_data">
                    <img width="240" src="<?php echo assets_url('img/visi_three.svg') ?>" alt="" style="position:relative;top:-3px;margin-top:5px;margin-bottom:10px;" class="img-w img img-responsive">
                    <p style="text-align:left;font-size: 18px;margin-bottom:5px; height : 45px;">
                        Kemajuan Ekonomi
                        <hr/>
                    </p>
                    <p style="text-align:left;font-size: 13px; ">
                        Membangun Sumsel berbasis ekonomi kerakyatan, yang didukung sektor pertanian, industri, dan UMKM yang tangguh untuk mengatasi pengangguran dan kemiskinan baik di perkotaan maupun di perdesaan
                    </p>
                </div> -->
            <!-- <div class="col-lg-2 col-md-2 col-xs-12 rows_data">
                <img width="240" src="<?php echo assets_url('img/visi_four.svg') ?>" alt="" style="position:relative;top:-3px;margin-top:5px;margin-bottom:10px;" class="img-w img img-responsive">
                <p style="text-align:left;font-size: 18px;margin-bottom:5px; height : 45px;">
                    Sumber Daya Manusia    
                    <hr/>
                </p>
                <p style="text-align:left;font-size: 13px;">
                    Meningkaatkan kualitas Sumber Daya Manusia (SDM), baik laki-laki maupun perempuan yang sehat, berpendidikan, professional, dan menjunjung tinggi nilai-nilai keimanan, 
                    ketaqwaan, kejujuran, dan integritas.
                </p>
            </div> -->
             <!-- <div class="col-lg-2 col-md-2 col-xs-12 rows_data">
                <img width="240" src="<?php echo assets_url('img/visi_two.svg') ?>" alt="" style="position:relative;top:-3px;margin-top:5px;margin-bottom:10px;" class="img-w img img-responsive">
                <p style="text-align:left;font-size: 18px;margin-bottom:5px; height : 45px;">
                    Tata Kelola Pemerintahan
                    <hr/>
                </p>
                <p style="text-align:left;font-size: 13px;">
                    Mewujudkan tata kelola pemerintahan yang bebas Korupsi, Kolusi dan Nepotisme dengan mengedepankan transparansi dan akuntabilitas yang didukung aparatur pemerintahan yang jujur, 
                    berintegritas, profesional dan responsif.   
                </p>
             </div> -->
            <div class="col-lg-12 col-md-12 col-xs-12  rows_data " 
                style=" background : #ffc928 !important;
                        border : 1px solid #ffc928;
                        position: relative;
                        top: -10px;
                        margin-top:10px;
                        padding: 30px 40px 40px 40px;
                        height: auto;">
                    <!-- <img width="240" src="<?php echo assets_url('img/visi_one.svg') ?>" alt="" style="position:relative;top:-3px;margin-top:5px;margin-bottom:10px;" class="img-w img img-responsive"> -->
                    <p style="text-align:left;font-weight:bold; font-size:16px;margin-bottom:10px;">Misi Keempat</h3>
                    <p style="text-align:left;font-size: 29px; line-height : 30px; font-weight:bold; margin-bottom:10px;">
                        "Pembangunan Infrastruktur"
                    </p>
                    <p style="text-align:left;font-size: 14px; color : #111">
                     Membangun dan meningkatkan kualitas dan kuantitas infrastruktur, termasuk infrastruktur dasar guna percepatan pembangunan wilayah pedalaman & perbatasan, untuk memperlancar arus barang dan mobilitas penduduk, serta mewujudkan daya saing daerah dengan mempertimbangkan pemerataan dan keseimbangan daerah.
                 </p>
             </div>
             <!-- <div class="col-lg-2 col-md-2 col-xs-12 rows_data">
                <img width="240" src="<?php echo assets_url('img/visi_two.svg') ?>" alt="" style="position:relative;top:-3px;margin-top:5px;margin-bottom:10px;" class="img-w img img-responsive">
                <p style="text-align:left;font-size: 18px;margin-bottom:5px; height : 45px;">
                    Keagamaan & Sosial Masyarakat
                    <hr style="color : #111;"/>
                </p>
                <p style="text-align:left;font-size: 13px;">
                    Meningkatkan kehidupan beragama, seni, dan budaya untuk membangun karakter kehidupan sosial yang agamis & berbudaya, dengan ditopang fisik yang sehat melalui kegiatan olahraga, sedangkan pengembangan pariwisata berorientasi pariwisata religius.
                </p>
             </div> -->
        </div>
        <hr/>
        <div class="row container_bidang">
            <div id="heads_unit" class="col-lg-3 col-md-3 col-xs-12">
             <p>Unit Dinas&nbsp;&nbsp;&nbsp;<span class="fa fa-caret-right"></span></p>
         </div>
         <div class="col-lg-3 col-md-3 col-xs-12">
             <a href="<?php echo baseURL('index.php/bidang/2783-'); ?>"><p>Sekretariat</p></a>
         </div>
         <div class="col-lg-3 col-md-3 col-xs-12">
             <a href="<?php echo baseURL('index.php/bidang/2783-'); ?>"><p>Bidang Pengembangan Jaringan Jalan</p></a>
         </div>
         <div class="col-lg-3 col-md-3 col-xs-12">
             <a href="<?php echo baseURL('index.php/bidang/3899-Bidang-Pembangunan-Jalan-Dan'); ?>"><p>Bidang Jalan</p></a>
         </div>
     </div>
     <br/>
     <div class="row container_bidang">
        <div class="col-lg-3 col-md-3 col-xs-12">
            <a href="<?php echo baseURL('index.php/bidang/4454-Bidang-Preservasi-Jalan-Dan'); ?>"><p>Bidang Jembatan</p></a>
        </div>
        <div class="col-lg-3 col-md-3 col-xs-12">
            <a href="<?php echo baseURL('index.php/bidang/3187-Bidang-Tata-Bangunan-dan-Jas'); ?>"><p>Bidang Pengujian Peralatan dan Barang Milik Daerah</p></a>
        </div>
        <div class="col-lg-3 col-md-3 col-xs-12">
            <a href="<?php echo baseURL('index.php/bidang/2750-Bidang-Air-Minum-dan-Penyehatan-Lingkungan'); ?>"><p>Bidang Penataan Ruang</p></a>
        </div>
        <div class="col-lg-3 col-md-3 col-xs-12">
            <a href="<?php echo baseURL('index.php/bidang/7549-Bidang-Sumber-Daya-Air'); ?>"><p>UPTD Jalan dan Jembatan  Kabupaten Lahat</p></a>
        </div>
    </div>
    <br/>
    <div class="row container_bidang">
        <div class="col-lg-3 col-md-3 col-xs-12">
            <a href="<?php echo baseURL('index.php/bidang/7822-Bidang-Tata'); ?>"><p>UPTD Jalan dan Jembatan Kabupaten Ogan Komering Ulu</p></a>
        </div>
        <div class="col-lg-3 col-md-3 col-xs-12">
            <a href="<?php echo baseURL('index.php/bidang/3187-Bidang-Tata-Bangunan-dan-Jas'); ?>"><p>UPTD Jalan dan Jembatan  Kabupaten Musi Banyuasin</p></a>
        </div>
        <div class="col-lg-3 col-md-3 col-xs-12">
            <a href="<?php echo baseURL('index.php/bidang/2750-Bidang-Air-Minum-dan-Penyehatan-Lingkungan'); ?>"><p>UPTD Jalan dan Jembatan Kota Palembang</p></a>
        </div>
        <div class="col-lg-3 col-md-3 col-xs-12">
            <a href="<?php echo baseURL('index.php/bidang/7549-Bidang-Sumber-Daya-Air'); ?>"><p>UPTD Jalan dan Jembatan Kabupaten Ogan Komering Ilir</p></a>
        </div>
    </div>
    <br/>
    <div class="row container_bidang">
        <div class="col-lg-3 col-md-3 col-xs-12">
            <a href="<?php echo baseURL('index.php/bidang/7822-Bidang-Tata'); ?>"><p>UPTD Jalan dan Jembatan Kabupaten Musi Rawas</p></a>
        </div>
        <div class="col-lg-3 col-md-3 col-xs-12">
            <a href="<?php echo baseURL('index.php/bidang/3187-Bidang-Tata-Bangunan-dan-Jas'); ?>"><p>UPTD Jalan dan Jembatan Kabupaten Muara Enim</p></a>
        </div>
        <div class="col-lg-3 col-md-3 col-xs-12">
            <a href="<?php echo baseURL('index.php/bidang/2750-Bidang-Air-Minum-dan-Penyehatan-Lingkungan'); ?>"><p>UPTD Jalan dan Jembatan Kabupaten Oku Timur</p></a>
        </div>
        <div class="col-lg-3 col-md-3 col-xs-12">
            <a href="<?php echo baseURL('index.php/bidang/7549-Bidang-Sumber-Daya-Air'); ?>"><p>UPTD Jalan dan Jembatan Laboratorium Bahan Konstruksi</p></a>
        </div>
    </div>
    <hr>
    <!-- start section  berita  -->
    <div class="section section-berita">
        <div class="row">
            <div class="col-md-8">
                <p style="font-size:20px;font-weight:normal;margin-bottom:10px;">Berita Terbaru</p>
                <?php foreach ($artikel_berita as $aka): ?>
                    <div class="col-md-6">
                        <div class="row">
                            <div style="width:100%;height:auto;">
                                <?php echo "<img class='new_img_size' src='".img_artikel_url($aka['foto'],true)."' />"; ?>
                            </div>
                        </div>
                        <div class="row">
                            <?php echo "<a href='".artikel_url($aka['id'],$aka['slug'])."'><p class='news_header_text'> ".potong_text($aka['judul'],36)."</p></a>"; ?>
                            <p class="posted_text">posted by
                                <?php echo $aka['nama_admin'] ?>
                                <?php echo format_tanggal($aka['tanggal']) ?>
                            </p>
                            <br>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>

            <div class="col-md-4">
                <p style="font-size:20px;font-weight:normal;margin-bottom:10px;"><a href="#tab1" data-toggle="tab">Follow on Instagram</a></span><hr/>
                    <div class="announce_cont">
                        <!--	<li style="background-color:#2055a2;color:white;" class=""><a href="#tab2" data-toggle="tab">Agenda</a></li>-->
                                    <?php foreach ($ig as $key ) : ?>
                                        <div class="col-md-6" tabindex="0">
                                            <a href="<?= $key['link'] ?>" target="_blank">
                                                <div class="gallery-item" tabindex="0">
                                                    <img src="<?= $key['images']['standard_resolution']['url'] ?>" class="gallery-image" alt="">
                                                    <div class="gallery-item-info">
                                                        <ul>
                                                            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fa fa-heart" aria-hidden="true"></i> <?= $key['likes']['count'] ?></li><br>
                                                            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fa fa-comment" aria-hidden="true"></i> <?= $key['comments']['count'] ?></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    <?php endforeach; ?>
                    </div>
                </div>
            </div>

            <!-- end section berita -->
            <!-- srat section galeri -->
            <a href="<?php echo baseURL('index.php/berita'); ?>"><span>Lihat Semua Berita</span>&nbsp;<span class="fa fa-caret-right"></span></a>
        </div>
        <hr/>
        <div class="section section-berita">
            <p style="">Galeri Foto</p>
            <div class="row">
                <!-- <div class="col-md-4">
                    <div style="width:100%;height:auto;background-color:#77848e;">
                        <a href="<?php echo galeri_url($galeri_rand->id,$galeri_rand->slug) ?>">
                            <?php echo  "<img class='img-responsive' src='".img_galeri_url($galeri_rand->foto)."' alt='$galeri_rand->nama' />";  ?>
                        </a>
                    </div>
                </div> -->
                <?php $i = 0; ?>
                <?php foreach ($get_galeri as $galeri): ?>
                    <?php if ($i<8): ?>
                        <div class="col-lg-3 col-md-3" style="margin-top:10px;margin-bottom:75px;">
                            <div style="width:100%;height:120px;background-color:#77848e;">
                                <?php echo  "<a href='".galeri_url($galeri['id'],$galeri['slug'])."'><img class='img-responsive img' src='".img_galeri_url($galeri['foto'])."' alt='$galeri[nama]' style='width:100%;max-height:170px; height: 170px; backgournd-size:cover;background-position: 50% 50%;text-align:center'; /></a>";  ?>
                            </div>
                        </div>
                    <?php endif; ?>
                    <?php $i++; ?>
                <?php endforeach; ?>
            </div>

        </div>
        <!-- end section galeri -->

    <!-- <div class="section" id="about">
                <div class="video-background-container">
                 <video preload="auto" autoplay="" loop="" muted="" class="video-background">
                    <source type="video/mp4" src="<?php echo assets_url('videos/cloud.mp4') ?>">
                 </video>
                </div>

                <div class="parallax-overlay"></div>

            <div class="container">
              <div class="row">

                <div class="col-md-12 wow bounceInUp">
                    <div class="welcome-block " style="text-align: center">
                        <img src="<?php echo $biodata['foto'] ?>"  alt="Sandro Poluan"/>
                        <h3 style="margin:30px 0 30px 0"><?php echo $biodata['nama']; ?></h3>
                        <div class="message-body">

                            <p><?php echo nl2br($biodata['deskripsi_singkat']) ?></p>
                                <a href="<?php echo baseURL('tentang-kami'); ?>" class="btn btn-border btn-effect" style="margin-top:30px">Tentang Saya</a>
                        </div>
                    </div>
                </div>

              </div>
            </div>
         </div>

         <div class="section" id="headline-artikel">

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">

                        <div class="sec-title text-center artikel-hot-title wow animated fadeInDown">
                           <h3>Yang lagi Hot</h3>
                        </div>

                    <div id="headline-konten" class="owl-carousel">
                        <?php

                        foreach ($artikel_headline as  $value) {
                            echo "<div class='owl-item wow animated fadeInLeft'>
                                    <div class='wrap-headline'>

                                <div class='overlay-effect'>
                               <h4> $value[judul] </h4>
                               <P>".potong_text(reversequote($value['isi'],'all'),120)."</P>
                               <a class='btn btn-border btn-effect' href='".artikel_url($value['id'],$value['slug'])."'>Baca</a>
                                </div>

                                     ";
                            echo "<img class='headImg' src='".img_artikel_url($value['foto'],true)."' alt='$value[judul]' />";
                            echo     "
                             <div class='caption-area'>
                               <a href='".artikel_url($value['id'],$value['slug'])."'><h4> ".potong_text($value['judul'],40)."</h4></a>";
                           echo "<span class='angka tanggal-artikel'><i class='fa fa-calendar'></i>&nbsp; ".format_tanggal($value['tanggal'])."</span>";
                           echo"
                           <span class='author-artikel'>
                           <i class='fa fa-user'></i>&nbsp; $value[nama_admin]
                           </span>
                            </div>
                                    </div>
                                 </div>";
                        }

                         ?>
                    </div>
                </div>
                </div>
            </div>

         </div>
     -->

    <!-- <div id="specialist" class="parallax section" style="padding:0;background-image: url(<?php echo $informasi['featured_image'] ?>);">
            <div class='overlay'>
            <div class="container-fluid ">
                <div class="row">
                    <div class="col-md-12">
                        <div class="sec-title text-center wow animated fadeInDown animated" style=" visibility: visible; animation-name: fadeInDown;">
                           <h3 style="color: #fff;">Mainan Saya</h3>
                        </div>

                       <div class='language-wrap'><span class='devicons devicons-html5' style='font-size: 100px;'></span>
                        <div class='language-detail'>HTML5</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-css3' style='font-size: 100px;'></span>
                       <div class='language-detail'>CSS3</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-jquery' style='font-size: 100px;'></span>
                        <div class='language-detail'>JQUERY</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-javascript' style='font-size: 100px;'></span>
                        <div class='language-detail'>JAVASCRIPT</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-php' style='font-size: 100px;'></span>
                        <div class='language-detail'>PHP</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-codeigniter' style='font-size: 100px;'></span>
                        <div class='language-detail'>CODEIGNITER</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-angular' style='font-size: 100px;'></span>
                        <div class='language-detail'>ANGULAR JS</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-mysql' style='font-size: 100px;'></span>
                        <div class='language-detail'>MYSQL</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-bootstrap' style='font-size: 100px;'></span>
                        <div class='language-detail'>BOOTSTRAP</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-wordpress' style='font-size: 100px;'></span>
                        <div class='language-detail'>WORDPRESS</div>
                       </div>

                    </div>
                </div>
            </div>
        </div>

         </div>

         <div class="section" id="populer">

            <div class="container-fluid ">
                <div class="row" style="text-align: center">

                        <div class="sec-title artikel-populer-title text-center wow animated fadeInDown">
                           <h3>Artikel Populer</h3>
                        </div>

                    <?php

                    foreach ($artikel_populer as  $val) {
                        echo "<div class='col-sm-3  box-populer wow bounceInUp'>";
                        echo "<div class='hover_wrap'>
                              <div class='social_area'>
                              <i class='fa fa-facebook-square'></i> <i class=''></i> <i class='fa fa-twitter-square'></i> <i class='fa fa-linkedin-square'></i>
                              </div>
                              <div class='area'>".potong_text($val['isi'],600)."</div>
                         <a href='".artikel_url($val['id'],$val['slug'])."' class='btn btn-effect btn-border baca-btn'>Baca</a>
                        </div>";
                        echo "<div class='item-box'>";
                        echo "<img class='' src='".img_artikel_url($val['foto'],true)."' alt='$val[judul]' />";
                        echo "<span class='judul'><a href='".artikel_url($val['id'],$val['slug'])."'><h4>$val[judul].</h4></a></span>";
                        echo "<span class='info'>";
                        echo "<i class='fa fa-calendar'></i>&nbsp; <span class='jam'>".format_tanggal($val['tanggal'])."</span>";
                        echo "<span class='author'>
                            <i class='fa fa-user'></i> &nbsp; $val[nama_admin]
                        </span>";
                        echo "</span>";
                        echo "<span class='konten'>";
                        echo potong_text(reversequote($val['isi'],'all'),150);
                        echo "</span>";
                        echo "</div>";
                        echo "</div>";
                    }

                     ?>

                </div>
            </div>

        </div> -->

    </div>
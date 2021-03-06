<style>

    /* Carousel Styles */

    

    .carousel-indicators .active {

        background-color: #2980b9;

    }

    

    .carousel-inner img {

        width: 100%;

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

    .navbar-default .navbar-nav>li>a {

        color : #fff !important;

        font-size:15px;

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

    left: 11px;

    margin-bottom: 15px;

    width: 160px;

    height: 160px;

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

    .example1 {

        height: 50px;   

        overflow: hidden;

        position: relative;

    }

    .example1 p {

        font-size: 3em;

        color: limegreen;

        position: absolute;

        width: 100%;

        height: 100%;

        margin: 0;

        line-height: 50px;

        text-align: center;

        /* Starting position */

        -moz-transform:translateX(100%);

        -webkit-transform:translateX(100%); 

        transform:translateX(100%);

        /* Apply animation to this element */   

        -moz-animation: example1 15s linear infinite;

        -webkit-animation: example1 15s linear infinite;

        animation: example1 15s linear infinite;

    }

    /* Move it (define the animation) */

    @-moz-keyframes example1 {

        0%   { -moz-transform: translateX(100%); }

        100% { -moz-transform: translateX(-100%); }

    }

    @-webkit-keyframes example1 {

        0%   { -webkit-transform: translateX(100%); }

        100% { -webkit-transform: translateX(-100%); }

    }

    @keyframes example1 {

        0%   { 

            -moz-transform: translateX(100%); /* Firefox bug fix */

            -webkit-transform: translateX(100%); /* Firefox bug fix */

            transform: translateX(100%);        

        }

        100% { 

            -moz-transform: translateX(-100%); /* Firefox bug fix */

            -webkit-transform: translateX(-100%); /* Firefox bug fix */

            transform: translateX(-100%); 

        }

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

<div id="startchange"></div>

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

            <div class="item <?php if($no==1){ ?>active <?php } ?> wow fadeIn">

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

    <div style="background: #ffc928; color:#2055a2; opacity : 0.8; height:65px">

        <span style="color:#2055a2;font-weight:600; margin-left:0px;">

        </span class="">

         <!-- <a href="<?= artikel_url($artikel_berita[0]['id'],$artikel_berita[0]['slug']); ?>">

         </a> -->

         <marquee direction="left" onmouseover="this.stop();" onmouseout="this.start();" style="margin-top: 20px;"><span stlyle="display:block;" id="append_newsticker" class="example1">



         </span></marquee>

         

         &nbsp;&nbsp;<span></span>

         <?php 

            // print_r($artikel_berita);

         $data = json_encode($artikel_berita);

            // print_r($data);

         ?>

         <script>

            let x_data = <?= $data ?>;

            localStorage.setItem('data_artikel', JSON.stringify(x_data));

            let x_json = JSON.parse(localStorage.getItem('data_artikel'));

            let i = 0;

            // setInterval(function () {

            //     $('#append_newsticker').fadeOut(300, function () {

            //         var $this = $(this);

            //         $this.text($this.text() == x_json[0].judul ? x_json[1].judul  : $this.text() == x_json[1].judul  ? x_json[3].judul : x_json[0].judul).addClass('wow fadeInUp');

            //         $this.fadeIn(500);

            //     });

            // }, 3500);

            setTimeout(function(){

                let i = 0;

                for(i; i < x_json.length; i++){

                    let elem = "<a href='artikel/"+x_json[i].id+"-"+x_json[i].slug+"' style='font-weight:bold;' title='"+x_json[i].judul+"' class='link'><span>"+x_json[i].judul+"</span></a>&nbsp;&nbsp;&#124;&nbsp;&nbsp;";

                    $('#append_newsticker').append(elem);

                }

            },10);

        </script>

        <span id="text_headline"></span>



        <style type="text/css">

            .cloud {

                animation-name: cloud-animation;

                animation-fill-mode: forwards;

                animation-duration: 1s;

            }



            #cloud-2 {

                animation-delay: 0.2s;

            }



            #cloud-3 {

                animation-delay: 0.4s;

            }



            @keyframes cloud-animation {

                from {

                    transform: translateY(100vw);

                }

                to {

                    transform: translateY(0);

                }

            }

        </style>

        <!-- <a href="wow cloud delay-1s"><span class="fa fa-caret-right pull-right" style="margin-right:25px; margin-top:5px;"></span></span> -->

        </div>

        <div class="container wow cloud delay-1s">

            <div class="row" style="margin-top:20px;margin-bottom:20px;text-align:center; cursor:text !important;">

                <div class="col-lg-12 col-md-12 col-xs-12" style="background : url('<?= base_url()?>an-theme/ando/assets/img/palembang_ampera.svg'); padding: 20px 40px 40px 40px; border : 1px solid #eee; box-shadow : 1px 2px 5px #eee; text-align:left;">

                    <h3 style="color: #999; font-weight:bold; font-size:16px;margin-bottom:20px;">Visi Sumsel 2018 - 2023</h3>

                    <p style="font-weight:600; font-size:35px;">"Sumsel Maju Untuk Semua"</p>

                    <br/>

                    <span style="display:flex;">

                        <!-- <img width="50" height="50" src="<?= assets_url('img/gubwagub.svg') ?>" alt="" style="border-radius:6px;" class="">&nbsp;&nbsp; -->

                        <span>

                            <p style="font-weight:600;font-size:18px;">H. Herman Deru & H. Mawardi Yahya</p>

                            <p style="font-size:14px; color: #999;">Gubernur & Wakil Gubernur Provinsi Sumatera Selatan</p>

                        </span>

                    </span>

                </div>

            </div>  

            <hr>

            <div class="row" style="margin-top:20px;margin-bottom:20px;text-align:center;">

                <!-- <div class="col-lg-2 col-md-2 col-xs-12 rows_data">

                    <img width="240" src="<?= assets_url('img/visi_three.svg') ?>" alt="" style="position:relative;top:-3px;margin-top:5px;margin-bottom:10px;" class="img-w img img-responsive">

                    <p style="text-align:left;font-size: 18px;margin-bottom:5px; height : 45px;">

                        Kemajuan Ekonomi

                        <hr/>

                    </p>

                    <p style="text-align:left;font-size: 13px; ">

                        Membangun Sumsel berbasis ekonomi kerakyatan, yang didukung sektor pertanian, industri, dan UMKM yang tangguh untuk mengatasi pengangguran dan kemiskinan baik di perkotaan maupun di perdesaan

                    </p>

                </div> -->

            <!-- <div class="col-lg-2 col-md-2 col-xs-12 rows_data">

                <img width="240" src="<?= assets_url('img/visi_four.svg') ?>" alt="" style="position:relative;top:-3px;margin-top:5px;margin-bottom:10px;" class="img-w img img-responsive">

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

                 <img width="240" src="<?= assets_url('img/visi_two.svg') ?>" alt="" style="position:relative;top:-3px;margin-top:5px;margin-bottom:10px;" class="img-w img img-responsive">

                 <p style="text-align:left;font-size: 18px;margin-bottom:5px; height : 45px;">

                     Tata Kelola Pemerintahan

                     <hr/>

                    </p>

                    <p style="text-align:left;font-size: 13px;">

                        Mewujudkan tata kelola pemerintahan yang bebas Korupsi, Kolusi dan Nepotisme dengan mengedepankan transparansi dan akuntabilitas yang didukung aparatur pemerintahan yang jujur, 

                        berintegritas, profesional dan responsif.   

                    </p>

                </div> -->

                <div class="col-lg-12 col-md-12 col-xs-12  rows_data container wow cloud delay-1s" 

                style=" background : #ffc928 !important;

                border : 1px solid #ffc928;

                position: relative;

                top: -10px;

                margin-top:10px;

                padding: 30px 40px 40px 40px;

                height: auto;">

                <!-- <img width="240" src="<?= assets_url('img/visi_one.svg') ?>" alt="" style="position:relative;top:-3px;margin-top:5px;margin-bottom:10px;" class="img-w img img-responsive"> -->

                <p style="text-align:left;font-weight:bold; font-size:16px;margin-bottom:10px;">Misi Keempat</h3>

                    <p style="text-align:left;font-size: 29px; line-height : 30px; font-weight:bold; margin-bottom:10px;">

                        "Pembangunan Infrastruktur"

                    </p>

                    <p style="text-align:left;font-size: 14px; color : #111">

                        Membangun dan meningkatkan kualitas dan kuantitas infrastruktur, termasuk infrastruktur dasar guna percepatan pembangunan wilayah pedalaman & perbatasan, untuk memperlancar arus barang dan mobilitas penduduk, serta mewujudkan daya saing daerah dengan mempertimbangkan pemerataan dan keseimbangan daerah.

                    </p>

                </div>

             <!-- <div class="col-lg-2 col-md-2 col-xs-12 rows_data">

                 <img width="240" src="<?= assets_url('img/visi_two.svg') ?>" alt="" style="position:relative;top:-3px;margin-top:5px;margin-bottom:10px;" class="img-w img img-responsive">

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

            <div class="row container_bidang wow cloud delay-1s">

                <div id="heads_unit" class="col-lg-3 col-md-3 col-xs-12">

                    <p>Unit Dinas&nbsp;&nbsp;&nbsp;<span class="fa fa-caret-right"></span></p>

                </div>

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/2783-'); ?>" class="link"><p>Sekretariat</p></a>

                </div>

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/2750-Bidang-Pengembangan-Jaringan'); ?>" class="link"><p>Bidang Pengembangan Jaringan Jalan</p></a>

                </div>

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/7822-Bidang'); ?>" class="link"><p>Bidang Jalan</p></a>

                </div>

            </div>

            <br/>

            <div class="row container_bidang wow cloud delay-1s">

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/7549-Bidang'); ?>" class="link"><p>Bidang Jembatan</p></a>

                </div>

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/4454-Bidang-Pengujian-Peralatan-dan'); ?>" class="link"><p>Bidang Pengujian Peralatan dan Barang Milik Daerah</p></a>

                </div>

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/3899-Bidang-Penataan'); ?>" class="link"><p>Bidang Penataan Ruang</p></a>

                </div>

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/3187-UPTD-PJ3-Kabupaten'); ?>" class="link"><p>UPTD Jalan dan Jembatan  Kabupaten Lahat</p></a>

                </div>

            </div>

            <br/>

            <div class="row container_bidang wow  cloud delay-1s">

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/194-UPTD-PJ3-Kabupaten-Ogan-Komering'); ?>" class="link"><p>UPTD Jalan dan Jembatan Kabupaten Ogan Komering Ulu</p></a>

                </div>

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/1691-UPTD-PJ3-Kabupaten-Musi'); ?>" class="link"><p>UPTD Jalan dan Jembatan  Kabupaten Musi Banyuasin</p></a>

                </div>

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/1796-UPTD-PJ3-Kota'); ?>" class="link"><p>UPTD Jalan dan Jembatan Kota Palembang</p></a>

                </div>

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/2586-UPTD-PJ3-Kabupaten-Ogan-Komering'); ?>" class="link"><p>UPTD Jalan dan Jembatan Kabupaten Ogan Komering Ilir</p></a>

                </div>

            </div>

            <br/>

            <div class="row container_bidang wow cloud delay-1s">

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/6358-UPTD-PJ3-Kabupaten-Musi'); ?>" class="link"><p>UPTD Jalan dan Jembatan Kabupaten Musi Rawas</p></a>

                </div>

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/2094-UPTD-PJ3-Kabupaten-Muara'); ?>" class="link"><p>UPTD Jalan dan Jembatan Kabupaten Muara Enim</p></a>

                </div>

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/2941-UPTD-Jalan-dan-Jembatan-Kab-Oku'); ?>" class="link"><p>UPTD Jalan dan Jembatan Kabupaten Oku Timur</p></a>

                </div>

                <div class="col-lg-3 col-md-3 col-xs-12">

                    <a href="<?= baseURL('index.php/bidang/5041-UPTD-Laboratorium-Bahan'); ?>" class="link"><p>UPTD Jalan dan Jembatan Laboratorium Bahan Konstruksi</p></a>

                </div>

            </div>

            <hr>



            <div class="row">

                <div class="col-md-8">

                    <div class="section section-berita wow cloud delay-1s">

                        <div class="row">

                            <h3  style="margin-top: -35px"><br>Berita</h3>

                        </div>

                        <div class="row">

                            <div id="owl-example1" class="owl-carousel wow cloud">

                                <?php foreach ($artikel_berita as $aka): ?>

                                    <div class="col-md-12 col-sm-12">

                                        <div class="panel" style="min-height: 500px; border:1px grey; box-shadow: 4px 4px 4px -5px rgba(0,0,0,0.15);">

                                            <div class="panel-header">

                                                <div style="width:100%;height:auto;">

                                                    <?= "<img style='object-fit:cover;' class='new_img_size' src='".img_artikel_url($aka['foto'],true)."' />"; ?>

                                                </div>

                                            </div>

                                            <div class="panel-body">

                                                <?= "<a href='".artikel_url($aka['id'],$aka['slug'])."'><p class='news_header_text'> ".potong_text($aka['judul'],36)."</p></a>"; ?>

                                                <p class="posted_text">posted by

                                                    <?= $aka['nama_admin'] ?>

                                                    <?= format_tanggal($aka['tanggal']) ?>

                                                </p>

                                                <p style="margin-top:5px;">

                                                    <span><?= potong_text($aka['isi'], 100) ?></span>

                                                    <?= "<a href='".artikel_url($aka['id'],$aka['slug'])."'><span style='color:blue;'>Read More..</span></a>"; ?>

                                                </p>

                                            </div>

                                        </div>

                                    </div>

                                <?php endforeach; ?>

                            </div>

                            <a href="<?= baseURL('index.php/berita'); ?>">

                                <span style="padding-left:15px;">Lihat Semua Berita</span>&nbsp;

                                <span class="fa fa-caret-right"></span>

                                

                                <div class="col-md-3" style="display:none;">

                                    <?php

                                    $user_ip=$_SERVER['REMOTE_ADDR'];       



                                    $tanggal = date("Ymd");

                                    $mnth = date("m"); 

                                    $year = date("Y"); 

                                            $waktu   = time(); //



                                            $pengunjung = $this->visitor->get_group('visitor_ip','visitor_tanggal','visitor')->row_array();



                                            $totalpengunjung  = $this->db->query("SELECT COUNT(visitor_hits) as counthits FROM visitor")->row_array(); 

                                            $hrini  = $this->db->query("SELECT COUNT(visitor_hits) as chrini FROM visitor where visitor_tanggal = $tanggal")->row_array(); 

                                            $blnini  = $this->db->query("SELECT COUNT(visitor_hits) as month FROM visitor where month(visitor_tanggal) = $mnth")->row_array(); 

                                            $yearini  = $this->db->query("SELECT COUNT(visitor_hits) as year FROM visitor where year(visitor_tanggal) = $year")->row_array(); 

                                            $bataswaktu       = time() - 300;



                                            $whpo = [

                                                'visitor_online >' => $bataswaktu

                                            ];

                                            $where = [

                                                'visitor_ip' => $user_ip,

                                                'visitor_tanggal' => $tanggal

                                            ];

                                            $pengunjungonline = $this->visitor->CekDataRows('visitor',$where)->num_rows();

                                            ?>



                                            <div class="pu-box-footer">

                                                <h5>Jumlah Pengunjung</h5>

                                                <p>Online :

                                                    <?= $pengunjungonline;?>

                                                </p>

                                                <p>Hari ini :

                                                    <?= $hrini['chrini'];?>

                                                </p>

                                                <p>Bulan ini :

                                                    <?= $blnini['month']; ?>

                                                </p>

                                                <p>Tahun ini :

                                                    <?= $yearini['year']; ?>

                                                </p>

                                                <p>Total Pengunjung :

                                                    <?= $totalpengunjung['counthits'];?>

                                                </p>

                                            </div>

                                        </div>

                                    </a>

                                </div>

                            </div>

                        </div>



                        <div class="col-md-1 wow cloud delay-1s" id="deline" style="">

                        </div>





                        <div class="col-md-3 wow cloud delay-1s" style="padding:0px; 10px 0px 10px;">

                            <section>

                        <!-- <div class="row">

                            <h3  style="margin-top: -15px;margin-left:15px;"><br>Kolom Pertanyaan</h3>

                        </div> -->

                        <!-- <div class="panel-body" style="height: 200px;background: white; overflow: scroll;overflow-x: hidden;border-radius:2px;border:1px grey; box-shadow: 4px 4px 4px -5px rgba(0,0,0,0.15);">

                            <?php foreach($get_kontak as $i) :?>

                                <div class="row">

                                    <div class="col-md-7">

                                        <p style="font-size: 16px;color:black;font-weight: bold;font-family: 'Lato', sans-serif;margin-bottom:10px;"><?= $i['nama']; ?></p>

                                    </div>

                                    <div class="col-md-5">

                                        <span class="fa fa-calendar" style="position:relative; left:27px; top:2px;"></span><p class="pull-right text-right" style="font-size:14px;font-family: 'Lato', sans-serif;"><?= date("d-m-Y",strtotime($i['tanggal'])); ?></p>

                                    </div>

                                </div>

                                <div class="row">

                                    <div class="col-md-11 col-md-offset-1">

                                        <p style="font-size:14px;color:#444;font-family: Lato, sans-serif;">

                                            <?= $i['pesan']; ?>

                                        </p>

                                    </div>

                                </div>



                                <div class="row">

                                    <?php  

                                    $pesan=$this->db->get_where("reply",array("kontak_id"=>$i['id']))->row_array();

                                    ?>

                                    <p style="font-size: 16px;margin-left:15px;color:black;font-weight: bold;font-family: 'Lato', sans-serif;margin-bottom:10px;">

                                        <b>Jawaban :</b> <br>

                                    </p>

                                    <div class="col-md-11 col-md-offset-1">

                                        <p style="font-size:14px;color:#444;font-family: 'Lato', sans-serif;">

                                            <?= strip_tags($pesan['reply_isi']); ?>   

                                        </p>

                                    </div>

                                </div>

                                <hr>

                            <?php endforeach; ?>

                        </div>  -->

                        <!-- <div class="row">

                            <div class="col-md-12" style="margin-top:5px">

                                <a href="<?= baseURL('kontak'); ?>">

                                    <span>Kirim Pertanyaan</span>&nbsp;

                                    <span class="fa fa-caret-right"></span>

                                </a>

                            </div>

                        </div> -->

                        <br/>

                        <div  class="panel-body" style="height: 70px;background: white; text-align:center;border-radius:2px;border:1px solid #7B68EE; box-shadow: 4px 4px 4px -5px rgba(0,0,0,0.15);">

                            <div class="row">

                                <div class="col-md-12 col-lg-12">

                                    <label id="watch" style="font-size:35px;margin-top:5px;"></label>

                                </div>

                            </div>

                            <script>

                                function date_time(id){

                                    let date = new Date();

                                    let h = date.getHours();

                                    if(h<10)

                                    {

                                        h = "0"+h;

                                    }

                                    let m = date.getMinutes();

                                    if(m<10)

                                    {

                                        m = "0"+m;

                                    }

                                    let s = date.getSeconds();

                                    if(s<10)

                                    {

                                        s = "0"+s;

                                    }

                                    let result = '<p>'+h+' : '+m+' : '+s+'</p>'

                                    $('#watch').empty();

                                    $('#watch').append(result);

                                    setTimeout('date_time("'+id+'");','1000');

                                    return true;

                                }

                            </script>

                            <script type="text/javascript">window.onload = date_time('date_time');</script>

                        </div>

                        <br/>

                        <div class="row">

                            <div class="col-md-12 col-lg-12">

                                <ul class="list-group">

                                    <li class="list-group-item">Online : <?= $pengunjungonline;?></li>

                                    <li class="list-group-item"> Hari ini : <?= $hrini['chrini'];?></li>

                                    <li class="list-group-item">Bulan ini : <?= $blnini['month'];?></li>

                                    <li class="list-group-item">Tahun ini : <?= $yearini['year'];?></li>

                                    <li class="list-group-item">Total Pengunjung : <?= $totalpengunjung['counthits'];?></li>

                                </ul>

                            </div>

                        </div>

                        <div class="row">

                            <div class="col-lg-12 col-md-12">

                                <div class="panel panel-default">

                                    <!-- <div class="panel-body">

                                           <img width="auto" height="240" src="<?= assets_url('img/gubwagub.svg') ?>" alt="" style="border-radius:6px;" class="">&nbsp;&nbsp;

                                        </a> 

                                    </div> -->

                                    <div class="panel-body" style="height:76px;">

                                        <h4><a href="#">Like this page</a></h4>

                                        <div class="pull-right" style="display:flex;top:-26px;position:relative;">

                                            <i id="like1" class="glyphicon glyphicon-thumbs-up" style="cursor:pointer;color:blue"></i>&nbsp;<div style="position:relative;top:-3px;cursor:pointer;" id="like1-bs3"></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                        <!--    <i id="dislike1" class="glyphicon glyphicon-thumbs-down" style="cursor:pointer;color:red"></i>&nbsp;<div style="position:relative;top:-3px;cursor:pointer;" id="dislike1-bs3"></div> -->

                                        </div>

                                    </div>



                                    <script>

                                        $(document).ready(function() {  

                                            $.ajax({

                                                type:"GET",

                                                url:"<?= base_url('home/ajax_get'); ?>",

                                                dataType : "JSON",

                                                success: function(data){

                                                    $('#like1-bs3').html(data[0].clike);

                                                    $('#dislike1-bs3').html(data[0].cdislike);

                                                }

                                            });



                                            $('i.glyphicon-thumbs-up').click(function(){

                                                $.ajax({

                                                    type:"POST",

                                                    data:{tipe:'yes'},

                                                    url:"<?= base_url('home/ajax_cek'); ?>",

                                                    dataType : "JSON",

                                                    success: function(ev){

                                                        $('#like1-bs3').html(ev[0].vlike);

                                                    }

                                                });



                                            });  





                                            $('i.glyphicon-thumbs-down').click(function(){

                                                $.ajax({

                                                    type:"POST",

                                                    data:{tipe:'no'},

                                                    url:"<?= base_url('home/ajax_cek'); ?>",

                                                    dataType : "JSON",

                                                    success: function(ev){

                                                        $('#dislike1-bs3').html(ev[0].vlike);

                                                    }

                                                });



                                            });  





                                               /* var $this = $(this),

                                                c = $this.data('count');    

                                                if (!c) c = 0;

                                                c++;

                                                $this.data('count',c);

                                                

                                                $('#'+this.id+'-bs3').html(c);*/







                                                $(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {

                                                    event.preventDefault();

                                                    $(this).ekkoLightbox();

                                                });                                        

                                            }); 



                                        </script>

                                    </div>

                                </div>

                            </div>



                            <div class="row">

                                <div class="col-lg-12 col-md-12">

                                    <div class="panel panel-default">

                                        <div class="panel-body text-center">

                                            <a href="http://kominfo.sumselprov.go.id/index.php?m=pg&id=1" target="_blank" class="link"><p>Lapor Sumsel </p></a>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </section>

                    </div>

                </div>

            <!-- <div class="row">

                <div class="col-lg-12 col-md-12 col-xs-12 text-left" style="font-size:14px;">

                    <span>

                        Online : <?= $pengunjungonline;?>

                    </span>

                    &nbsp;&nbsp;&nbsp;

                    <span>

                        Hari ini : <?= $hrini['chrini'];?>

                    </span>

                    &nbsp;&nbsp;&nbsp;

                    <span>

                        Bulan ini : <?= $blnini['month'];?>

                    </span>

                    &nbsp;&nbsp;&nbsp;

                    <span>

                        Tahun ini : <?= $yearini['year'];?>

                    </span>

                    &nbsp;&nbsp;&nbsp;

                    <span>

                        Total Pengunjung : <?= $totalpengunjung['counthits'];?>

                    </span>

                </div>            

            </div> -->

            <hr/>

            <div class="" id="owl-example" class="owl-carousel wow cloud">

                <?php $i = 0; ?>

                <?php foreach ($get_galeri as $galeri): ?>

                    <div style="width:97%;height:150px;">

                        <?=  "<a title='Show Image Detail' href='".galeri_url($galeri['id'],$galeri['slug'])."'><img class='img-responsive img' src='".img_galeri_url($galeri['foto'])."' alt='$galeri[nama]' style='width:100%;max-height:170px; height: 170px; object-fit:cover; margin-right: 5px; text-align:center'; /></a>";  ?>

                    </div>

                    <?php $i++; ?>

                <?php endforeach; ?>

            </div>

            <br/>

            <br/>

            <!--      <div class="container_contacts wow cloud delay-1s" style="margin-bottom:20px;">

                <p style="font-size:20px;font-weight:normal;margin-bottom:10px;">

                    Follow on Instagram

                </p>

                <hr/>

                <div class="row containers_instagram">

                  <li style="background-color:#2055a2;color:white;" class=""><a href="#tab2" data-toggle="tab">Agenda</a></li>

                    <?php foreach ($ig as $key ) : ?>

                        <div class="col-md-2" tabindex="0">

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

            </div>-->

        </div>

        <!-- <div class="section section-berita wow fadeIn delay-1s">

            <p style="">Galeri Foto</p>

            <div class="row">

                <div class="col-md-4">

                    <div style="width:100%;height:auto;background-color:#77848e;">

                        <a href="<?= galeri_url($galeri_rand->id,$galeri_rand->slug) ?>">

                                <?=  "<img class='img-responsive' src='".img_galeri_url($galeri_rand->foto)."' alt='$galeri_rand->nama' />";  ?>

                            </a>

                        </div>

                    </div>

                <?php $i = 0; ?>

                <?php foreach ($get_galeri as $galeri): ?>

                    <?php if ($i<8): ?>

                        <div class="col-lg-3 col-md-3" style="margin-top:10px;margin-bottom:75px;">

                            <div style="width:100%;height:120px;background-color:#77848e;">

                                <?=  "<a href='".galeri_url($galeri['id'],$galeri['slug'])."'><img class='img-responsive img' src='".img_galeri_url($galeri['foto'])."' alt='$galeri[nama]' style='width:100%;max-height:170px; height: 170px; backgournd-size:cover;background-position: 50% 50%;text-align:center'; /></a>";  ?>

                            </div>

                        </div>

                    <?php endif; ?>

                    <?php $i++; ?>

                <?php endforeach; ?>

            </div>

        </div> -->



        <!-- end section galeri -->



    <!-- <div class="section" id="about">

        <div class="video-background-container">

            <video preload="auto" autoplay="" loop="" muted="" class="video-background">

                <source type="video/mp4" src="<?= assets_url('videos/cloud.mp4') ?>">

            </video>

        </div>

        

        <div class="parallax-overlay"></div>

        

        <div class="container">

            <div class="row">



                <div class="col-md-12 wow bounceInUp">

                    <div class="welcome-block " style="text-align: center">

                        <img src="<?= $biodata['foto'] ?>"  alt="Sandro Poluan"/>

                        <h3 style="margin:30px 0 30px 0"><?= $biodata['nama']; ?></h3>

                        <div class="message-body">

                            

                            <p><?= nl2br($biodata['deskripsi_singkat']) ?></p>

                            <a href="<?= baseURL('tentang-kami'); ?>" class="btn btn-border btn-effect" style="margin-top:30px">Tentang Saya</a>

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

div class="row">

        <div class="col-md-12">



          <form action="<?= base_url(); ?>AN_admin/input_kontak" method="POST">

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <label>No. KTP</label> 

                  <input name="ktp" class="form-control" type="text" >

                </div>

              </div>

            </div>

            <div class="row">

              <div class="col-md-6">

                <div class="form-group">

                  <label>Nama</label> 

                  <input name="nama" class="form-control" type="text" >

                </div>

              </div>

              <div class="col-md-6">

                <div class="form-group">

                  <label>Telepon</label> 

                  <input name="phone" class="form-control"  type="text" >

                </div>

              </div>

            </div>

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <label>Pesan</label>

                  <textarea class="form-control" name="pesan"></textarea>

                </div>

              </div>     

            </div>

            

            

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <input type="submit" value="Submit" class="btn btn-primary col-md-6 col-md-offset-3">

                </div>

              </div>     

            </div>



          </form>

        </div>

      </div>

div class="row">

        <div class="col-md-12">



          <form action="<?= base_url(); ?>AN_admin/input_kontak" method="POST">

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <label>No. KTP</label> 

                  <input name="ktp" class="form-control" type="text" >

                </div>

              </div>

            </div>

            <div class="row">

              <div class="col-md-6">

                <div class="form-group">

                  <label>Nama</label> 

                  <input name="nama" class="form-control" type="text" >

                </div>

              </div>

              <div class="col-md-6">

                <div class="form-group">

                  <label>Telepon</label> 

                  <input name="phone" class="form-control"  type="text" >

                </div>

              </div>

            </div>

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <label>Pesan</label>

                  <textarea class="form-control" name="pesan"></textarea>

                </div>

              </div>     

            </div>

            

            

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <input type="submit" value="Submit" class="btn btn-primary col-md-6 col-md-offset-3">

                </div>

              </div>     

            </div>



          </form>

        </div>

      </div>

div class="row">

        <div class="col-md-12">



          <form action="<?= base_url(); ?>AN_admin/input_kontak" method="POST">

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <label>No. KTP</label> 

                  <input name="ktp" class="form-control" type="text" >

                </div>

              </div>

            </div>

            <div class="row">

              <div class="col-md-6">

                <div class="form-group">

                  <label>Nama</label> 

                  <input name="nama" class="form-control" type="text" >

                </div>

              </div>

              <div class="col-md-6">

                <div class="form-group">

                  <label>Telepon</label> 

                  <input name="phone" class="form-control"  type="text" >

                </div>

              </div>

            </div>

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <label>Pesan</label>

                  <textarea class="form-control" name="pesan"></textarea>

                </div>

              </div>     

            </div>

            

            

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <input type="submit" value="Submit" class="btn btn-primary col-md-6 col-md-offset-3">

                </div>

              </div>     

            </div>



          </form>

        </div>

      </div>sel">

div class="row">

        <div class="col-md-12">



          <form action="<?= base_url(); ?>AN_admin/input_kontak" method="POST">

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <label>No. KTP</label> 

                  <input name="ktp" class="form-control" type="text" >

                </div>

              </div>

            </div>

            <div class="row">

              <div class="col-md-6">

                <div class="form-group">

                  <label>Nama</label> 

                  <input name="nama" class="form-control" type="text" >

                </div>

              </div>

              <div class="col-md-6">

                <div class="form-group">

                  <label>Telepon</label> 

                  <input name="phone" class="form-control"  type="text" >

                </div>

              </div>

            </div>

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <label>Pesan</label>

                  <textarea class="form-control" name="pesan"></textarea>

                </div>

              </div>     

            </div>

            

            

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <input type="submit" value="Submit" class="btn btn-primary col-md-6 col-md-offset-3">

                </div>

              </div>     

            </div>



          </form>

        </div>

      </div>

div class="row">

        <div class="col-md-12">



          <form action="<?= base_url(); ?>AN_admin/input_kontak" method="POST">

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <label>No. KTP</label> 

                  <input name="ktp" class="form-control" type="text" >

                </div>

              </div>

            </div>

            <div class="row">

              <div class="col-md-6">

                <div class="form-group">

                  <label>Nama</label> 

                  <input name="nama" class="form-control" type="text" >

                </div>

              </div>

              <div class="col-md-6">

                <div class="form-group">

                  <label>Telepon</label> 

                  <input name="phone" class="form-control"  type="text" >

                </div>

              </div>

            </div>

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <label>Pesan</label>

                  <textarea class="form-control" name="pesan"></textarea>

                </div>

              </div>     

            </div>

            

            

            <div class="row">

              <div class="col-md-12">

                <div class="form-group">

                  <input type="submit" value="Submit" class="btn btn-primary col-md-6 col-md-offset-3">

                </div>

              </div>     

            </div>



          </form>

        </div>

      </div>

foreach ($artikel_headline as  $value) {

    echo "<div class='owl-item wow fadeIn'>

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



    <!-- <div id="specialist" class="parallax section" style="padding:0;background-image: url(<?= $informasi['featured_image'] ?>);">

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



<script>

    function myFunction(x) {

        var element = document.getElementById("deline");



        if (x.matches) {

            element.setAttribute("style","");

        } else {

            element.setAttribute("style", "width: 10px;float: left;border-left:2px solid #eee;margin-left: 20px;margin-top:50px;height: 540px");

        }

    }



    var x = window.matchMedia("(max-width: 960px)")

    myFunction(x)

    x.addListener(myFunction)

</script>
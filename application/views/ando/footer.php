<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//jika bukan halaman Home
if($informasi["current_page"]!='home'){
/*
echo "<div class='col-md-4 right-wripper'>";

echo "<div class='right-side'>";

echo "<div class='right-side-konten' style='margin-bottom:50px;'>";
echo "<form method='post' action='".baseURL("form_visitors/search_article")."' class='form-group has-feedback'>

  <input type='text' name='keyword' class='form-control search-form' placeholder='Pencarian artikel...' /><span class='fa fa-search form-control-feedback'></span>

</form>";
echo "</div>";

// echo "<div class='right-side-konten'>";
// echo "<h4><span>Follow Us</span></h4>";
// //
// // echo "<a href='https://www.facebook.com/JESUSisMySAVIOR.NotMyReligion' target='_blank' >";
// // echo "<div class='sosial-button sosial-facebook'>";
// // echo "</div>";
// // echo "</a>";
// //
// // echo "<a href='https://twitter.com/gantengsintetis' target='_blank' >";
// // echo "<div class='sosial-button sosial-twitter'>";
// // echo "</div>";
// // echo "</a>";
// //
// // echo "<a href='https://www.instagram.com/ando_poluan' target='_blank' >";
// // echo "<div class='sosial-button sosial-instagram'>";
// // echo "</div>";
// // echo "</a>";
// //
// // echo "<a href='https://plus.google.com/116695949876921825285' target='_blank' >";
// // echo "<div class='sosial-button sosial-google'>";
// // echo "</div>";
// // echo "</a>";
//
// echo "</div>";

echo "<div class='right-side-konten'>";
echo "<h4><span>Artikel Populer</span></h4>";

foreach ($artikel_populer as $artikel) {

echo "<a href='".artikel_url($artikel['id'],$artikel['slug'])."'><div class='populer-artikel-right-box media'>";
echo "<div class='img-box media-left'>
 <img src='".img_artikel_url($artikel['foto'],true)."' alt='$artikel[judul]'/>
 </div>";

 echo "<div class='media-body konten-body'>";
 echo "<h5>$artikel[judul]</h5>";
 echo "</div>";

echo "</div></a>";

}

echo "</div>";

echo "<div class='right-side-konten'>";
echo "<h4><span>Tags</span></h4>";

foreach ($tags as $tag) {
  echo "<a href='".tag_url($tag['id'],$tag['slug'])."'><span class='label label-info label-tag'>$tag[nama]</span></a>";
}

echo "</div>";

echo "<div class='right-side-konten'>";
echo "</div>";

echo "</div>"; //.right-side
*/
echo "</div>"; //.col-md-4

  echo "</div>"; //tutup class .row
  echo "</div>"; //tutup class .container
  echo "</div>"; //tutup id #main-konten

}

?>
<div class="wow animated fadeIn delay-1s" id='footer' style="background : url('<?= base_url()?>an-theme/ando/assets/img/musi.png'); background-size:cover; color: #888; padding-top: 55px; padding-bottom: 55px;">
    <div class='container'>
        <div class="row">
            <div class="col-md-3">
                <p class="text-footers-size">
                    Dinas PUBMTR Sumatera Selatan<br/>
                    Jl. Ade Irma Nasution No.10<br>
                    Kel. Sungai Pangeran, Kec. Ilir Timur I <br>
                    Kota Palembang 30125
                </p>
                <br/>
                <p class="text-footers-size">Telp: (0711) 321053</p>
                <br/>
                <div style="display:flex; color : #fff;">
                    <a class="link_socials"><span class='fa fa-facebook'></span></a>
                    <a class="link_socials"><span class='fa fa-instagram'></span></a>
                    <a class="link_socials"><span class='fa fa-twitter'></span></a>
                    <a class="link_socials"><span class='fa fa-youtube'></span></a>
                </div>
            </div>
            <div class="col-md-3">
                <p style="font-size:20px;font-weight:bold; letter-spacing:1px; color : #fff">Tautan</p>
                <br/>
                <a href="https://www.pu.go.id/" class="text-footers"><p class="text-footers" >Kementerian PU</p></a>
                <a href="http://binamarga.pu.go.id/" class="text-footers"><p class="text-footers" >Direktorat Jenderal Bina Marga</p></a>
                <a href="http://sda.pu.go.id/bbwssumatera8/" class="text-footers"><p class="text-footers" >Balai BWS Sumatera VIII</p></a>
                <a href="http://sipdjd.binamarga.pu.go.id/" class="text-footers"><p class="text-footers" >SIPDJD Provinsi Sumatera Selatan</p></a>
                <a href="http://www.sumselprov.go.id/" class="text-footers"><p class="text-footers" >BPPD Sumatera Provinsi Selatan</p></a>
            </div>
            <div class="col-md-3">
              <p style="font-size:20px;font-weight:bold; visibility:hidden;">Tautan</p>
              <br/>
              <a href="http://www.sumselprov.go.id/" class="text-footers"><p class="text-footers" >Pemerintah Provinsi Sumatera Selatan</p></a>
              <a href="http://www.bappeda.sumselprov.go.id/" class="text-footers"><p class="text-footers" >BAPPEDA Provinsi Sumatera Selatan</p></a>
              <a href="http://sitarung.sumselprov.go.id/" class="text-footers"><p class="text-footers" >SITARUNG Provinsi Sumatera Selatan</p></a>
              <a href="http://lpse.sumselprov.go.id/eproc4" class="text-footers"><p class="text-footers" >LPSE Provinsi Sumatera Selatan</p></a>
              <a href="http://sumsel.atrbpn.go.id/" class="text-footers"><p class="text-footers" >KANWIL / ATR Provinsi Sumatera Selatan</p></a>
          </div>
          <div class="col-md-3">
              <p style="font-size:20px;font-weight:bold;visibility:hidden;">Tautan</p>
              <br/>
              <a href="http://si-ikon.sumselprov.go.id" class="text-footers"><p class="text-footers" >SI-IKON</p></a>
              <a href="https://sirup.lkpp.go.id/" class="text-footers"><p class="text-footers" >Sirup LKPP</p></a>
              <a href="http://bkd.sumselprov.go.id/" class="text-footers"><p class="text-footers" >BKD Provinsi Sumatera Selatan</p></a>
              <a href="http://bpkad.sumselprov.go.id/" class="text-footers"><p class="text-footers" >BPKAD Provinsi Sumatera Selatan</p></a>
          </div>
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
        </div>
    </div>
</div>
    <!-- <div class="last-footer" style="background: url(http://pubmtrsumsel.scafol.id/an-theme/ando/assets/img/footer_art2.png);background-repeat: no-repeat; background-size: cover; top:-1px; position:relative;">
      &nbsp;
  </div> -->
</main>
<div style="background:#ffc928; color:#333; font-weight :  bold; overflow-x:hidden; padding:10px; top : -1px; position:relative;">
  <div class="row">
    <!-- <div class="col-lg-8 col-md-8 col-xs-12 text-left" style="padding-left:110px;font-size:12px;">
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
    </div> -->
    <div class="col-lg-4 col-md-4 col-xs-12 text-left" style="padding-left:90px;font-size:12px;">
        <span>
            © 2019 <a href="https://pubmtrsumsel.scafol.id">Dinas PUBMTR Prov. Sumatera Selatan</a>
        </span>
    </div>
</div>
</div>

<!--<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.2.min.js"></script>-->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="<?php echo assets_url('js/jquery-1.11.1.min.js'); ?>"></script>

<!--<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>-->
<script type="text/javascript" src="<?php echo assets_url('bootstrap/js/bootstrap.min.js'); ?>"></script>

<script type="text/javascript" src="<?php echo assets_url("js/jquery.singlePageNav.min.js ") ?>"></script>

<!--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>-->
<script type="text/javascript" src="<?php echo assets_url("fancybox/source/jquery.fancybox.js ") ?>"></script>
<script type="text/javascript" src="<?php echo assets_url("fancybox/source/helpers/jquery.fancybox-buttons.js ") ?>"></script>
<script type="text/javascript" src="<?php echo assets_url("fancybox/source/helpers/jquery.fancybox-media.js") ?>"></script>
<script type="text/javascript" src="<?php echo assets_url("fancybox/source/helpers/jquery.fancybox-thumbs.js ") ?>"></script>

<script type="text/javascript" src="<?php echo assets_url("jQuery.TosRUs/src/js/jquery.tosrus.min.all.js ") ?>"></script>

<!--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"></script>-->
<script type="text/javascript" src="<?php echo assets_url('owl-carousel/owl.carousel.js'); ?>"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

<!-- <script type="text/javascript" src="<?php echo assets_url("js/jquery.slitslider.js ") ?>"></script> -->

<script type="text/javascript" src="<?php echo assets_url("js/jquery.ba-cond.min.js ") ?>"></script>

<!--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>-->
<script type="text/javascript" src="<?php echo assets_url('js/wow.min.js'); ?>"></script>
<script type="text/javascript" src="<?php echo assets_url('js/imagesloaded.pkgd.min.js'); ?>"></script>
<script type="text/javascript" src="<?php echo assets_url('js/masonry.pkgd.min.js'); ?>"></script>

<script type="text/javascript" src="<?php echo assets_url("js/main.js ") ?>"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-noty/2.3.8/packaged/jquery.noty.packaged.min.js"></script>

<!-- <script src='https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit' async defer></script> -->

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.jssocials/1.1.0/jssocials.min.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.4.1/prism.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.4.1/components/prism-php.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.4.1/components/prism-php-extras.min.js"></script>
<!-- DATATABLES -->
<script src="<?php echo assets_url('datatables/media/js/jquery.dataTables.min.js')?>" type="text/javascript"></script>

<script src="<?php echo assets_url('datatables/media/js/dataTables.bootstrap.min.js')?>" type="text/javascript"></script>

<!-- DATATABLES -->

<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAogXD-AHrsmnWinZIyhRORJ84bgLwDPpg&callback=initMap&language=id">
</script>
<script type="text/javascript">
    var map, marker;

    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            zoom: 8,
            center: {
                lat: -3.31329343,
                lng: 103.89620829
            },
            mapTypeId: 'terrain'
        });

        marker = new google.maps.Marker({
            position: this.map.center,
            map: map,
            draggable: true,
        })

        var geocoder = new google.maps.Geocoder;

        function geocode(params, geocoder) {
            geocoder.geocode({
                'latLng': params.latLng
            }, (results, status) => {
                if (status == google.maps.GeocoderStatus.OK) {
                    if (results[0]) {
                        $('#address').html(
                            `<p style="font-weight: bold;">Lokasi saat ini: ${ results[0].formatted_address }</p>`)
                        var infoWindow = new google.maps.InfoWindow({
                            content: results[0].formatted_address
                        })
                        infoWindow.setOptions({
                            ixelOffset: new google.maps.Size(300, 10)
                        });
                        infoWindow.setPosition(results[0].geometry.location)
                        infoWindow.open(map)
                        return results;
                    } else {
                        alert('Tidak ada tempat yang ditemukan');
                    }
                } else {
                    alert('Geocoder gagal dimuat karena ' + status)
                }
            })
        }

        google.maps.event.addListener(marker, 'click', (evt) => {
            geocode(evt, geocoder)
        })

        google.maps.event.addListener(marker, 'dragend', (evt) => {
            $('#address').html("")
            marker.title = `Lat: ${evt.latLng.lat().toFixed(3)}, Lng: ${evt.latLng.lng().toFixed(3)}`
            $('#latitude').val(evt.latLng.lat().toFixed(8));
            $('#longitude').val(evt.latLng.lng().toFixed(8));
        })

        
        var provinsi = new google.maps.Data();
        provinsi.loadGeoJson('<?= base_url('assets/geojson/Provinsi.geojson')?>')
        provinsi.addListener('click', (event) => {
            let nama_ruas = event.feature.j.Nama_Ruas
            var infoWindow = new google.maps.InfoWindow({
                content: `Ruas Provinsi ${nama_ruas}`
            })
            infoWindow.setPosition(event.latLng)
            infoWindow.open(map)
            setTimeout(() => {
                infoWindow.close()
            }, 3000);
        })
        provinsi.setStyle({
            strokeColor: 'blue',
            strokeWeight: 4
        });
        provinsi.setMap(map);


        $('#btn_search').on('click', (e) => {
            e.preventDefault();
            var lat = $('#latitude').val();
            var long = $('#longitude').val();

            var latLng = new google.maps.LatLng(lat, long);
            map.panTo(latLng);
            marker.setPosition(latLng)
            $('#address').html("")
        })
    }



    $(document).ready(function(){   

        var scroll_start = 0;
        var startchange = $('#startchange');
        var offset = startchange.offset();
        if (startchange.length){
            $(document).scroll(function() { 
                scroll_start = $(this).scrollTop();
                if(scroll_start > offset.top) {
                    $(".navbar-default").css('background-color', '#2055a2');
                } else {
                    $('.navbar-default').css('background-color', 'transparent');
                }
            });
        }
    });



    $(function() {

        var contact_us;

        $(".slug-table").DataTable({
            dom: 'Bfrtip',
            buttons: [
            'csv', 'excel', 'pdf', 'print'
            ]
        });

            // onloadCallback = function() {

            //     contact_us = grecaptcha.render(document.getElementById('recaptcha1'), {
            //         'sitekey': "<?php echo $recaptcha['key'] ?>",
            //         'theme': 'dark'
            //     });

            // }

            $("#kontak-form").on("submit", function(evt) {
                evt.preventDefault();
                if (!$(this)[0].mengirim) {
                    __this = $(this)
                    var val = __this.serialize();

                    var data = {};
                    $.each(__this.serializeArray(), function(i, v) {
                        data[v.name] = v.value;
                    });

                    if (!(data.nama.trim().length > 0)) {
                        noty({
                            text: 'Nama harus diisi',
                            type: 'error',
                            layout: 'center',
                            dismissQueue: true
                        });
                        return;
                    } else if (!(data.email.trim().length > 0)) {
                        noty({
                            text: 'Email harus diisi',
                            type: 'error',
                            layout: 'center',
                            dismissQueue: true
                        });
                        return;
                    } else if (!(data.judul.trim().length > 0)) {
                        noty({
                            text: 'Judul harus diisi',
                            type: 'error',
                            layout: 'center',
                            dismissQueue: true
                        });
                        return;
                    } else if (!(data.pesan.trim().length > 0)) {
                        noty({
                            text: 'Pesan harus diisi',
                            type: 'error',
                            layout: 'center',
                            dismissQueue: true
                        });
                        return
                    } else if (!(data['g-recaptcha-response'].trim().length > 0)) {
                        noty({
                            text: 'Captcha harus diisi',
                            type: 'error',
                            layout: 'center',
                            dismissQueue: true
                        });
                        return;
                    }

                    __this[0].mengirim = true;
                    var action = __this.attr("action");
                    __this.find("button").hide();
                    __this.find(".cssload-container").show();
                    $.ajax({
                        type: "POST",
                        url: action,
                        data: val,
                        cache: false,
                        dataType: 'json',
                        success: function(a) {
                            if (a.status == 'sukses') {
                                noty({
                                    text: "Pesan anda terkirim. Terima kasih telah mengubungi kami",
                                    type: 'success',
                                    layout: 'center',
                                    dismissQueue: true
                                });
                                $('form#kontak-form').find("input[type=text],input[type=password], textarea").val("");
                            } else if (a.status == 'error') {
                                noty({
                                    text: a.name,
                                    type: 'error',
                                    layout: 'center',
                                    dismissQueue: true
                                });
                            }

                        },
                        error: function() {
                            noty({
                                text: "Cek koneksi internet anda",
                                type: 'error',
                                layout: 'center',
                                dismissQueue: true

                            });
                        },
                        complete: function() {
                            grecaptcha.reset(contact_us);
                            __this.find("button").show();
                            __this.find(".cssload-container").hide();
                            __this[0].mengirim = false;
                        }
                    });
                }
            });

            // var $grid = $(".grid").masonry({
            //     itemSelector: '.grid-item',
            // });

            // $grid.imagesLoaded().progress(function() {
            //     $grid.masonry('layout');
            // });

            // $(".grid a").tosrus({
            //     caption: {
            //         add: true
            //     }
            // });

        });

        // $("#share").jsSocials({
        //     shares: ["twitter", "facebook", "googleplus", "linkedin", "pinterest", "stumbleupon", "whatsapp"]
        // });
    </script>

    <?php echo $informasi['custom_javascript']; ?>

    <?php echo $google_analytics["script"]; ?>

</body>

</html>
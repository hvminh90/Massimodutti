<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalMap.aspx.cs" Inherits="Massimodutti.ModalMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
   
<body>
    <form id="form1" runat="server">
         <div class="modalbg"></div>
            <div class="modalcont">
<div class="modalinner">
                    <form id="buscarTiendasForm" action="" method="post">
                        <div class="modaltitle">BẢN ĐỒ CỬA HÀNG</div>
                        <div class="modalscrollable">
                            <div id="shopmap">
                                <div class="innermap">
                                    <div id="map">
                                        <div id="mapa_tooltip" class="mapa_tooltip">
                                            <a id="tooltipClose" class="close_modal" href="javascript:void(0)"></a>

                                            <p id="mCalle">&nbsp;</p>
                                            <p id="mCp">&nbsp; &nbsp;</p>
                                            <p id="mSeccion">&nbsp;</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="shopform">
                                <div id="formfix" style="padding-left:20px;padding-right:20px;max-width:250px;">
                                    <p>
                                    </p>
                                    <p class="mspot_storelocator" style="font-size:15px;">Nhãn hàng thời trang QO.</p>
                                    <p>339/17A Nguyễn Thái Bình, P.12, Quận Tân Bình, Tp.Hồ Chí Minh</p>
                                    <p>DT: 0944 29 9091</p>
                                    <p>Website: QO.com.vn</p>
                                    <p>E-mail: QO.com.vn@gmail.com</p>
                                    <br>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
        <a class="modalclose" onclick="closeModal();"></a></div>
    </form>
       <script src="Include/js/mass-open-modal.js"></script>
     <script>

         function initmap() {
             var map_options = {
                 center: new google.maps.LatLng(10.795937, 106.652387),
                 zoom: 15,
                 mapTypeId: google.maps.MapTypeId.ROADMAP
             };

             var google_map = new google.maps.Map(document.getElementById("map"), map_options);

             var info_window = new google.maps.InfoWindow({
                 content: 'loading'
             });

             var t = [];
             var x = [];
             var y = [];
             var h = [];

             t.push('Nhãn hàng thời trang QO');
             x.push(10.795937);
             y.push(106.652387);
             h.push('<p><strong>Nhãn hàng thời trang QO</strong><br/>339/17A Nguyễn Thái Bình,Phường 12,Quận Tân Bình, Hồ Chí Minh</p>');



             var i = 0;
             for (item in t) {
                 var m = new google.maps.Marker({
                     map: google_map,
                     animation: google.maps.Animation.DROP,
                     title: t[i],
                     position: new google.maps.LatLng(x[i], y[i]),
                     html: h[i]
                 });

                 //m.setTitle((i + 1).toString());
                 attachSecretMessage(m);
                 i++;
             }

             function attachSecretMessage(marker) {
                 var infowindow = new google.maps.InfoWindow({
                     content: 'Nhãn hiệu thời trang QO'
                 });

                 google.maps.event.addListener(marker, 'click', function () {
                     //alert('123123');
                     infowindow.open(marker.get('map'), marker);
                 });
                 google.maps.event.addListener(marker, 'mouseover', function () {
                     //alert('123123');
                     infowindow.open(marker.get('map'), marker);
                 });
             }
         }

         $(document).ready(function () {
             initmap();

             //$('div.modalbg').click(function () {
             //    //alert("123123");
             //    $('#tiendas').fadeOut();
             //});
         });
    </script>
</body>
</html>

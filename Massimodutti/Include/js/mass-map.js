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
        for ( item in t ) {
            var m = new google.maps.Marker({
                map:       google_map,
                animation: google.maps.Animation.DROP,
                title:     t[i],
                position:  new google.maps.LatLng(x[i],y[i]),
                html:      h[i]
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
                infowindow.open(marker.get('map'), marker);
            });
        }
    }

$(document).ready(function() { 
     initmap(); 
    
    $('div.modalbg').click(function(){
    //alert("123123");
    $('#tiendas').fadeOut();
});
});

function showMap(){
     
     $('#tiendas').show();
     initmap(); 
}
function closeMap(){
    $('#tiendas').fadeOut();
}


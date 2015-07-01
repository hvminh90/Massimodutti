function initmap() {
        var map_options = {
            center: new google.maps.LatLng(10.762448,106.690236),
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

        t.push('Lộc Nhật Việt');
        x.push(10.762448);
        y.push(106.690236);
        h.push('<p><strong>Lộc Nhật Việt</strong><br/>212Bis, Trần Hưng Đạo, Phường Nguyễn Cư Trinh, Quận 1, Hồ Chí Minh</p>');

       

        var i = 0;
        for ( item in t ) {
            var m = new google.maps.Marker({
                map:       google_map,
                animation: google.maps.Animation.DROP,
                title:     t[i],
                position:  new google.maps.LatLng(x[i],y[i]),
                html:      h[i]
            });

            
            i++;
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


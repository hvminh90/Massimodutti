$(function() {
   // var header = $("header");
    $(window).on('scroll', function() {
        if($(window).scrollTop() > 100){
            $('header').addClass('unfolded-header');
        } else {
            $('header').removeClass('unfolded-header');
        }
    });
    
    
    $('#main-menu ul').hover(function(){
        $('#sub-menu').css('display','block');
        //$('#sub-menu').toggle();//css('display','none');
       
        $(this).find('li a').mouseenter(function(){
             $('#sub-menu').find('div').css('display','none');
            var idSubmenu = '#'+$(this).data('id');
            console.log('id'+idSubmenu);
            $('#sub-menu').find(idSubmenu).css('display','block');
        });
    },function(){
        if($("#sub-menu").is(':hover')){
            $('#sub-menu').css('display','block');
        }
        else{
           $('#sub-menu').css('display','none');
        }
    });
    
    $("#sub-menu").hover(function(){},
                        
                        function(){
    $("#sub-menu").css('display','none');
    });
    
    $('#footer-top div ul li').mouseenter(function () {
       
        $(this).animate({ top: "25px" });
            $(this).find('a div').animate({ 'margin-top': '6px', 'opacity': '1' });
            $(this).find('span').animate({ 'padding': '13px 0' });
            $(this).find('span div').animate({ 'top': '34px' });

    });
    $('#footer-top div ul li').mouseleave(
                                    function() {
                                        $(this).animate({ top: "50px" });
                                        $(this).find('a div').animate({'margin-top':'19px','opacity':'0'});
                                        $(this).find('span').animate({'padding':'19px 0'});
                                        $(this).find('span div').animate({'top':'46px'});
                                    })
});


var pageLoad = {
    1: 'frequently-asked-questions.html',
    2: 'general-information.html',
    3: 'how-to-buy.html',
    4: 'fast-checkout.html',
    5: 'guest-checkout.html',
    6: 'sign-up.html',
    7: 'transport-and-deliveries.html',
    8: 'exchanges-and-returns.html',
    9: 'payments.html',
    10: 'personal-tailoring.html',
    11: 'watches.html',
    12: 'footwear.html',
    13: 'policy.html',
    14: 'cookies-information.html'
};

var loadPageHelp = function (page,event) {
    removeClassAMenu();
    $('#menu-active').css('top', 195 + ((page - 1) * 55));
    $(event.target).addClass('active');
   /* $.get('../html_help_partial_page/' + pageLoad[page], function (result) {
        $result = $(result);

        $result.find('div').appendTo('#mspotContainer');
        $result.find('script').appendTo('#new_content');
    }, 'html');*/
    $('#mspotContainer').load('../html_help_partial_page/' + pageLoad[page]);
}
var removeClassAMenu = function () {
    
    $('ul#shopping_guide_menu').each(function () {
        var aExpand = $(this).find('li a');
        aExpand.removeClass('active');
    });
}
$(function () {
    //alert("123");
    $('#mspotContainer').load('../html_help_partial_page/' + pageLoad[1]);
    //$('#list_faqs ul li').click(function () {
    //    //alert("123");
    //    if ($(this).find('span').hasClass('active')) {
    //        $(this).find('span').removeClass('active');
    //        $(this).find('div').hide();
    //    }
    //    else {
    //        removeExpand();
    //        $(this).find('span').addClass('active');
    //        $(this).find('div').show();
    //    } 
    //});

    //var removeExpand = function () {
    //    $('#list_faqs ul').each(function () {
    //        var liExpand = $(this).find('li span');
    //        var divExpand = $(this).find('li div');
    //        liExpand.removeClass('active');
    //        divExpand.hide();
    //    });
    //}

});
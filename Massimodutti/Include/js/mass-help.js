
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
var arrayLinkHelp = ['cham-soc-khach-hang', 'huong-dan-mua-hang', 'giao-hang-toan-quoc', 'chinh-sach-doi-tra',
'faq','lien-he'
];

var loadPageHelp = function (page, event) {
    removeClassAMenu();
    $('#menu-active').css('top', 195 + ((page - 1) * 56));
    $(event.target).addClass('active');
    /* $.get('../html_help_partial_page/' + pageLoad[page], function (result) {
         $result = $(result);
 
         $result.find('div').appendTo('#mspotContainer');
         $result.find('script').appendTo('#new_content');
     }, 'html');*/
    $('#mspotContainer').load('Include/html_help_partial_page/' + pageLoad[page]);
}
var removeClassAMenu = function () {

    $('ul#shopping_guide_menu').each(function () {
        var aExpand = $(this).find('li a');
        aExpand.removeClass('active');
    });
}
var resetLinkHelp = function () {
    $('#footer-menu ul li').each(
        function () {
            var aLink = $(this).find('a');
            aLink.attr('data-go', '0');
        }
        );
}
var loadPageHelpOnLink = function (page) {
    removeClassAMenu();
    $('#menu-active').css('top', 195 + ((page - 1) * 56));
    $("ul#shopping_guide_menu").find("[data-link='" + page + "']").addClass('active');
    $('#mspotContainer').load('Include/html_help_partial_page/' + pageLoad[page]);
}
$(function () {

    //alert("123");
    //alert(getUrlParameter());
    if (getUrlParameter().length <= 0) {
        $('#mspotContainer').load('Include/html_help_partial_page/' + pageLoad[1]);
    }
    else {
        $('#footer-menu ul li').each(function () {
            var aLink = $(this).find('a');
            var urlHelp = getUrlParameter();
            if (aLink.attr('data-link') === urlHelp) {
                // alert(aLink.attr('data-help'));
                loadPageHelpOnLink(aLink.attr('data-help'));
            }
        });
    }

    $('#footer-menu ul li a').click(function () {
        if (window.location.toString().indexOf('Help.aspx#') > -1) {
            loadPageHelpOnLink($(this).attr('data-help'));
            //$("#shopping_guide_menu").attr("tabindex", -1).focus();
            $('html, body').animate({ scrollTop: $("#left_container").offset().top }, 'slow');
            //$('#left_container').focus();
            //$("ul#shopping_guide_menu").find("[data-link='" + $(this).attr('data-help') + "']").focus();
        }
        else { location.href = 'Help.aspx#' + $(this).attr('data-link'); }
    });


    //$('#mspotContainer').load('../html_help_partial_page/' + pageLoad[1]);
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


function getUrlParameter() {
    var sPageURL = window.location.toString();
    sPageURL = sPageURL.substring(sPageURL.indexOf('#') + 1, sPageURL.length);
    if (isInArray(sPageURL, arrayLinkHelp)) {
        return sPageURL;
    }
    return '';
}
function isInArray(value, array) {
    return array.indexOf(value) > -1;
}
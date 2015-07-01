//function openModalLogin(url) {
//    //alert("12312312");
//    //var popUpObj;
//    //popUpObj = window.open(url, "Popup", "toolbar=no,scrollbars=no,location=no" +

//    //",statusbar=no,menubar=no,resizable=0,width=100," +

//    //"height=100,left = 490,top = 262");

//    //popUpObj.focus();
//    window.showModalDialog(url, "#1", "dialogHeight: 300px; dialogWidth: 600px;" +
//                    "dialogTop: 190px;  dialogLeft: 220px; edge: Raised; center: Yes;" +
//                    "help: No; resizable: No; status: No;");
//   // window.returnValue = true;
//}
//function OpenModalDialog(url,diaHeight)
//{
//    var vReturnValue;
//    if(diaHeight == null || diaHeight == "")
//        diaHeight = "300";
//    if(url != null)
//    {
//        vReturnValue = window.open(url,"#1","dialogHeight: " + diaHeight +"px; dialogWidth: 600px; dialogTop: 190px; dialogLeft: 220px; edge: Raised; center: Yes; help: No; resizable: No; status: No;");
//    }
//    else
//    {
//        alert("No URL passed to open");
//    }
//    if(vReturnValue != null && vReturnValue == true)
//    {
//        //__doPostBack(btnName,'');
//        //alert(vReturnValue);
//        return vReturnValue    
//    }
//    else
//    {   //alert(vReturnValue);
//        //alert(vReturnValue);
//        return false;
//    }
//}
//function ShowModalPopup() {
//    $find("mpe").show();
//    return false;
//}
//function HideModalPopup() {
//    $find("mpe").hide();
//    return false;
//}
//$(function () {
//    modalPosition();
//    $(window).resize(function () {
//        modalPosition();
//    });
//    $('.openModal').click(function (e) {
//        $('.modal, .modal-backdrop').fadeIn('fast');
//        e.preventDefault();
//    });
//    $('.close-modal').click(function (e) {
//        $('.modal, .modal-backdrop').fadeOut('fast');
//    });
//});
//function modalPosition() {
//    var width = $('.modal').width();
//    var pageWidth = $(window).width();
//    var x = (pageWidth / 2) - (width / 2);
//    $('.modal').css({ left: x + "px" });
//}

function openModalLogin(url) {
    $('#login-modal').css('display', 'block');
}
function closeModal() {
    $('#tiendas').fadeOut();
    $('#tiendas').empty();
}
function openModal(url, modalOption) {
    var modalContent = $('#tiendas').find('.modalcont');

    //for (var key in modalOption) {
    //    modalContent.css(key,modalOption[key]);
    //}
    $('#tiendas').empty();
    //$('#tiendas').
    $('#tiendas').load(url);
    $('#tiendas').show();
   // initmap(); 
}

$(document).ready(function () {
    //initmap();

    $('div.modalbg').click(function () {

        //alert("123123");
        $('#tiendas').fadeOut();
        $('#tiendas').empty();
    });
});
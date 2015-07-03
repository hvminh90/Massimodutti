<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalAccount.aspx.cs" Inherits="Massimodutti.ModalAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Include/css/mass-modal-account.css" rel="stylesheet" />
   <%-- <link href="Include/css/jquery.jscrollpane.css" rel="stylesheet" />--%>
     <link href="Include/css/jquery.mCustomScrollbar.css" rel="stylesheet" />
    <%-- <link href="Include/css/mass-scrollpanel.css" rel="stylesheet" />--%>
       <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.11.3.min.js"></script>
    <script src="Include/js/mass-open-modal.js"></script>
   <%--<script src="Include/js/jscrollPanel/jquery.jscrollpane.min.js"></script>
    <script src="Include/js/jscrollPanel/jquery.mousewheel.js"></script>--%>
   
</head>
<body>
    
    <form id="form1" runat="server">
        	<script>
        	    //$(window).load(function () {
        	    //    $('.scroll-pane').jScrollPane();
        	    //});
        	    //$(document).ready(function () {
        	        // Your JS code.

        	        //var settings = {
        	        //    showArrows: true
        	        //};
        	        //var pane = $('.scroll-pane')
        	        //pane.jScrollPane();
        	        //var api = pane.data('jsp');
   

        	        //// Every second add some new content...
        	        ////setInterval(
                    ////    function () {
                    ////        //api.reinitialise();
                    ////    },
                    ////    1000
                    ////);
        	       
       
        	    //});
        	</script>
        <%--       <div class="overlay_bg_cesta" style="display: block;"></div>
 <div class="popupHtmlCesta scroll-y" style="max-height: 80%; width: 770px; height: auto; display: block; margin-top: 20px;">--%>
        <div class="modalbg"></div>
        <div  id="content-1" class=" modalcont scroll-pane" style="max-width:800px;width:800px;min-width:800px;height:450px;min-height:450px;padding-top:10px">
           
			
                        <a class="close_modal miCuentaPrincipal" href="javascript:void(0)" id="close_modal">&nbsp;</a><div id="logo" class="b miCuentaPrincipal"></div>
                       <div id="info-account">
                        <div id="menu_modal" class="w miCuentaPrincipal">
                            <ul>
                                <li id="datosAcceso">
                                    <a href="javascript:void(0);" class="gaPage" onclick="openInfoAccount()">THÔNG TIN</a>
                                </li>
                                <li id="datosPersonales">
                                    <a href="javascript:void(0);" class="gaPage activeSection" onclick="openInfoOrder()">THÔNG TIN ĐƠN HÀNG</a>
                                </li>
                            
                            </ul>
                        </div>
                        <div id="content_micuenta" class="miCuentaPrincipal info-account">

                            <div>
                                <p class="title_modal">MY ACCOUNT</p>
                                <div id="mspot" class="datos_personales">
                                    <!--  <img src="https://static.massimodutti.net/3/static2/marketingSpots/UserAccount/MD2_ESpot_MyAccountAccessDetails/img/home.jpg?20150701050000"/>-->
                                    <p class="title">THÔNG TIN</p>
                                    <p class="subtitulo">Việc cập nhật thông tin của bạn giúp cho những lần mua hàng của bạn lần tới thuận tiện và nhanh hơn.</p>
                                </div>
                            </div>

                            <div class="data-ga-logic-universal" data-ga-logic-universal="/Mi_Cuenta/Datos_personales">
                                <form id="datosPersonalesForm" action="https://www.massimodutti.com/webapp/wcs/stores/servlet/ItxUserAccountPersonalDataUpdateCmd" method="post" onsubmit="javascript:prepararFormulario1();" novalidate="novalidate">
                                    <input type="hidden" id="tipoDatosPersonales_persona" name="typeDatta" value="personal" class="radio_i">


                                    <div class="row">
                                        <div class="block">
                                            <label for="nombre" id="name">Họ và tên</label>
                                            <input type="text" id="nombre" name="firstName">
                                        </div>
                                        
                                        <div class="block r">
                                            <label>Tỉnh / Thành phố</label>
                                            <select>
                                                <option>Tp.Hồ Chí Minh</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="block">
                                            <label for="nombre" id="name">Sinh nhật</label>
                                            <input type="text" id="nombre" name="firstName">
                                            <label for="nombre" id="name">(Vd: 20/10/1993)</label>
                                        </div>
                                        
                                        <div class="block r">
                                            <label>Quận / Huyện</label>
                                            <select>
                                                <option>Quận 1</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="block">
                                            <label for="nombre" id="name">Điện thoại</label>
                                            <input type="text" id="nombre" name="firstName">
                                        </div>
                                        
                                        <div class="block r">
                                           <label for="nombre" id="name">Địa chỉ</label>
                                            <input type="text" id="nombre" name="firstName">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="block">
                                            <label for="nombre" id="name">Email</label>
                                            <input type="text" id="nombre" name="firstName">
                                        </div>
  
                                    </div>
                                   
                                    <div class="boton">
                                        <a id="datosPersonalesBtn" href="javascript:void(0)" onclick="javascript:prepararFormulario1();enviarFormulario1();" class="acc_butt">UPDATE</a>
                                        <input type="submit" style="float: right; height: 1px; right: 1003px; width: 1px; height: 1px; position: absolute;">
                                        <!-- Para que al pulsar enter se envie el formulario -->
                                    </div>
                                </form>
                            </div>

                           
                        </div>

                           <!--order-->

                           <div id="content_micuenta" class="miCuentaPrincipal info-order " style="display:none;">

                            <div>
                                <p class="title_modal">MY ACCOUNT</p>
                                <div id="mspot" class="datos_personales">
                                    <!--  <img src="https://static.massimodutti.net/3/static2/marketingSpots/UserAccount/MD2_ESpot_MyAccountAccessDetails/img/home.jpg?20150701050000"/>-->
                                    <p class="title">THÔNG TIN ĐƠN HÀNG</p>
                                   
                                </div>
                            </div>

                            <div class="data-ga-logic-universal" data-ga-logic-universal="/Mi_Cuenta/Datos_personales">
                                

                                    <div class="row">
	                                            <table id="articulos" class="articulospedidos" cellspacing="0" cellpadding="0">
	                                                <thead>
	                                                    <tr>                            
	                                                        <th>DATE</th>
	                                                        <th>NUMBER</th>
	                                                        <th>STATUS</th>
	                                                        <th>AMOUNT</th>
	                                                        <th>&nbsp;</th>
	                                                    </tr>
	                                                </thead>
	                                                <tbody id="tablaPedidos"></tbody>
	                                                <tfoot>
	                                                </tfoot>
	                                            </table>            
	                                        </div>

                                    
                            </div>

                           
                        </div>
                        </div>

                     


            <a class="modalclose" onclick="closeModal();" style="top:-3px;right:0"></a>
         
        </div>
        
        <script src="Include/js/jscrollPanel/jquery.mCustomScrollbar.concat.min.js"></script>
	
	<script>
	   
	        $(document).ready(function () {

	            $("#content-1").mCustomScrollbar({
	                
	            });
				$(".mCSB_dragger_bar").css({'background-color':'#696864','width':'5px','border-radius':'0'});
				$(".mCSB_draggerRail").css({'background-color':'#696864'});

				
	        });
	        function openInfoAccount() {
            
	            $(".info-order").css("display", "none");
	            $(".info-account").css("display","block");

	        }
	        function openInfoOrder() {
	            //alert("123123");
	            $(".info-order").css("display","block");
	            $(".info-account").css("display","none");
	        }
	</script>
    </form>
    
</body>
</html>

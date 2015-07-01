<%@ Page Title="" Language="C#" MasterPageFile="~/Massimodutti.Master" AutoEventWireup="true" CodeBehind="ShopingCart.aspx.cs" Inherits="Massimodutti.ShopingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="center">

    <div id="tunel">
        <div class="cPage-title">GIỎ HÀNG</div>
        <div id="conArticulos">
            <table id="articulos" cellspacing="0" cellpadding="0">
                <thead>
                <tr>
                    <th colspan="2" class="a1">Sản phẩm</th>
                    <th class="a2">Màu sắc</th>
                    <th class="a3">SIZE</th>
                    <th class="a4">Số lượng</th>
                    <th class="a5">Thành tiền</th>
                </tr>
                </thead>
                <tbody id="tablaPedidos">
                <tr>
                    <td class="a6"><a
                            onclick="updateCantidadProd('https://www.massimodutti.com/webapp/wcs/stores/servlet/ItxOrderManageCmd?viewname=ShopCartJSON&amp;catalogId=30220004&amp;action=deleteItem&amp;errorViewName=ShopCartJSON&amp;orderId=58244596&amp;langId=-1&amp;quantity=0&amp;orderItemId=165121251&amp;storeId=34009450'); trackingCambiarCantidad(1.0,'Cesta_de_Compra',0,'eliminar')"
                            class="cruz" href="#">&nbsp;</a> <img style="cursor: pointer"
                                                                  src="https://static.massimodutti.net/3/photos/2015/I/0/1/p/5041/553/802/5041553802_1_1_5.jpg?timestamp=1434723601934"
                                                                  onclick="cargaPopUpProducto(6199943,true)"
                                                                  width="55px;"></td>
                    <td><p class="descr" onclick="cargaPopUpProducto(6199943,true)" style="cursor: pointer">HIGH WAIST
                        LOOSE-FIT TROUSERS</p>    <span class="ref">Ref. 0504155380236</span> <input type="hidden"
                                                                                                     value="http://www.massimodutti.com/es/en/women/trousers/view-all/high-waist-loose-fit-trousers-c911198p6199943.html">
                    </td>
                    <td class="center"><p>GREY</p></td>
                    <td class="center"><p>36</p></td>
                    <td class="center">
                        <div class="contadores"><a
                                onclick="updateCantidadProd('https://www.massimodutti.com/webapp/wcs/stores/servlet/ItxOrderManageCmd?viewname=ShopCartJSON&amp;catalogId=30220004&amp;action=updateItem&amp;errorViewName=ShopCartJSON&amp;orderId=58244596&amp;langId=-1&amp;quantity=0&amp;orderItemId=165121251&amp;storeId=34009450'); trackingCambiarCantidad(1,'Cesta_de_Compra',0,'decrementar');"
                                class="eliminar" href="#"> <img
                                src="https://static.massimodutti.net/3/static2/img/ico_menos.png" class="menos"> </a>
                            <input type="text" class="quantity" value="1" readonly="true"> <a
                                    onclick="updateCantidadProd('https://www.massimodutti.com/webapp/wcs/stores/servlet/ItxOrderManageCmd?viewname=ShopCartJSON&amp;catalogId=30220004&amp;action=updateItem&amp;errorViewName=ShopCartJSON&amp;orderId=58244596&amp;langId=-1&amp;quantity=2&amp;orderItemId=165121251&amp;storeId=34009450'); trackingCambiarCantidad(1,'Cesta_de_Compra',0,'incrementar');"
                                    class="aniadir" href="#"> <img
                                    src="https://static.massimodutti.net/3/static2/img/ico_mas.png" class="mas"> </a>
                        </div>
                    </td>
                    <td class="right"><p class="totalProduct">59<span class="decimal">.95</span>&nbsp;€&nbsp;</p>
                        <input type="hidden" id="unitPrice" value="59.95000"> <input type="hidden"
                                                                                     class="totalProductDec"
                                                                                     value="59.95"></td>
                </tr>
                <tr class="noborde sepTop">
                    <td colspan="5" class="right"><p><strong>Thanh toán</strong></p></td>
                    <td class="right"><p><strong id="totalProducts">59<span class="decimal">.95</span>&nbsp;€&nbsp;
                    </strong></p></td>
                </tr>
                <tr id="titGastosEnvio" class="noborde gastos">
                    <td colspan="5" class="right"><p><strong>Giảm giá</strong></p></td>
                    <td class="right"><p><strong>3<span class="decimal">.95</span>&nbsp;€&nbsp;</strong></p><input
                            type="hidden" id="shippingPriceDec" value="3.95000"></td>
                </tr>
                <tr class="noborde selectDesc" id="inicioDescuentos">
                    <td  colspan="6">
                        <div class="boxtitle clearfix" style="margin-top:0">
                            <a class="cPage-gift-code-a" href="javascript:void(0)">Nhập mã giảm giá của bản ở đây</a>
                            
                            <form>
                                <input class="input-gift-code" type="text" placeholder="VD:QO#2413*668420"/>
                                <input class="input-gift-code" style="width:100px;cursor:pointer" type="button" value="Nhập"/>
                            </form>
                        </div>

                    </td>
                </tr>
                <tr class="noborde">
                    <td colspan="6" class="right"></td>
                </tr>
                
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="5" class="right"><p>Tổng thanh toán</p></td>
                    <td class="right" style="width:10%;"><p id="pCart-total-cost">63<span class="decimal">.90</span>&nbsp;€&nbsp;
                    </p>       </td>
                </tr>
                </tfoot>
            </table>
				    <%--<span class="iva">
				    	<!--VAT included-->
							   	VAT included
				    </span>--%>
            <!-- Begin ItxContentSpotDisplay.jsp  (MD2_ESpot_EnvolverRegalo) -->
            <!-- End ItxContentSpotDisplay.jsp (MD2_ESpot_EnvolverRegalo) -->


            <div class=" clearfix">
                
            </div>
            <!-- Begin ItxContentSpotDisplay.jsp  (MD2_ESpot_EnvoltorioRegalo) -->

        </div>
        <div class="botonera baja">

            <a href="#"
               onclick="javascript:if(Inditex) {Inditex.trackEvent('/Cesta_de_Compra','seguir_comprando');Inditex.trackEvent( categoryEvent,'Seguir_comprando',null,true);}gotoHome(true);"
               class="add_art" style="margin-left: 0%;">QUAY LẠI CỬA HÀNG</a>


            <div class="bot_sig">
                <input type="hidden" id="iUrlLogon"
                       value="https://www.massimodutti.com/webapp/wcs/stores/servlet/StaticLogonGuestUserView?catalogId=30220004&amp;urlToRedirect=https%3A%2F%2Fwww.massimodutti.com%2Fwebapp%2Fwcs%2Fstores%2Fservlet%2FOrderShippingPage%3FcatalogId%3D30220004%26langId%3D-1%26storeId%3D34009450&amp;goToShopCart=true&amp;langId=-1&amp;storeId=34009450&amp;processOrder=true">
                <a id="botonContinuar" href="ShippingInformation.aspx">Tiếp tục Thanh Toán</a>
            </div>

        </div>
    </div>
    <br style="clear:both">
</div>
</asp:Content>

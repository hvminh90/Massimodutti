<%@ Page Title="" Language="C#" MasterPageFile="~/Massimodutti.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Massimodutti.OrderCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="center">

        <div id="tunel">
            <div class="cPage-title">ĐẶT HÀNG</div>
            <div id="inicio">
                <div class="">
                    <table id="articulos" cellspacing="0" cellpadding="0">
                        <thead>
                            <tr>
                                <th colspan="6">CHI TIẾT GIỎ HÀNG</th>
                            </tr>
                        </thead>
                        <tbody id="cuerpoTabla">
                            <tr class="nom">
                                <td colspan="2">
                                    <p><strong>Sản phẩm</strong></p>
                                </td>
                                <td>
                                    <p><strong>Màu sắc</strong></p>
                                </td>
                                <td>
                                    <p><strong>Size</strong></p>
                                </td>
                                <td>
                                    <p><strong>Số lượng</strong></p>
                                </td>
                                <td style="width: 100px;">
                                    <p><strong>Tổng</strong></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="https://static.massimodutti.net/3/photos/2015/I/0/1/p/5041/553/802/5041553802_1_1_5.jpg?timestamp=1434723601934" width="55px;"></td>
                                <td>
                                    <p>HIGH WAIST LOOSE-FIT TROUSERS</p>
                                    <span>Ref. 0504155380236</span></td>
                                <td class="center">
                                    <p>GREY</p>
                                </td>
                                <td class="center">
                                    <p>36</p>
                                </td>
                                <td class="center">
                                    <p>1</p>
                                </td>
                                <td class="right">
                                    <p>59<span class="decimal">.95</span>&nbsp;€&nbsp;</p>
                                </td>
                            </tr>
                            <tr class="noborde">
                                <td colspan="5" class="right">
                                    <p><strong>Tổng cộng</strong></p>
                                </td>
                                <td class="right">
                                    <p><strong id="totalArticlesPrice" sinformato="59.95000">59<span class="decimal">.95</span>&nbsp;€&nbsp;</strong></p>
                                </td>
                            </tr>
                            <tr class="noborde shippingMode">
                                <td colspan="5" class="right">
                                    <p id="shippingMode"><strong>Chiết khấu</strong></p>
                                </td>
                                <td class="right">
                                    <p><strong id="shippingPrice">3<span class="decimal">.95</span>&nbsp;€&nbsp;</strong></p>
                                </td>
                            </tr>
                            <tr class="noborde shippingMode">
                                <td colspan="5" class="right">
                                    <p id="shippingMode"><strong>Vận chuyển</strong></p>
                                </td>
                                <td class="right">
                                    <p><strong id="shippingPrice">3<span class="decimal">.95</span>&nbsp;€&nbsp;</strong></p>
                                </td>
                            </tr>
                            <tr class="noborde shippingMode">
                                <td colspan="5" class="right">
                                    <p id="shippingMode"><strong>Tổng giá trị thanh toán</strong></p>
                                </td>
                                <td class="right">
                                    <p><strong id="shippingPrice">3<span class="decimal">.95</span>&nbsp;€&nbsp;</strong></p>
                                </td>
                            </tr>
                        </tbody>
                        <%--<tfoot>
                            <tr class="tfoot_env">
                                <td colspan="5" class="right">
                                    <p>PURCHASE TOTAL</p>
                                </td>
                                <td class="right">
                                    <p>
                                        <label id="totalPrice">63<span class="decimal">.90</span>&nbsp;€&nbsp;</label></p>
                                </td>
                            </tr>
                        </tfoot>--%>
                    </table>
                    
                    <br />
                    <%--<p class="title_12">BILLING AND DELIVERY DETAILS</p>--%>
                    <table>
                        <tr>
                            <td width="48%" style="border-bottom:1px solid #b3b3b3">
                                    <div class="column" id="billingAddress" style="width:auto;float:none">
                        <p class="title_12">THÔNG TIN NHẬN HÀNG</p>
                        <p name="nombre">ưeqw qưeqwe</p>
                        <p name="direccion" style="display: none;"></p>

                        <p name="cp" style="display: none;"></p>
                        <p name="ciudad" style="display: none;"></p>
                        <p name="pais">Spain</p>
                        <p name="telefono">+34 123123123</p>
                        <p name="email">binhck2@gmail.com</p>
                        <%--<p class="pCart-update-info">CẬP NHẬT THÔNG TIN</p>--%>
                        <p style="margin-top:20px;margin-bottom:0"><strong>CẬP NHẬT THÔNG TIN</strong></p>
                    </div>
                            </td>
                            <td width="4%"></td>
                            <td width="48%" style="border-bottom:1px solid #b3b3b3;vertical-align:top">
                                <div class="column r" id="shippingAddress" style="width:auto" >
                        <p class="title_12">HÌNH THỨC THANHH TOÁN</p>
                       
                        <p style="margin-top:20px;" name="nombre"><label style="position:relative;padding-left:20px;"><input type="radio" name="payment" style="left:0;position:absolute;top:1px"/>Nhận hàng & Thanh toán (COD).</label></p>
                        <p name="direccion"><label style="position:relative;padding-left:20px;"><input type="radio" name="payment" style="left:0;position:absolute;top:1px"/>Chuyển khoản qua ngân hàng (Miễn phí giao hàng).</label></p>
                         <p class="pCart-border-bottom"></p>
                    </div>

                            </td>
                        </tr>
                    </table>
                    
                    
        
                </div>
            </div>
              <div class="botonera baja">

            <a href="Index.aspx"
               
               class="add_art" style="margin-left: 0%;">TRỞ LẠI CỬA HÀNG</a>


            <div class="bot_sig">
                <input type="hidden" id="iUrlLogon"
                       value="https://www.massimodutti.com/webapp/wcs/stores/servlet/StaticLogonGuestUserView?catalogId=30220004&amp;urlToRedirect=https%3A%2F%2Fwww.massimodutti.com%2Fwebapp%2Fwcs%2Fstores%2Fservlet%2FOrderShippingPage%3FcatalogId%3D30220004%26langId%3D-1%26storeId%3D34009450&amp;goToShopCart=true&amp;langId=-1&amp;storeId=34009450&amp;processOrder=true">
                <a id="botonContinuar" href="OrderComplete.aspx">ĐẶT HÀNG</a>
            </div>

        </div>
        </div>

        <br style="clear: both">
    </div>
</asp:Content>

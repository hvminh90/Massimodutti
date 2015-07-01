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
                        <asp:Repeater ID="rptGioHang" runat="server" OnItemCommand="rptGioHang_ItemCommand">
                            <ItemTemplate>
                                <tr>

                                    <td class="a6">

                                        <%--<a
                                            onclick=" return confirm('Bạn chắc chắn muốn xóa sản phẩm này ra khỏi giỏ hàng?');"
                                            class="cruz">&nbsp;</a>--%>
                                        <asp:ImageButton ID="imgbtnDel" runat="server" CssClass="cruz" CommandName="cmdDel" OnClientClick="return confirm('Bạn chắc chắn muốn xóa sản phẩm này ra khỏi giỏ hàng?');" ImageUrl="~/Include/images/pasos/cruz.png" Style="display: block; width: 11px; height: 11px; float: left; margin-top: 20px;border:none" />

                                        <a href="Product.aspx?ProductId=<%#Eval("productId") %>">
                                            <img style="cursor: pointer; width: 55px"
                                                src="images/Product/<%# Eval("imgname")%><%# Eval("imgtype")%>" alt="<%# Eval("productId")%>"
                                                onclick="cargaPopUpProducto(6199943,true)">
                                        </a>
                                    </td>

                                    <td>
                                        <a href="Product.aspx?ProductId=<%#Eval("productId") %>">
                                            <p class="descr" style="cursor: pointer">
                                                <%#Eval("productName") %>
                                            </p>
                                        </a>
                                        <span class="ref">Ref. <%#Eval("productId") %></span>

                                    </td>

                                    <td class="center">
                                        <p><%#Eval("color") %></p>
                                    </td>
                                    <td class="center">
                                        <p><%#Eval("size") %></p>
                                    </td>

                                    <td class="center">
                                        <div class="contadores" style="width: 100px !important">
                                            <asp:ImageButton ID="imgbtnSubtract" runat="server" ImageUrl="Include/images/common/ico_menos.png" CssClass="eliminar" CommandName="cmdSubtract" Style="margin-top: 5px !important; width: 10px; border: none" />
                                            <%--<a
                                                
                                                onclick="updateCantidadProd('https://www.massimodutti.com/webapp/wcs/stores/servlet/ItxOrderManageCmd?viewname=ShopCartJSON&amp;catalogId=30220004&amp;action=updateItem&amp;errorViewName=ShopCartJSON&amp;orderId=58244596&amp;langId=-1&amp;quantity=0&amp;orderItemId=165121251&amp;storeId=34009450'); trackingCambiarCantidad(1,'Cesta_de_Compra',0,'decrementar');"
                                                class="eliminar" href="#">
                                                <img
                                                    src="https://static.massimodutti.net/3/static2/img/ico_menos.png" class="menos">
                                            </a>--%>
                                            <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("units") %>' AutoPostBack="true" OnTextChanged="txtSoLuong_TextChanged"></asp:TextBox>
                                            <asp:HiddenField ID="hdProductID" Value='<%# Eval("productId") %>' runat="server" />
                                            <%--<a
                                                onclick="updateCantidadProd('https://www.massimodutti.com/webapp/wcs/stores/servlet/ItxOrderManageCmd?viewname=ShopCartJSON&amp;catalogId=30220004&amp;action=updateItem&amp;errorViewName=ShopCartJSON&amp;orderId=58244596&amp;langId=-1&amp;quantity=2&amp;orderItemId=165121251&amp;storeId=34009450'); trackingCambiarCantidad(1,'Cesta_de_Compra',0,'incrementar');"
                                                class="aniadir" href="#">
                                                <img
                                                    src="https://static.massimodutti.net/3/static2/img/ico_mas.png" class="mas">
                                            </a>--%>
                                            <asp:ImageButton ID="imgbtnAdd" runat="server" ImageUrl="Include/images/common//ico_mas.png" CssClass="aniadir" CommandName="cmdAdd" Style="margin-top: 5px !important; width: 10px; border: none" />
                                        </div>
                                    </td>
                                    <td class="right">
                                        <p class="totalProduct"><span class="decimal"><%# String.Format("{0:#,##0}", Eval("totalPrice"))%></span>&nbsp;VNĐ&nbsp;</p>
                                    </td>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                        <tr class="noborde sepTop">
                            <td colspan="5" class="right">
                                <p><strong>Thanh toán</strong></p>
                            </td>
                            <td class="right">
                                <p>
                                    <strong id="totalProducts">
                                        <asp:Label ID="lblTotal" runat="server"></asp:Label>
                                    </strong>
                                </p>
                            </td>
                        </tr>
                        <tr id="titGastosEnvio" class="noborde gastos">
                            <td colspan="5" class="right">
                                <p><strong>Giảm giá</strong></p>
                            </td>
                            <td class="right">
                                <p><strong>
                                    <asp:Label ID="lblGiamGia" runat="server"></asp:Label></strong></p>
                            </td>

                        </tr>
                        <tr class="noborde selectDesc" id="inicioDescuentos">
                            <td colspan="6">
                                <div class="boxtitle clearfix" style="margin-top: 0">
                                    <a class="cPage-gift-code-a" href="javascript:void(0)">Nhập mã giảm giá của bản ở đây</a>

                                    <asp:TextBox ID="txtGiftCode" runat="server" CssClass="input-gift-code" placeholder="VD:QO#2413*668420"></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" Text="Nhập" CssClass="input-gift-code" Style="width: 100px; cursor: pointer" />
                                    <%--<form>
                                        <input class="input-gift-code" type="text" placeholder="VD:QO#2413*668420" />
                                        <input class="input-gift-code" style="width: 100px; cursor: pointer" type="button" value="Nhập" />
                                    </form>--%>
                                </div>

                            </td>
                        </tr>
                        <tr class="noborde">
                            <td colspan="6" class="right"></td>
                        </tr>

                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="5" class="right">
                                <p>Tổng thanh toán</p>
                            </td>
                            <td class="right" style="width: 10%;">
                                <p id="pCart-total-cost">
                                    <span class="decimal">
                                        <asp:Label ID="lblTongThanhToan" runat="server" Style="color: white"></asp:Label>
                                    </span>
                                </p>
                            </td>
                        </tr>
                    </tfoot>
                </table>


                <div class=" clearfix">
                </div>

            </div>
            <div class="botonera baja">

                <a href="Index.aspx"
                    class="add_art" style="margin-left: 0%;">QUAY LẠI CỬA HÀNG</a>

                <div class="bot_sig">
                    <a id="botonContinuar" href="ShippingInformation.aspx">Tiếp tục Thanh Toán</a>
                </div>

            </div>
        </div>
        <br style="clear: both">
    </div>
    <asp:SqlDataSource ID="SqlDataSourceSP" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT PRODUCT.*,PRODUCT_IMAGE_MAPPING.*
            FROM [PIPE].[dbo].[PRODUCT] 
            LEFT JOIN PRODUCT_IMAGE_MAPPING ON PRODUCT_IMAGE_MAPPING.PRODUCTID=PRODUCT.PRODUCTID
            WHERE PRODUCT_IMAGE_MAPPING.IMAGE_MAIN = 'TRUE'"></asp:SqlDataSource>
</asp:Content>

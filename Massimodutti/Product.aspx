<%@ Page Title="" Language="C#" MasterPageFile="~/Massimodutti.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Massimodutti.Product" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater runat="server" ID="rptProduct" EnableViewState="False"
        OnItemCommand="rptProduct_ItemCommand"
        DataSourceID="SqlDataSourceChiTiet">
        <ItemTemplate>

            <div id="iPageContent" style="margin-left: 0;">
                <a id="back-to-top" href="javascript:void(0);" title="Back to Top" style="display: inline; opacity: 1; position: fixed; top: auto; bottom: 55px;">Back to top</a>
                <section id="product-detail">




                    <a class="navigator right" href="#" style="position: fixed; top: 50%;"></a>


                    <div id="product-images" class="">

                        <div id="product-main-images">

                            <asp:Repeater runat="server" DataSource='<%#IMAGE(Convert.ToString(Eval("PRODUCTID"))) %>'>
                                <ItemTemplate>
                                    <%--<li class="color-thumb">--%>
                                    <img id="img-0" src="images/Product/<%# Eval("IMAGE_NAME")%><%# Eval("IMAGE_TYPE")%>" alt="<%# Eval("PRODUCTID")%>">
                                    <%-- </li>--%>
                                </ItemTemplate>
                            </asp:Repeater>

                        </div>





                        <%--<div id="last-list-products" class="more-products" style="display: block;">

                            <h5>Last items viewed</h5>


                            <a href="http://www.massimodutti.com/es/en/men/new-c891023p6200006.html?keyword=RIVETED%20BLUCHER" title="RIVETED BLUCHER" data-partnumber="16012022-I2015">
                                <img src="http://static.massimodutti.net/3/photos/2015/I/1/2/p/6012/022/400/6012022400_1_1_5.jpg?t=1433254308120" alt="RIVETED BLUCHER"></a>

                            <a href="http://www.massimodutti.com/es/en/men/new-c891023p6229551.html?keyword=KHAKI%20PARKA%20WITH%20LEATHER%20PIPING" title="KHAKI PARKA WITH LEATHER PIPING" data-partnumber="03447343-I2015">
                                <img src="http://static.massimodutti.net/3/photos/2015/I/0/2/p/3447/343/505/3447343505_1_1_5.jpg?t=1433249244945" alt="KHAKI PARKA WITH LEATHER PIPING"></a>

                            <a href="http://www.massimodutti.com/es/en/men/new-c891023p5960001.html?keyword=SLIM%20FIT%20DYED%20LINEN%20SHIRT" title="SLIM FIT DYED LINEN SHIRT" data-partnumber="00146485-V2015">
                                <img src="http://static.massimodutti.net/3/photos/2015/V/0/2/p/0146/485/505/0146485505_1_1_5.jpg?t=1431963736965" alt="SLIM FIT DYED LINEN SHIRT"></a>

                            <a href="http://www.massimodutti.com/es/en/women/leather-jackets-c675010p6199731.html?keyword=DOUBLE-SIDED%20REVERSIBLE%20WAISTCOAT" title="DOUBLE-SIDED REVERSIBLE WAISTCOAT" data-partnumber="04713684-I2015">
                                <img src="http://static.massimodutti.net/3/photos/2015/I/0/1/p/4713/684/712/4713684712_1_1_5.jpg?t=1434722403114" alt="DOUBLE-SIDED REVERSIBLE WAISTCOAT"></a>

                            <a href="http://www.massimodutti.com/es/en/women/jackets/view-all-c911123p6199581.html?keyword=COAT%20WITH%20BELT" title="COAT WITH BELT" data-partnumber="06401501-I2015">
                                <img src="http://static.massimodutti.net/3/photos/2015/I/0/1/p/6401/501/647/6401501647_1_1_5.jpg?t=1434632444836" alt="COAT WITH BELT"></a>

                        </div>--%>
                    </div>
                    <div id="product-info" style="display: block;">

                        <div class="wrapper">
                            <div id="product-actions" class="clearfix">
                                <a id="goBack">Trở về</a>
                                <ul id="shareButtons">

                                    <li>
                                        <a id="facebook" data-method="facebook" class="social">Facebook</a>
                                    </li>
                                    <li>
                                        <a id="pinterest" data-method="pinterest" class="social">Pinterest</a>
                                    </li>
                                    <li>
                                        <a id="twitter" data-method="twitter" class="social">Twitter</a>
                                    </li>
                                </ul>
                            </div>

                            <!-- Bundle template -->



                            <!-- Product template -->




                            <div class="product-p" data-id="6199943">

                                <div class="product-main-info">
                                    <p id="product-ref">Ref.<%#Eval("PRODUCTID") %></p>
                                    <h1 class="product-name" title="SILK SHIRT"><%#Eval("PRODUCTNAME") %></h1>
                                    <div class="product-prices">
                                        <div class="prices">
                                            <p class="oldPrice">
                                                <del runat="server" visible='<%# !(String.IsNullOrEmpty(Eval("SALE").ToString()) || Convert.ToInt32(Eval("SALE").ToString())==0 ) %>'>
                                                    <%# String.Format("{0:#,##0}", Eval("PRICE"))%> VNĐ
                                                </del>

                                            </p>
                                            <p class="currentPrice sold">

                                                <asp:Label ID="L1" runat="server"
                                                    Visible='<%# !(String.IsNullOrEmpty(Eval("SALE").ToString()) || Convert.ToInt32(Eval("SALE").ToString())==0 ) %>'
                                                    Text='<%# String.Format("{0:#,##0}", Eval("SALE"))+"&nbsp;VNĐ"%>'></asp:Label>


                                                <asp:Label ID="Label1" runat="server"
                                                    Visible='<%# (String.IsNullOrEmpty(Eval("SALE").ToString()) || Convert.ToInt32(Eval("SALE").ToString())==0 ) %>'
                                                    Text='<%# String.Format("{0:#,##0}", Eval("PRICE"))+"&nbsp;VNĐ" %>'></asp:Label>
                                            </p>

                                        </div>
                                        <hr>
                                    </div>
                                    <h2 id="product-long-desc"><%#Eval("DESCRIPTION") %> </h2>
                                    <p id="product-short-desc"></p>
                                </div>
                                <%--<div id="product-details">
                                    <div class="menu">
                                        <ul>
                                            <li data-info="composicion" class="comp">
                                                <h3>Fabric / Care</h3>
                                            </li>

                                            <li data-info="envio" class="shipping">
                                                <h3>Delivery </h3>
                                            </li>
                                            <li data-info="devolucion" class="return">
                                                <h3>Return </h3>
                                            </li>

                                        </ul>
                                    </div>

                                    <div class="content">
                                        <div id="product-composition" class="infoBox clearfix" data-info="composicion">
                                            <div class="left block half">

                                                <ul>

                                                    <li>
                                                        <h4>Outer</h4>


                                                        <span>100% VISCOSE</span>

                                                    </li>

                                                    <li>
                                                        <h4>Outer</h4>


                                                        <span>78% COTTON</span>

                                                        <span>15% VISCOSE</span>

                                                        <span>7% SILK (MULBERRY)</span>

                                                    </li>


                                                </ul>

                                            </div>
                                            <div class="right block half clearfix">

                                                <ul>

                                                    <li>
                                                        <img src="http://static.massimodutti.net/3/static2/itxstandard/images/cares/8.png?t=20150629050000">
                                                        <span>HAND WASH UP TO 30ºC/86ºF</span>
                                                    </li>

                                                    <li>
                                                        <img src="http://static.massimodutti.net/3/static2/itxstandard/images/cares/14.png?t=20150629050000">
                                                        <span>DO NOT BLEACH</span>
                                                    </li>

                                                    <li>
                                                        <img src="http://static.massimodutti.net/3/static2/itxstandard/images/cares/18.png?t=20150629050000">
                                                        <span>IRON UP TO 110ºC/230ºF</span>
                                                    </li>

                                                    <li>
                                                        <img src="http://static.massimodutti.net/3/static2/itxstandard/images/cares/26.png?t=20150629050000">
                                                        <span>DRY CLEAN PERCHLOROETHYLENE</span>
                                                    </li>

                                                    <li>
                                                        <img src="http://static.massimodutti.net/3/static2/itxstandard/images/cares/35.png?t=20150629050000">
                                                        <span>DO NOT TUMBLE DRY</span>
                                                    </li>

                                                </ul>
                                            </div>
                                        </div>

                                        <div id="product-shipping" class="infoBox clearfix" data-info="envio">
                                            <div class="block">
                                                <ul>

                                                    <li>
                                                        <h4>Pick-up in MRW offices</h4>
                                                        <p>2.95&nbsp;€&nbsp;</p>
                                                        <p>Between 3 - 5 working days</p>
                                                    </li>

                                                    <li>
                                                        <h4>Standard home</h4>
                                                        <p>3.95&nbsp;€&nbsp;</p>
                                                        <p>In 3 working days</p>
                                                    </li>

                                                    <li>
                                                        <h4>Express home</h4>
                                                        <p>5.95&nbsp;€&nbsp;</p>
                                                        <p>In 1 - 2 labor days</p>
                                                    </li>

                                                    <li>
                                                        <h4>Same day</h4>
                                                        <p>9.95&nbsp;€&nbsp;</p>
                                                        <p>SuperExpress. Purchase before 12:00 noon – Receive it before 10:00 pm</p>
                                                    </li>

                                                </ul>
                                            </div>
                                        </div>
                                        <div id="product-return" class="infoBox clearfix" data-info="devolucion">
                                            <div class="left block">
                                                <ul>
                                                    <li>
                                                        <h4>STORE RETURN</h4>
                                                        <p>
                                                            You can return your articles in any Massimo Dutti store, provided it
				is in the same country where you made the purchase.<br>
                                                            You have
				30 days to return from the date on which you made the purchase.
                                                        </p>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="right block">
                                                <ul>
                                                    <li>
                                                        <h4>FREE HOME RETURN</h4>
                                                        <p>
                                                            You can request a return at home from the MY ACCOUNT section (not
				available for Store Delivery).<br>
                                                            You have 30 days to return
				from the date on which you made the purchase.
                                                        </p>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>


                                    </div>
                                </div>--%>
                                <div id="product-colors">
                                    <h3 title="Color">Màu sắc</h3>
                                    <ul class="clearfix">

                                        <%--<li class="color-thumb selected" data-color-id="802">
                                            <img src="http://static.massimodutti.net/3/photos/2015/I/0/1/p/5041/553/802/5041553802_3_1_7.jpg?t=1434723601934" width="45" height="12" alt="GREY" title="GREY">
                                        </li>--%>

                                        <asp:Repeater runat="server" DataSource='<%#COLOUR(Convert.ToString(Eval("PRODUCTID"))) %>'>
                                            <ItemTemplate>
                                                <li class="color-thumb">
                                                    <table style="background-color: <%# Eval("RGB")%>; height: 12px; width: 45px;"></table>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </ul>
                                </div>
                                <hr>
                                <div class="product-sizes clearfix">
                                    <h3 title="Size ">Size </h3>
                                    <div class="size_guide_tooltip">
                                        <div class="cont">
                                            <p>Try our new service to find your size.</p>
                                        </div>
                                        <img src="http://static.massimodutti.net/3/static2/img/size_guide_tooltip_bottom.png">
                                    </div>
                                    <%--<button id="butGuideSize" class="size_guide white" style="display: block;"><span>SIZE GUIDE</span></button>
                                    <button id="butGuideSize2" class="size_guide white virtusize" style="display: none;"><span>FIND YOUR SIZE</span></button>--%>

                                    <ul class="size-list clearfix">

                                         <asp:Repeater runat="server" DataSource='<%#SIZE(Convert.ToString(Eval("PRODUCTID"))) %>'>
                                            <ItemTemplate>
                                               <li class="available "><%# Eval("SIZENAME") %></li>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </ul>
                                </div>


                                <div id="product-order-process">
                                     <asp:Button ID="btn_Add_to_cart" runat="server" CausesValidation="false" 
                                          CommandName="cmd_Add_to_cart" 
                                        CssClass="add_to_cart black" Text="Add to cart" />
                                     

                                    <button id="process_order" class="black"><span>Process order</span></button>
                                    <p class="comment"><%#Eval("NOTE") %></p>
                                </div>
                                

                                <div id="product-additional-actions">
                                    <!-- <a href="#" class="help">Would you like some help?</a> -->
                                    <a href="#" class="store_availability" style="display: none;">Collect in store.</a>
                                </div>
                                <%--<div id="product-image-thumbs" class="" style="width: 444px;">
                                    <ul>
                                        <li class="active">
                                            <img src="http://static.massimodutti.net/3/photos/2015/I/0/1/p/5041/553/802/5041553802_1_1_5.jpg?t=1434723601934" data-index="img-0"></li>
                                        <li class="">
                                            <img src="http://static.massimodutti.net/3/photos/2015/I/0/1/p/5041/553/802/5041553802_2_1_5.jpg?t=1434723601934" data-index="img-1"></li>
                                        <li>
                                            <img src="http://static.massimodutti.net/3/photos/2015/I/0/1/p/5041/553/802/5041553802_2_2_5.jpg?t=1434723601934" data-index="img-2"></li>
                                        <li>
                                            <img src="http://static.massimodutti.net/3/photos/2015/I/0/1/p/5041/553/802/5041553802_2_3_5.jpg?t=1434723601934" data-index="img-3"></li>
                                        <li class="">
                                            <img src="http://static.massimodutti.net/3/photos/2015/I/0/1/p/5041/553/802/5041553802_2_4_5.jpg?t=1434723601934" data-index="img-4"></li>

                                    </ul>
                                </div>--%>
                            </div>


                        </div>
                    </div>



                </section>
            </div>

        </ItemTemplate>
    </asp:Repeater>


    <asp:SqlDataSource ID="SqlDataSourceChiTiet" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PRODUCT] WHERE ([PRODUCTID] = @PRODUCTID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="PRODUCTID" QueryStringField="ProductId" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

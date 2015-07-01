<%@ Page Title="" Language="C#" MasterPageFile="~/Massimodutti.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Massimodutti.Index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="iPageContent">
        <div id="sub-nav">
            <div class="breadcrumb"><span>WOMEN <span class="separator">&gt; </span></span><span>New </span></div>
        </div>

        <div id="products">
            <div id="products-content">
                <ul id="product-list" class="clearfix">
                    <asp:Repeater runat="server" DataSourceID="SqlDataSourceSP">
                        <ItemTemplate>
                            <!--ROW PRODUCT-->
                            <li id="id-6199943" class="product visible-c" data-sizes="34,36,38,40,42,44">
                                <a class="product-image" href="Product.aspx?ProductId=<%#Eval("PRODUCTID") %>">
                                    <img class="lazy img-responsive main" src="images/Product/<%# Eval("IMAGE_NAME")%><%# Eval("IMAGE_TYPE")%>" data-original="" alt="<%# Eval("PRODUCTID")%>" style="display: block; opacity: 1;">
                                </a>
                                <div class="product-info" style="visibility: visible;">
                                    <div class="content">
                                        <a class="product-name" href="Product.aspx?ProductId=<%#Eval("PRODUCTID") %>"><%#Eval("PRODUCTNAME") %>
                                        </a>

                                        <div class="product-price">
                                            <p class="prices">

                                                <span class="oldPrice">

                                                    <del runat="server" visible='<%# !(String.IsNullOrEmpty(Eval("SALE").ToString()) || Convert.ToInt32(Eval("SALE").ToString())==0 ) %>'>
                                                        <%# String.Format("{0:#,##0}", Eval("PRICE"))%> VNĐ
                                                    </del>

                                                </span>

                                                <span class="currentPrice sale">

                                                    <asp:Label ID="L1" runat="server"
                                                        Visible='<%# !(String.IsNullOrEmpty(Eval("SALE").ToString()) || Convert.ToInt32(Eval("SALE").ToString())==0 ) %>'
                                                        Text='<%# String.Format("{0:#,##0}", Eval("SALE"))+"&nbsp;VNĐ"%>'></asp:Label>


                                                </span>
                                                <span class="currentPrice">

                                                    <asp:Label ID="Label1" runat="server"
                                                        Visible='<%# (String.IsNullOrEmpty(Eval("SALE").ToString()) || Convert.ToInt32(Eval("SALE").ToString())==0 ) %>'
                                                        Text='<%# String.Format("{0:#,##0}", Eval("PRICE"))+"&nbsp;VNĐ" %>'></asp:Label>
                                                </span>

                                            </p>
                                            <hr>
                                        </div>



                                        <div class="product-labels">
                                        </div>

                                    </div>
                                </div>
                            </li>
                            <!--ROW PRODUCT-->
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceSP" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT PRODUCT.*,PRODUCT_IMAGE_MAPPING.*
            FROM [PIPE].[dbo].[PRODUCT] 
            LEFT JOIN PRODUCT_IMAGE_MAPPING ON PRODUCT_IMAGE_MAPPING.PRODUCTID=PRODUCT.PRODUCTID
            WHERE PRODUCT_IMAGE_MAPPING.IMAGE_MAIN = 'TRUE'"></asp:SqlDataSource>
</asp:Content>

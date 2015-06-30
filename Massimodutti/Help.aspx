<%@ Page Title="" Language="C#" MasterPageFile="~/Massimodutti.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="Massimodutti.Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
   
    <div id="iPageContent" class="contentpage_spot" style="margin-left:0px">

        <div id="content_wrapper" class="colorTxt">
            
            <div id="left">
                <div id="left_container" class="borderTop">
                    <!-- Begin ItxContentSpotDisplay.jsp  (MD2_ESpot_ShoppingGuide_Menu) -->
                    
                    <div class="title-menu">
                        <h2 class="lato">QO FASHION</h2>
                    </div>

                    <ul id="shopping_guide_menu" class="borderTop">
                        <li class="notForSale">
                            <a href="javascript:void(0)" data-link="1" class="active" onclick="loadPageHelp(1,event)">Liên hệ</a>
                        </li>
                        <li class="notForSale">
                            <a href="javascript:void(0)" data-link="2" onclick="loadPageHelp(2,event)">Chăm sóc khách hàng</a>
                        </li>
                        <li class="notForSale">
                            <a href="javascript:void(0)" data-link="3" onclick="loadPageHelp(3,event)">Hướng dẫn mua hàng</a>
                        </li>
                        <li class="notForSale">
                            <a href="javascript:void(0)" data-link="4" onclick="loadPageHelp(4,event)">Giao hàng toàn quốc</a>
                        </li>
                        <li class="notForSale">
                            <a href="javascript:void(0)" data-link="5" onclick="loadPageHelp(5,event)">Chính sách đổi trả</a>
                        </li>
                        <li class="notForSale">
                            <a href="javascript:void(0)" data-link="6" onclick="loadPageHelp(6,event)">FAQ?</a>
                        </li>
                       <%-- <li class="notForSale">
                            <a href="javascript:void(0)" onclick="loadPageHelp(7,event)">Transport and deliveries</a>
                        </li>
                        <li class="notForSale">
                            <a href="javascript:void(0)" onclick="loadPageHelp(8,event)">Exchanges and returns</a>
                        </li>
                        <li class="notForSale">
                            <a href="javascript:void(0)" onclick="loadPageHelp(9,event)">Payments</a>
                        </li>
                        <li class="notForSale">
                            <a href="javascript:void(0)" onclick="loadPageHelp(10,event)">Personal Tailoring</a>
                        </li>
                        <li class="notForSale">
                            <a href="javascript:void(0)" onclick="loadPageHelp(11,event)">Watches</a>
                        </li>
                        <li class="notForSale">
                            <a href="javascript:void(0)" onclick="loadPageHelp(12,event)">Footwear</a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" data-id="affinity" onclick="loadPageHelp(13,event)">Policy</a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" data-id="affinity" onclick="loadPageHelp(14,event)">Cookies information</a>
                        </li>--%>
                    </ul>

                   
                    <!-- End ItxContentSpotDisplay.jsp (MD2_ESpot_ShoppingGuide_Menu) -->

                </div>
                <div id="menu-active" style="top: 195px;"></div><!--55-->
            </div>
            <div id="main">
                <div id="mspotContainer" class="borderTop">
                    

                    
                </div>
            </div>
        
        </div>

    </div>
</asp:Content>

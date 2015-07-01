<%@ Page Title="" Language="C#" MasterPageFile="~/Massimodutti.Master" AutoEventWireup="true" CodeBehind="ShippingInformation.aspx.cs" Inherits="Massimodutti.ShippingInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="center">

    <div id="tunel">
         <div class="cPage-title">THÔNG TIN GỬI HÀNG</div>
        <div id="inicio">

            <form id="loginForm" action="https://www.massimodutti.com/webapp/wcs/stores/servlet/ItxStandardLogonCmd" onsubmit="enviarFormulario();" method="post" novalidate="novalidate">


                <div class="column">
                    <p class="title_shipping_info">ĐĂNG NHẬP BẰNG FACEBOOK</p>
                    <div id="acceso">
                        <div class="row">
                            <div class="block">
                                <label>Email hoặc số điện thoại của bạn *</label>
                                <input type="text" id="email" name="logonId">
                            </div>
                        </div>
                        <div class="row">
                            <div class="block">
                                <label>Mật khẩu *</label>
                                <input type="password" id="passwo" name="logonPassword">

                            </div>
                        </div>
                        <div class="row pCart-position-relative">
                                <input style="border:none;background:#fff;border-style:none !important;cursor:pointer"  type="submit" class="acc_butt pCart-position-absolute pCart-absolute-center" id="entrarBtn" value="ĐĂNG NHẬP">
                        </div>
                        
                    </div>


                </div>
            </form>

            <div class="column r">
                <form id="signupForm" novalidate="novalidate">
                    <p class="title_shipping_info">BẠN CHƯA CÓ TÀI KHOẢN ĐĂNG NHẬP VÀO QO. BẠN VẪN CÓ THỂ ĐẶT HÀNG Ở ĐÂY.</p>
                    <p class="subtitle">Nhập thông tin của bạn vào ô phía dưới để đặt mua hàng.</p>
                    <div id="datosPersona">


                        <div class="row">
                            <div class="block">
                                <label>Họ và tên *</label>
                                <input type="text" id="nombre" name="nombre">
                            </div>
                        </div>
                        <div class="row">
                            <div class="block">
                                <label>Số điện thoại *</label>
                                <input type="text" id="nombre" name="nombre">
                            </div>
                        </div>
                        <div class="row">
                            <div class="block">
                                <label>Tỉnh/Thành Phố *</label>
                                <select class="pCart-select-shipping">
                                    <option>Tp.Hồ Chí Minh</option>
                                     <option>Hà Nội</option>
                                     <option>Hải Phòng</option>
                                </select>
                               
                            </div>
                        </div>
                        <div class="row">
                            <div class="block">
                                <label>Quận/Huyện *</label>
                                <select class="pCart-select-shipping">
                                    <option>Quận 1</option>
                                     <option>Quận 2</option>
                                     <option>Quận 3</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="block">
                                <label>Phường/Thị xã *</label>
                                <select class="pCart-select-shipping">
                                    <option>Phường 2</option>
                                     <option>Phường 3</option>
                                     <option>Phường 4</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="block">
                                <label>Địa chỉ *</label>
                                <input type="text" id="nombre" name="nombre">
                            </div>
                        </div>
                        <div class="row">
                            <div class="block">
                                <label>Email *</label>
                                <input type="text" id="nombre" name="nombre">
                            </div>
                        </div>

                    </div>
                    <ul class="opt_check">
                        <li>
                            <input type="checkbox" name="privatePolicy" id="politica" class="converted" style="visibility: hidden; position: absolute; width: 0px;"><a id="check_politica" class="check"></a>
                            <label>* Mục có đánh dấu * là mục quan trọng bạn cần điền thông tin đầy đủ để hoàn tất.
                            </label>
                            <p for="privatePolicy" class="error" style="display:none;">
                                You must accept the privacy policy
                            </p>
                        </li>
                    </ul>
                    <a href="Order.aspx"  class="acc_butt noClear">TIẾP TỤC</a>
                </form>
            </div><!-- fin .column.r-->
        </div>

    </div>
    <br style="clear:both">
</div>
</asp:Content>

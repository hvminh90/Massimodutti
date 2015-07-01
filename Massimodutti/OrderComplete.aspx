<%@ Page Title="" Language="C#" MasterPageFile="~/Massimodutti.Master" AutoEventWireup="true" CodeBehind="OrderComplete.aspx.cs" Inherits="Massimodutti.OrderComplete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="center">

        <div id="tunel" style="margin-top:10px;">
            <div id="pCart-order-complete">
                <div class="pCart-order-complete-up pCart-center-tag ">
                    <p class="back-shop"><a href="Index.aspx">QUAY LẠI CỬA HÀNG</a></p>
                    <p style="margin-bottom:50px;"><strong>HOÀN TẤT ĐẶT HÀNG</strong></p>
                    <label class="line">Đơn hàng của bạn đã được đặt thành công!</label>
                    <label class="line">QO sẽ sớm liên hệ với bạn để thông báo về việc giao hàng.</label>
                    <label>Cảm ơn bạn đã sử dụng dịch vụ mua hàng trực tuyến tại QO.com.vn</label>
                    <p class="pCart-code-order-title">MÃ SỐ ĐƠN HÀNG</p>
                    <p ><span class="pCart-code-order">AB2NDZQ217</span></p>
                </div>
                <div class="pCart-order-complete-down">
                    <label class="line">- Bạn đã chọn hình thức Thanh Toán là chuyển khoản qua Ngân Hàng.</label>
                   <label>- Khi chuyển khoản bạn ghi nội dung chuyển khoản là: AB2NDZQ217</label>
                    <label class="line top-20">Tên chủ tài khoản: Nguyễn Quân</label>
                     <label class="line">Số tài khoản ngân hàng ACB: XXXXXXXXXXXXXXX</label>
                     <label class="line top-20 bot-30">Số tài khoản ngân hàng DEF: XXXXXXXXXXXXXXX</label>
                </div>   
            </div>
        </div>

        <br style="clear: both">
    </div>
</asp:Content>

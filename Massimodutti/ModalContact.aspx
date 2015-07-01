<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalContact.aspx.cs" Inherits="Massimodutti.ModalContact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="Include/css/mass-modal-contact.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
 <%--       <div class="overlay_bg_cesta" style="display: block;"></div>
 <div class="popupHtmlCesta scroll-y" style="max-height: 80%; width: 770px; height: auto; display: block; margin-top: 20px;">--%>
      <div class="modalbg"></div>
            <div class="modalcont popupHtmlCesta scroll-y" style="width:90%;min-height:300px;height:300px;max-height: 80%; width: 770px; height: auto; display: block; margin-top: 20px;">

<div class="popup-wrapper" id="popupContacto">
	<div class="title">
		<div>LIÊN HỆ</div>
	</div>
	
	<!-- Begin ItxContentSpotDisplay.jsp  (MD_ESpot_Contact_Details_Form) -->
	

<div id="ms_content">
	<div>NHÃN HÀNG THỜI TRANG QO.</div>
    <div class="text">339/17A Nguyễn Thái Bình, Phường 12, Quận Tân Bình, Tp.HỒ CHÍ MINH</div>
	<div class="contact_data">
		<div class="img"><img src="Include/images/modal/phone.png"></div>
		<div class="contact_tel" style="margin-bottom:50px;margin-top:20px">0944 26 9091</div>
		
	</div>
	<div class="buttons_container">
	<a id="affinity_card_es" href="javascript:void(0);" ><strong>FACEBOOK (chat 9h-24h)</strong></a><a href="javascript:void(0);" id="shops_locator"><strong>SKYPE (chat 9h-24h)</strong></a>		
	<br>
	</div>
</div><!-- End ItxContentSpotDisplay.jsp (MD_ESpot_Contact_Details_Form) -->
	
				
	
	<form id="contact_popup_form" name="contact_popup_form"style="display: block;">
		<div class="margin-bottom">
			<div class="title">
				<div>THÔNG TIN LIÊN HỆ</div>
			</div>
			
		
		</div>
		<div>
			<div class="client_data margin-bottom">
				<div class="inline_block_element padding-right-5">
					<input type="text" id="client_name" name="client_name" placeholder="Số điện thoại *">
				</div>
				<div class="inline_block_element last-input-container pull-right padding-left-5">
					<input type="text" id="client_surnames" name="client_surnames" placeholder="E-mail *">
				</div>
			</div>
			
			<div class="subject margin-bottom">
				<input type="text" id="subject" name="subject" placeholder="Tiêu đề *">
			</div>
			<div class="message margin-bottom">
				<textarea id="message" name="message" placeholder="Nội dung *"></textarea>
			</div>
            
			<div class="button_container margin-bottom">
				<asp:Button ID="send_contact" runat="server" Text="GỬI" OnClick="send_contact_Click" />
			</div>
		</div>
	</form>

</div>
 
             <a class="modalclose" onclick="closeModal();"></a></div>
    </form>
    <script src="Include/js/mass-open-modal.js"></script>
</body>
</html>

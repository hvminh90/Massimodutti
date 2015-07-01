<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalLogin.aspx.cs" Inherits="Massimodutti.ModalLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .row {
  margin: 0;
  width: 100%;
  
}
        .row .block {
  width: 42%;
  margin: 0;
  margin-right: 8%;
  margin-top:20px;
  display: inline-block;
  box-sizing: border-box;
}
        .block {
  float: left;
  display: block\0/IE9;
  position: relative\0/IE9;
  padding-bottom: 11px;
  width: 47%;
  margin: 20px 0 0 35px;
}
        .block label {
  color: #000000;
  cursor: default;
  float: left;
  font-family: "Trebuchet MS",Arial,Helvetica,sans-serif;
  font-size: 12px;
  margin-bottom: 3px;
  width: 100%;
}
        .block input {
  border-color: #8B8889 !important;
  color: #000000;
  width: 99%;
  border-style: solid !important;
  border-width: 1px !important;
  float: left;
  font-family: "Trebuchet MS",Arial,Helvetica,sans-serif;
  font-size: 12px;
  padding: 1px 0 1px 0;
  display: block;
  background: none;
}
 input[type="submit"]{
            border:none;
            background-color:#000;
            color:#fff;
              font-size: 12px;
              padding:2px 10px;
              cursor:pointer;
        }
        .row{
            float:right;
        }
.row .block.r {
  margin: 0;
  margin-left: 8%;
  float: right;
  margin-top:20px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="modalbg"></div>
            <div class="modalcont" style="width:50%;min-height:300px;height:300px;max-width:640px">
        <div class="modalinner" style="padding-top:30px;">
                    <form id="buscarTiendasForm" >
                        <div class="modaltitle" >FACEBOOK</div>
                        <div class="modalscrollable">
                            <div id="shopmap" style="position:relative">
                                 <div class="row">
                                     <div class="block">
                                         <label>E-mail hoặc số điện thoại *</label>
                                         <input type="text" name="username"/>
                                     </div>
                                     <div class="block r">
                                         <label>Mật khẩu *</label>
                                         <input type="password" name="password"/>
                                     </div>
                                     <table style="width:100%;">
                                         <tr>
                                             <td style="border-bottom:1px solid #b3b3b3;text-align:right;padding:20px 0;">
                                                    <asp:Button ID="send_login" runat="server" Text="ĐĂNG NHẬP" OnClick="send_login_Click" />
                                             </td>
                                         </tr>
                                     </table>
                                 </div>
                            </div>
                            
                        </div>
                    </form>

                </div>
        <a class="modalclose" onclick="closeModal();"></a>
                </div>
    </form>
       <script src="Include/js/mass-open-modal.js"></script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Massimodutti.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater runat="server" ID="rptProduct" EnableViewState="False"
        OnItemCommand="rptProduct_ItemCommand"
        DataSourceID="SqlDataSourceChiTiet">
        <ItemTemplate>
            <asp:Label ID="lbl" runat="server"></asp:Label>
            <asp:Button ID="btn_Add_to_cart" runat="server" CausesValidation="false" 
                                          CommandName="cmd_Add_to_cart" CommandArgument='<%# Eval("PRODUCTID") %>'
                                        CssClass="add_to_cart black" Text="Add to cart" />
            </ItemTemplate>
            </asp:Repeater>
    </div>
         <asp:SqlDataSource ID="SqlDataSourceChiTiet" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PRODUCT] WHERE ([PRODUCTID] = @PRODUCTID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="PRODUCTID" QueryStringField="ProductId" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>

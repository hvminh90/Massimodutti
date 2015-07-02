using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Massimodutti
{
    public partial class ShopingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }

        protected void txtSoLuong_TextChanged(object sender, EventArgs e)
        {
            TextBox textbox = sender as TextBox;
            RepeaterItem rpitem = textbox.NamingContainer as RepeaterItem;
            HiddenField hdProductID = rpitem.FindControl("hdProductID") as HiddenField;
            foreach (var item in App_Code.Product.ProductsInCart)
            {

                if (item.ProductId == hdProductID.Value)
                {
                    item.Units = Convert.ToInt32(textbox.Text);
                    item.TotalPrice = item.Units * item.UnitPrice;
                }
            }
            Bind();
        }
        public void Bind()
        {
            rptGioHang.DataSource = App_Code.Product.ProductsInCart;
            rptGioHang.DataBind();
            IList<App_Code.Product> lstGioHang = App_Code.Product.ProductsInCart;
            decimal total = 0;
            decimal giamgia = 0;
            foreach (var item in lstGioHang)
            {
                total = total + item.TotalPrice;
                
            }
            lblTotal.Text = String.Format("{0:#,##0}", total) + " VNĐ";
            lblGiamGia.Text = giamgia.ToString() + " VNĐ";
            lblTongThanhToan.Text = String.Format("{0:#,##0}", total-giamgia) + " VNĐ";
        }

        protected void rptGioHang_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            RepeaterItem rpitem = e.Item as RepeaterItem;
            HiddenField hdProductId = rpitem.FindControl("hdProductID") as HiddenField;
            TextBox tbSoLuong = rpitem.FindControl("txtSoLuong") as TextBox;
            IList<App_Code.Product> lstGioHang = App_Code.Product.ProductsInCart;
            switch (e.CommandName)
            {
                case "cmdDel":
                {
                    
                    for (int i = 0; i < lstGioHang.Count; i++)
                    {

                        if (lstGioHang[i].ProductId == hdProductId.Value)
                        {
                            App_Code.Product.ProductsInCart.RemoveAt(i);
                        }
                    }
                   Response.Redirect("ShopingCart.aspx");
                   break;
                }

                case "cmdSubtract":
                {
                    int soluong = string.IsNullOrEmpty(tbSoLuong.Text) ? 0 : Convert.ToInt32(tbSoLuong.Text);
                    if(soluong > 1)
                    {
                        for (int i = 0; i < lstGioHang.Count; i++)
                        {

                            if (lstGioHang[i].ProductId == hdProductId.Value)
                            {
                                lstGioHang[i].Units -= 1;
                                lstGioHang[i].TotalPrice = lstGioHang[i].Units * lstGioHang[i].UnitPrice;
                                tbSoLuong.Text = lstGioHang[i].Units.ToString();
                            }
                        }
                    }
                    Response.Redirect("ShopingCart.aspx");
                    break;
                }
                    
                case "cmdAdd":
                {
                    int soluong = string.IsNullOrEmpty(tbSoLuong.Text) ? 0 : Convert.ToInt32(tbSoLuong.Text);
                    if (soluong >= 1)
                    {
                        for (int i = 0; i < lstGioHang.Count; i++)
                        {

                            if (lstGioHang[i].ProductId == hdProductId.Value)
                            {
                                lstGioHang[i].Units += 1;
                                lstGioHang[i].TotalPrice = lstGioHang[i].Units * lstGioHang[i].UnitPrice;
                                tbSoLuong.Text = lstGioHang[i].Units.ToString();
                            }
                        }
                    }
                    Response.Redirect("ShopingCart.aspx");
                    break;
                }
                    
            }
        }
    }
}
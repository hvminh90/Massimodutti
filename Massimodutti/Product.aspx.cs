using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Massimodutti;

namespace Massimodutti
{
    public partial class Product : System.Web.UI.Page
    {
        public static string title = string.Empty;
        public static string ProductId = string.Empty;
        public static string ProductName = string.Empty;
        public static string Price = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string id = Request.Params["ProductId"];
                if (string.IsNullOrEmpty(id))
                {
                    Response.Redirect("Warring.aspx");
                }
                ProductId = id;
            }   
        }
        protected void rptProduct_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "cmd_Add_to_cart")
            {
                //Int32 id = Convert.ToInt32(e.CommandArgument);
                string productid = (string)e.CommandArgument;
                var tbChiTiet = CHITIET(productid);
                var tbImg = IMAGE(productid);
                

                IDictionary itemValues = new Dictionary<object, object>();
                itemValues["ProductID"] = productid;
                itemValues["ProductName"] = tbChiTiet.Rows.Count > 0 ? tbChiTiet.Rows[0]["PRODUCTNAME"].ToString() : string.Empty;
                if (tbChiTiet.Rows.Count > 0)
                {
                    if (tbChiTiet.Rows[0]["SALE"].ToString() == "0")
                        itemValues["UnitPrice"] = tbChiTiet.Rows[0]["PRICE"].ToString();
                    else itemValues["UnitPrice"] = tbChiTiet.Rows[0]["SALE"].ToString();
                }
                else itemValues["UnitPrice"] = 0;

                //itemValues["UnitPrice"] = tbChiTiet.Rows.Count > 0 ? tbChiTiet.Rows[0]["PRICE"].ToString() : "0";
                itemValues["QuantityPerUnit"] = "";
                itemValues["Size"] = "XL";
                itemValues["Color"] = "RED";
                itemValues["ImgName"] = tbImg.Rows.Count > 0 ? tbImg.Rows[0]["IMAGE_NAME"].ToString() : "1";
                itemValues["ImgType"] = tbImg.Rows.Count > 0 ? tbImg.Rows[0]["IMAGE_TYPE"].ToString() : ".jpg";
                itemValues["TotalPrice"] = tbChiTiet.Rows.Count > 0 ? tbChiTiet.Rows[0]["PRICE"].ToString() : "0";
                App_Code.Product.AddProductToTheCart(itemValues);
                Response.Redirect("ShopingCart.aspx");
                

            }
        }
        
        #region Binding
        protected DataTable CHITIET(string productid)
        {
            return App_Code.Core.GetDataTable(
                 @"SELECT PRODUCTID, ISNULL(PRODUCTNAME,'') as PRODUCTNAME, ISNULL(PRICE,0) as PRICE,ISNULL(SALE,0) as SALE FROM [PRODUCT] WHERE [PRODUCTID] = " + productid);
        }
        protected DataTable COLOUR(string productid)
        {
            return App_Code.Core.GetDataTable(
                 @"SELECT COLOUR.COLOURID, COLOUR.COLOURNAME, COLOUR.RGB FROM COLOUR 
                INNER JOIN PRODUCT_COLOUR_MAPPING ON PRODUCT_COLOUR_MAPPING.COLOURID = COLOUR.COLOURID 
                INNER JOIN PRODUCT ON PRODUCT.PRODUCTID = PRODUCT_COLOUR_MAPPING.PRODUCTID
                WHERE PRODUCT.PRODUCTID =" + productid);
        }

        protected DataTable IMAGE(string productid)
        {
            return App_Code.Core.GetDataTable(
                 @"SELECT  [ID]      ,[PRODUCTID]      ,[IMAGE_NAME]      ,[IMAGE_TYPE]      ,[IMAGE_PAH]
                    FROM PRODUCT_IMAGE_MAPPING 
                    WHERE PRODUCTID =" + productid);
        }
        protected DataTable SIZE(string productid)
        {
            return App_Code.Core.GetDataTable(
                 @"SELECT SIZE.SIZEID, SIZE.SIZENAME,PRODUCT.PRODUCTID FROM SIZE 
                INNER JOIN PRODUCT_SIZE_MAPPING ON PRODUCT_SIZE_MAPPING.SIZEID = SIZE.SIZEID 
                INNER JOIN PRODUCT ON PRODUCT.PRODUCTID = PRODUCT_SIZE_MAPPING.PRODUCTID
                WHERE PRODUCT.PRODUCTID =" + productid);
        }
        #endregion
    }
}
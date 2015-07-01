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
                //rptProduct.DataSource = CHITIET(id);
                //rptProduct.DataBind();
            }
            //foreach (RepeaterItem ritem in rptProduct.Items)
            //{
            //    Button btn = ritem.FindControl("btn_Add_to_cart") as Button;
            //    btn.Click += new EventHandler(btn_Click);
            //}
        }
        protected void rptProduct_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('@@@');", true);
            if (e.CommandName == "cmd_Add_to_cart")
            {
                Int32 id = Convert.ToInt32(e.CommandArgument);


                IDictionary itemValues = new Dictionary<object, object>();
                itemValues["ProductID"] = ProductId;
                itemValues["ProductName"] = ProductName;
                itemValues["UnitPrice"] = Price;
                itemValues["QuantityPerUnit"] = "1";
                App_Code.Product.AddProductToTheCart(itemValues);
                Response.Redirect("ShopingCart.aspx");
                

            }
        }
        //void btn_Click(object sender, EventArgs e)
        //{
        //    Button btn = (Button)sender;
        //    RepeaterItem ritem = (RepeaterItem)btn.NamingContainer;
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('@@@');", true);
        //}
        #region Binding
        protected DataTable CHITIET(string productid)
        {
            return App_Code.Core.GetDataTable(
                 @"SELECT * FROM [PRODUCT] WHERE [PRODUCTID] = " + productid);
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

        //protected void btn_Add_to_cart_Click(object sender, EventArgs e)
        //{
        //    IDictionary itemValues = new Dictionary<object, object>();
        //    itemValues["ProductID"] = ProductId;
        //    itemValues["ProductName"] = ProductName;
        //    itemValues["UnitPrice"] = Price;
        //    itemValues["QuantityPerUnit"] = "1";
        //    App_Code.Product.AddProductToTheCart(itemValues);
        //    Response.Redirect("ShopingCart.aspx");
        //}
    }
}
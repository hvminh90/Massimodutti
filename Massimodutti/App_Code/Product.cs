using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Massimodutti.App_Code
{
    public class Product
    {
        private string productId;
        private string productName;
        private string quantityPerUnit;
        private decimal unitPrice;
        private int units;
        private string size;
        private decimal totalPrice;
        private decimal totalcost;

        public decimal Totalcost
        {
            get { return totalcost; }
            set { totalcost = value; }
        }

        public decimal TotalPrice
        {
            get { return totalPrice; }
            set { totalPrice = value; }
        }
        public string Size
        {
            get { return size; }
            set { size = value; }
        }
        private string color;

        public string Color
        {
            get { return color; }
            set { color = value; }
        }
        private string imgname;

        public string Imgname
        {
            get { return imgname; }
            set { imgname = value; }
        }
        private string imgtype;

        public string Imgtype
        {
            get { return imgtype; }
            set { imgtype = value; }
        }


        public string ProductId
        {
            get { return this.productId; }
            set { this.productId = value; }
        }

        public string ProductName
        {
            get { return this.productName; }
            set { this.productName = value; }
        }

        public string QuantityPerUnit
        {
            get { return this.quantityPerUnit; }
            set { this.quantityPerUnit = value; }
        }

        public decimal UnitPrice
        {
            get { return this.unitPrice; }
            set { this.unitPrice = value; }
        }

        public int Units
        {
            get { return this.units; }
            set { this.units = value; }
        }

       
        public Product(string productId, string productName, string quantityPerUnit, decimal unitPrice, int units,
            string color,string size,string imgname,string imgtype, decimal totalprice)
        {
            this.productId = productId;
            this.productName = productName;
            this.quantityPerUnit = quantityPerUnit;
            this.unitPrice = unitPrice;
            this.units = units;
            this.color = color;
            this.size = size;
            this.imgname = imgname;
            this.imgtype = imgtype;
            this.totalPrice = totalprice;
        }

        public Product()
        {

        }

        public static void AddProductToTheCart(IDictionary itemValues)
        {
            if (!IncreaseAddedProducts(itemValues["ProductID"].ToString()))
            {
                var newProduct = new Product();
                newProduct.ProductId = itemValues["ProductID"].ToString();
                newProduct.ProductName = itemValues["ProductName"].ToString();
                newProduct.QuantityPerUnit = itemValues["QuantityPerUnit"].ToString();
                newProduct.UnitPrice = decimal.Parse(itemValues["UnitPrice"].ToString(), System.Globalization.NumberStyles.AllowCurrencySymbol | System.Globalization.NumberStyles.AllowDecimalPoint);
                newProduct.Units = 1;
                newProduct.Color = itemValues["Color"].ToString();
                newProduct.Size = itemValues["Size"].ToString();
                newProduct.Imgname = itemValues["ImgName"].ToString();
                newProduct.Imgtype = itemValues["ImgType"].ToString();
                newProduct.TotalPrice = 1 * decimal.Parse(itemValues["UnitPrice"].ToString(), System.Globalization.NumberStyles.AllowCurrencySymbol | System.Globalization.NumberStyles.AllowDecimalPoint);
                IList<Product> list = ProductsInCart;
                list.Add(newProduct);
            }
        }
        public static bool IncreaseAddedProducts(string productID)
        {
            bool isExist = false;
            IList<Product> list = ProductsInCart;
            for (int i = 0; i < list.Count; i++)
            {
                if (list[i].ProductId == productID)
                {
                    list[i].Units += 1;
                    list[i].TotalPrice = list[i].Units * list[i].UnitPrice;
                    isExist = true;
                    break;
                }
            }
            return isExist;
        }

        public static IList<Product> ProductsInCart
        {
            get
            {
                try
                {
                    object obj = HttpContext.Current.Session["ProductsInCart"];
                    if (obj == null)
                    {
                        HttpContext.Current.Session["ProductsInCart"] = obj = new List<Product>();
                    }
                    return (IList<Product>)obj;
                }
                catch
                {
                    HttpContext.Current.Session["ProductsInCart"] = null;
                }
                return new List<Product>();
            }
            set { HttpContext.Current.Session["ProductsInCart"] = value; }
        }
    }
}
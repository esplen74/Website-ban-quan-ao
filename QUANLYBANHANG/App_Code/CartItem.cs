using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QUANLYBANHANG.App_Code {
    public class CartItem     {
        private int productID;
        private String productName;
        private double productPrice;
        private int productQuantity;
        private String productImage;
        public int Id
        {
            set { this.productID = value; }
            get { return this.productID; }
        }
        public String Name
        {
            set { this.productName = value; }
            get { return this.productName; }
        }
        public  double Price
        {
            set { this.productPrice = value; }
            get { return this.productPrice; }
        }
        public int Quantity
        {
            set { this.productQuantity = value; }
            get { return this.productQuantity; }
        }
        public String Image
        {
            set { this.productImage = value; }
            get { return this.productImage; }
        }      
        public double TotalPrice
        {
            get { return (this.productQuantity * this.productPrice); }
        }
        public CartItem()
        { }
        public CartItem(int id, String name, double price, int quantity, String image)
        {
            this.productID = id;
            this.productName = name;
            this.productPrice = price;
            this.productQuantity = quantity;
            this.productImage = image;
        }
    }
}
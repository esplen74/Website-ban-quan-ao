using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QUANLYBANHANG.App_Code {
    public class ShoppingCart {
        Dictionary<int,  CartItem> Carts;
        public Dictionary<int,  CartItem> CARTS
        {
            get { return this.Carts;}
        }
        public ShoppingCart()   {
            this.Carts = new Dictionary<int, CartItem>();
        }
         public void Additem(int id, String name, double price, int quantity, String image) {
             if( Carts.ContainsKey(id))
                  Carts[id].Quantity +=Carts[id].Quantity +quantity;
             else {
                CartItem item = new CartItem(id, name, price, quantity, image);
                 Carts.Add(id,item);
             }
        }
        public bool Deleteitem(int id) {
             return Carts.Remove(id);
         }
        public void DeleteAll()
        {
            Carts.Clear();
        }
        public CartItem FindItem(int id)
        {
            if (Carts.ContainsKey(id))
                return Carts[id];
            else
                return null;
        }
        public double TotalBill() {
            double toltal=0;
            foreach (CartItem item in Carts.Values)
                toltal += item.TotalPrice;
            return toltal;
        }
       
    }
}
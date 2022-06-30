using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using QUANLYBANHANG.App_Code; 
namespace QUANLYBANHANG {
    public partial class pageCHITIET : System.Web.UI.Page {
        XULYDULIEU xuly;
        String SQL;
        DataTable tbSANPHAM;
        public void LoadDropDowlist(int soluong) {
            drlSOLUONG.Items.Clear();
            for (int i = 1; i <= soluong; i++)
                this.drlSOLUONG.Items.Add(i.ToString());
        }
        protected void Page_Load(object sender, EventArgs e) {
            String strpath = this.Page.MapPath("app_data\\dbQUANLYBANHANG.mdf");
            xuly = new XULYDULIEU(strpath);         
            if (Request.QueryString.Get("IDSANPHAM") != null) {                 
                    SQL = " select * from tbSANPHAM where IDSANPHAM=" + Request.QueryString.Get("IDSANPHAM");
                    tbSANPHAM = xuly.Bang(SQL);
                    this.Repeater2.DataSource = tbSANPHAM;
                    this.Repeater2.DataBind();
                    if(!IsPostBack)
                    LoadDropDowlist(Convert.ToInt16(tbSANPHAM.Rows[0]["SOLUONG"]));                                      
                }            
        }

        protected void btnGioHang_Click(object sender, EventArgs e)
        {
            //thiết lập cookie
            int id = Convert.ToInt16(tbSANPHAM.Rows[0]["IDSANPHAM"]);
            String Name = tbSANPHAM.Rows[0]["TENSANPHAM"].ToString();
            double price = Convert.ToDouble(tbSANPHAM.Rows[0]["DONGIA"]);
            int quantity = Convert.ToInt16(drlSOLUONG.SelectedValue);
            String image = tbSANPHAM.Rows[0]["HINHANH"].ToString();
            ShoppingCart carts;
            if(Session["ShoppingCart"]!=null){
                carts = (ShoppingCart)Session["ShoppingCart"];
                carts.Additem( id,Name,price,quantity,image);
            }
            else{
                carts = new ShoppingCart();
                carts.Additem(id, Name, price, quantity, image);
            }
            Session["ShoppingCart"] = carts;
            Response.Redirect("pageGIOHANG.aspx");
 
        }
    }
}
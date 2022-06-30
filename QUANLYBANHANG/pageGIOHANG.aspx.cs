using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QUANLYBANHANG.App_Code;
namespace QUANLYBANHANG
{
    public partial class pageGIOHANG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if(Session["ShoppingCart"]!=null && !IsPostBack){
                 ShoppingCart carts = (ShoppingCart)Session["ShoppingCart"];
                 this.grvCARTS.DataSource = carts.CARTS.Values;
                 this.grvCARTS.DataBind();
                 
                 this.grvCARTS.FooterRow.Cells[1].Text = "Tổng tiền=";
                 this.grvCARTS.FooterRow.Cells[4].Text = carts.TotalBill().ToString();
             
             }
        }

		protected void CkbHeader_CheckedChanged(object sender, EventArgs e)
		{
            CheckBox chkheader = (CheckBox)grvCARTS.HeaderRow.FindControl("CkbHeader");
            foreach (GridViewRow row in grvCARTS.Rows)
            {
                CheckBox chkrow = (CheckBox)row.FindControl("ckbItem");
                if (chkheader.Checked == true)
                {
                    chkrow.Checked = true;
                }
                else
                {
                    chkrow.Checked = false;
                }
            }
        }

		protected void btn_Trahang_Click1(object sender, EventArgs e)
		{
            ShoppingCart carts = (ShoppingCart)Session["ShoppingCart"];
            foreach (GridViewRow row in this.grvCARTS.Rows)
            {
                CheckBox ckb = (CheckBox)row.FindControl("ckbItem");
                int id = Convert.ToInt16(row.Cells[0].Text);
                if (ckb.Checked)
                    carts.Deleteitem(id);
            }
            Session["ShoppingCart"] = carts;
            this.grvCARTS.DataSource = carts.CARTS.Values;
            this.grvCARTS.DataBind();
            this.grvCARTS.FooterRow.Cells[1].Text = "Tổng tiền";
            this.grvCARTS.FooterRow.Cells[4].Text = carts.TotalBill().ToString();
        }
	}
}
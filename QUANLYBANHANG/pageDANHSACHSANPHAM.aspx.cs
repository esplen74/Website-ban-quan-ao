using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//DÙNG NGẮT KẾT NỐI
using System.Data;
//dùng kết nối
using System.Data.SqlClient;
using QUANLYBANHANG.App_Code;
namespace QUANLYBANHANG {
    public partial class pageDANHSACHSANPHAM : System.Web.UI.Page {
        XULYDULIEU xuly;
        String SQL;
        protected void Page_Load(object sender, EventArgs e) {

            if (!IsPostBack)
            {
                String strpath = this.Page.MapPath("app_data\\dbQUANLYBANHANG.mdf");
                xuly = new XULYDULIEU(strpath);
                SQL = " select * from tbSANPHAM";
                if (Request.QueryString.Get("IDDANHMUC") != null)
                    SQL += " where IDDANHMUC=" + Request.QueryString.Get("IDDANHMUC");
                this.DataList1.DataSource = xuly.Bang(SQL);
                this.DataList1.DataBind();
                this.DataList1.RepeatColumns = 3;
            }
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //Context.Items["IDSANPHAM"] = ((ImageButton)sender).CommandArgument;
            Response.Redirect("pageCHITIET.aspx?IDSANPHAM=" + ((ImageButton)sender).CommandArgument);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QUANLYBANHANG.App_Code;

namespace QUANLYBANHANG
{
    public partial class pageLogin : System.Web.UI.Page
    {
        XULYDULIEU xuly;
        String SQL;
        protected void Page_Load(object sender, EventArgs e)
        {
            String strpath = this.Page.MapPath("\\app_data\\dbQUANLYBANHANG.mdf");
            xuly = new XULYDULIEU(strpath);
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SQL = "select * from TAIKHOAN where [TenTaiKhoan]='" + txtUser.Text + "' and [MatKhau]='" + txtPass.Text + "'";
            if (xuly.Bang(SQL).Rows.Count > 0)
            {
                Session["TenTaiKhoan"] = txtUser.Text;
                Response.Redirect("pageDANHSACHSANPHAM.aspx");
            }
            else
                Response.Write("<script>alert('Sai User hoặc PassWord!! Vui lòng nhập lại');</script>");
        }
    }
}
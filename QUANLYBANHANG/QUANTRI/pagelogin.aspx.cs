using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QUANLYBANHANG.App_Code;

namespace QUANLYBANHANG.QUANTRI
{
    public partial class pagelogin : System.Web.UI.Page
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
            SQL = "select * from tbLogin where [UserName]='" + txtUser.Text + "' and [PassWord]='" + txtPass.Text + "'";
            if (xuly.Bang(SQL).Rows.Count > 0)
            {
                Session["UserName"] = txtUser.Text;
                Response.Redirect("pageAdmin.aspx");
            }
            else
                Response.Write("<script>alert('Sai User hoặc PassWord!! Vui lòng nhập lại');</script>");
                //Response.Redirect("pagelogin.aspx");
        }
    }
}
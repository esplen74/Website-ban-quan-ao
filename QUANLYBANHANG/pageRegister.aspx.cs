using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QUANLYBANHANG.App_Code;

namespace QUANLYBANHANG
{
    public partial class pageRegister : System.Web.UI.Page
    {
        XULYDULIEU xuly;
        String SQL;
        protected void Page_Load(object sender, EventArgs e)
        {
            String strpath = this.Page.MapPath("\\app_data\\dbQUANLYBANHANG.mdf");
            xuly = new XULYDULIEU(strpath);
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
           
            SQL = "insert into TAIKHOAN values ('"+txtUserName.Text+ "', N'"+txtPassWord.Text+ "', N'"+txtFullName.Text+ "', N'"+txtEmail.Text+"')";


            if (xuly.thucThiSQL(SQL) >= 1)
            {
                Response.Write("<script>alert('Đăng ký thành công !');</script>");
                  Response.Redirect("pageLogin.aspx");
            }
          
            else
                Response.Write("<script>alert('Đăng ký thất bại!! Vui lòng nhập lại');</script>");
        }

       
       


        //void txtFullName_Validating(object sender, CancelEventArgs e)
        //{
        //    int numberEntered;

        //    if (int.TryParse(txtFullName.Text, out numberEntered))
        //    {
        //        if (numberEntered < 1 || numberEntered > 10)
        //        {

        //            txtFullName.Text = 5.ToString();
        //        }
        //    }
        //    else
        //    {

        //        txtFullName.Text = 5.ToString();
        //    }
        //}
    }
}
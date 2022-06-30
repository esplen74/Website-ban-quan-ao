using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QUANLYBANHANG.App_Code;
namespace QUANLYBANHANG.QUANTRI
{
    public partial class adminSite : System.Web.UI.MasterPage
    {
        XULYDULIEU xuly;
        protected void Page_Load(object sender, EventArgs e)
        {
            String strpath = this.Page.MapPath("\\app_data\\dbQUANLYBANHANG.mdf");
            xuly = new XULYDULIEU(strpath); 
            xuly.MoKetNoi();
            xuly.DongKetNoi();
        }
    }
}
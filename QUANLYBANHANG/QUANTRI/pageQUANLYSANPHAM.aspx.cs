using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QUANLYBANHANG.App_Code;
namespace QUANLYBANHANG.QUANTRI
{
    public partial class pageQUANLYSANPHAM : System.Web.UI.Page
    {
        XULYDULIEU xuly;
        String SQL;
        public void loadDropdownlist()
        {
            SQL = " select * from tbDANHMUC";
            this.drlDANHMUCCHA.DataTextField = "TENDANHMUC";
            this.drlDANHMUCCHA.DataValueField = "IDDANHMUC";
            this.drlDANHMUCCHA.DataSource = xuly.Bang(SQL);
            this.drlDANHMUCCHA.DataBind();
        }
        public String UploadAnh()
        {
            String fileName = null;
            if (fulANHSANPHAM.HasFile)
            {
                fileName = fulANHSANPHAM.FileName;
                String path = Server.MapPath("\\IMAGES\\");
                fulANHSANPHAM.PostedFile.SaveAs(path + fileName);
            }
            return fileName;
        }
        public void LoadgridView(String IDDANHMUC)
        {
            SQL = " select * from tbSANPHAM WHERE IDDANHMUC=" + IDDANHMUC;
            this.grdSANPHAM.DataSource = xuly.Bang(SQL);
            this.grdSANPHAM.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            String strpath = this.Page.MapPath("\\app_data\\dbQUANLYBANHANG.mdf");
            xuly = new XULYDULIEU(strpath);
            if(!IsPostBack)
            {
                loadDropdownlist();
                this.drlDANHMUCCHA.SelectedIndex = 0;
                LoadgridView(this.drlDANHMUCCHA.SelectedValue);
            }

        }
        protected void btnTHEMMOI_Click(object sender, EventArgs e)
        {
            String fileName=UploadAnh();
            SQL = " insert into tbSANPHAM(TENSANPHAM,SOLUONG,DONGIA,HINHANH,MOTA,IDDANHMUC)"
                + " VALUES (N'" + txtTENSP.Text + "'," + txtSOLUONG.Text + "," + txtDONGIA.Text + ",'" 
                + fileName + "',N'" + txtMOTA.Text + "'," + drlDANHMUCCHA.SelectedValue + ")";
            int k=xuly.thucThiSQL(SQL);
            if(k!=0)
               Response.Write("<script>alert('Thêm mới thành công');</script>");
            
            else
                Response.Write("<script>alert('Lỗi Thêm mới');</script>");

        }
        protected void drlDANHMUCCHA_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadgridView(this.drlDANHMUCCHA.SelectedValue);
        }

        protected void grdSANPHAM_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            Label lbeidsp = (Label)this.grdSANPHAM.Rows[e.RowIndex].FindControl("lbeSANPHAM");
            int IDSANPHAM = Convert.ToInt32(lbeidsp.Text);
            SQL = "DELETE FROM tbSANPHAM where IDSANPHAM=" + IDSANPHAM;
            xuly.thucThiSQL(SQL);
            this.grdSANPHAM.EditIndex = -1;
            this.grdSANPHAM.DataSource = xuly.Bang(SQL);
            this.grdSANPHAM.DataBind();
             
        }
    }
}
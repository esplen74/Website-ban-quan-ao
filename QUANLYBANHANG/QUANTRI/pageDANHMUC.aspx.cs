using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QUANLYBANHANG.App_Code;
using System.Data;
namespace QUANLYBANHANG.QUANTRI {
    public partial class pageDANHMUC : System.Web.UI.Page  {
        XULYDULIEU xuly;
        String SQL;
        public void loadDropdownlist()   {
            SQL = " select * from tbDANHMUC";           
            this.drlDANHMUCCHA.DataTextField = "TENDANHMUC";
            this.drlDANHMUCCHA.DataValueField = "IDDANHMUC";
            this.drlDANHMUCCHA.DataSource = xuly.Bang(SQL);
            this.drlDANHMUCCHA.DataBind();
        }
        public void loadGridView() {
            SQL = " select * from tbDANHMUC";
            this.grv_DANHMUC.DataSource = xuly.Bang(SQL);
            this.grv_DANHMUC.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e) {
            String strpath = this.Page.MapPath("\\app_data\\dbQUANLYBANHANG.mdf");
            xuly = new XULYDULIEU(strpath);
            if (!IsPostBack) {
                loadDropdownlist();
                loadGridView();
            }            
        }

        protected void btn_Themmoi_Click(object sender, EventArgs e)
        {
            SQL = " insert into tbDANHMUC(ID_DANHMUC_CHA,TENDANHMUC)"
                + " VALUES (" + this.drlDANHMUCCHA.SelectedValue + ",N'" + txtTENDM.Text + "')";
            xuly.thucThiSQL(SQL);
            this.loadGridView();
            //SQL = " select * from tbDANHMUC";
            //DataTable tb = xuly.Bang(SQL);
            //DataRow row = tb.NewRow();
            //row[0] = tb.Rows.Count;
            //row[1] = String.Empty;
            //row[2] = 0;
            //tb.Rows.InsertAt(row, 0);
            //this.grv_DANHMUC.DataSource = tb;
            //this.grv_DANHMUC.DataBind();

            //TextBox txtTenDanhmuc = new TextBox();
            //txtTenDanhmuc.Text = "view more";
            //grv_DANHMUC.Rows[0].Cells[1].Controls.Add(txtTenDanhmuc);
            //DropDownList drlDanhmuc = new DropDownList();
            //SQL = " select * from tbDANHMUC";
            //drlDanhmuc.DataTextField = "TENDANHMUC";
            //drlDanhmuc.DataValueField = "IDDANHMUC";
            //drlDanhmuc.DataSource = xuly.Bang(SQL);
            //drlDanhmuc.DataBind();
            //grv_DANHMUC.Rows[0].Cells[2].Controls.Add(drlDanhmuc);

        }
        protected void grv_DANHMUC_RowEditing(object sender, GridViewEditEventArgs e)  {
            this.grv_DANHMUC.EditIndex = e.NewEditIndex;
            this.loadGridView();
             DropDownList drldanhmuc = (DropDownList)this.grv_DANHMUC.Rows[e.NewEditIndex].FindControl("drl_DANHMUC");
            if(drldanhmuc!=null)   {
                SQL = " select * from tbDANHMUC";
                drldanhmuc.DataTextField = "TENDANHMUC";
                drldanhmuc.DataValueField = "IDDANHMUC";
                drldanhmuc.DataSource = xuly.Bang(SQL);
                drldanhmuc.DataBind();
            }
        }
        protected void grv_DANHMUC_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtdanhmuc = (TextBox)this.grv_DANHMUC.Rows[e.RowIndex].FindControl("txtTENDANHMUC");
            Label lbeiddanhmuc=(Label)this.grv_DANHMUC.Rows[e.RowIndex].FindControl("lbeIDDANHMUC");

            DropDownList drldanhmuc = (DropDownList)this.grv_DANHMUC.Rows[e.RowIndex].FindControl("drl_DANHMUC");

            SQL = " update tbDANHMUC set TENDANHMUC=N'" + txtdanhmuc.Text + "', ID_DANHMUC_CHA=" + drldanhmuc .SelectedValue 
                + " WHERE IDDANHMUC=" + lbeiddanhmuc.Text;
            xuly.thucThiSQL(SQL);
            this.grv_DANHMUC.EditIndex = -1;
            this.loadGridView();  
        }

        protected void grv_DANHMUC_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.grv_DANHMUC.EditIndex = -1;
            this.loadGridView();
        }

        protected void grv_DANHMUC_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label  lbeID = (Label)this.grv_DANHMUC.Rows[e.RowIndex].FindControl("lbeIDDANHMUC");
            int IDDANHMUC = Convert.ToInt32(lbeID.Text);
            SQL = "DELETE FROM tbDANHMUC where IDDANHMUC=" + IDDANHMUC;
            xuly.thucThiSQL(SQL);
            this.grv_DANHMUC.EditIndex = -1;
            this.loadGridView();
        }

        protected void grv_DANHMUC_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.grv_DANHMUC.PageIndex = e.NewPageIndex;
            this.loadGridView();
        }
    }
}
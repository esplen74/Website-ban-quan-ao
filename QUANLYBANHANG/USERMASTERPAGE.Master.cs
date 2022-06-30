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
namespace QUANLYBANHANG
{
    public partial class USERMASTERPAGE : System.Web.UI.MasterPage {
       
        String SQL;
        XULYDULIEU xuly;
        DataTable tbMENU;
       public String strMenu;
        protected void Page_Load(object sender, EventArgs e){
            if (!IsPostBack)
                if (!IsPostBack)
                {
                    String strpath = this.Page.MapPath("app_data\\dbQUANLYBANHANG.mdf");
                    xuly = new XULYDULIEU(strpath);
                    SQL = " select * from tbDANHMUC";
                    tbMENU = xuly.Bang(SQL);
                    tbMENU.DefaultView.RowFilter = "ID_DANHMUC_CHA=0";
                    DataTable tbMenuParent = tbMENU.DefaultView.ToTable();


                    foreach (DataRow row in tbMenuParent.Rows)
                    {

                        strMenu += " <div class='panel panel-default'>";
                        strMenu += "<div class='panel-heading'>";
                        strMenu += "<h4 class='panel-title'>";
                        strMenu += "<a data-toggle='collapse' data-parent='#accordian' href='#" + row["IDDANHMUC"] + "'>";
                        strMenu += "<span class='badge pull-right'><i class='fa fa-plus'></i></span>";
                        strMenu += row["TENDANHMUC"];
                        strMenu += "</a>";
                        strMenu += "</h4>";
                        strMenu += " </div>";
                        DequyMenu(row["IDDANHMUC"].ToString());
                        strMenu += " </div>";
                    }
                }
        }
        public void DequyMenu(String IDPARENT)
        {
            tbMENU.DefaultView.RowFilter = "ID_DANHMUC_CHA=" + IDPARENT;
            DataTable tbMenuParent = tbMENU.DefaultView.ToTable();
            if (tbMenuParent.Rows.Count > 0)
            {
                this.strMenu += "<div id='" + IDPARENT + "' class='panel-collapse collapse'>";
                this.strMenu += "<div class='panel-body'>";
                this.strMenu += "<ul>";
                foreach (DataRow row in tbMenuParent.Rows)
                {
                    this.strMenu += "<li><a href='pageDANHSACHSANPHAM.aspx?IDDANHMUC=" + row["IDDANHMUC"].ToString() + "'>" + row["TENDANHMUC"].ToString() + "</a></li>";

                    DequyMenu(row["IDDANHMUC"].ToString());

                }
                this.strMenu += "</ul>";
                this.strMenu += "</div>";
                this.strMenu += "</div>";
            }
        }
        //        if (!IsPostBack)
        //        {
        //            String strpath = this.Page.MapPath("app_data\\dbQUANLYBANHANG.mdf");
        //            xuly = new XULYDULIEU(strpath);
        //            SQL = " select * from tbDANHMUC";
        //            tbMENU = xuly.Bang(SQL);
        //            tbMENU.DefaultView.RowFilter = "ID_DANHMUC_CHA=0";
        //            DataTable tbMenuParent = tbMENU.DefaultView.ToTable();

        //            foreach (DataRow row in tbMenuParent.Rows)
        //            {

        //                strMenu += " < div class='list-group-collapse sub-men'>";
        //                strMenu += "<a class='list-group-item list-group-item-action' href='#"+ row["IDDANHMUC"]+ " ' data-toggle='collapse' aria-expanded='true' aria-controls='#" + row["IDDANHMUC"] + " '>";
        //                strMenu +=	row["TENDANHMUC"];
        //                //strMenu += "<small class='text-muted'>(100)</small>";
        //                strMenu += "</a>";
        //                DequyMenu(row["IDDANHMUC"].ToString());
        //                strMenu += " </div>";
        //            }
        //        }
        //}
        //public void DequyMenu(String IDPARENT)
        //{
        //    tbMENU.DefaultView.RowFilter = "ID_DANHMUC_CHA=" + IDPARENT;
        //    DataTable tbMenuParent = tbMENU.DefaultView.ToTable();
        //    if (tbMenuParent.Rows.Count > 0)
        //    {
        //        this.strMenu += "<div id=' "+ IDPARENT+ "' class='collapse show' data-parent='#list-group-men' >";
        //        this.strMenu += "<div class='list-group'>";

        //foreach (DataRow row in tbMenuParent.Rows)
        //        {
        //          this.strMenu += "<a href='pageDANHSACHSANPHAM.aspx?IDDANHMUC= "+ row["IDDANHMUC"].ToString() + "'>" + row["TENDANHMUC"].ToString() + "</a>";
        //          DequyMenu(row["IDDANHMUC"].ToString());

        //}
        //        this.strMenu += "</div>";
        //        this.strMenu += "</div>";
        //        this.strMenu += "</div>";
        //    }
        //}
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Context.Items["IDDANHMUC"] = ((LinkButton)sender).CommandArgument;
            Server.Transfer("pageDANHSACHSANPHAM.aspx");

        }
        protected void btnSearch_click(object sender, EventArgs e)
        {
           

        }
    }
}
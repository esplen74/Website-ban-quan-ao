using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
namespace QUANLYBANHANG.App_Code
{
    public class XULYDULIEU
    {
        SqlConnection con;
        public XULYDULIEU(String strpath)
        {
            con = new SqlConnection();
           
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + strpath + ";Integrated Security=True";
        }
        public void MoKetNoi()
        {
            if (this.con.State == ConnectionState.Closed)
                this.con.Open();
        }
        public void DongKetNoi() {
            if (this.con.State == ConnectionState.Open)
                this.con.Close();
        }
        /// <summary>
        /// Phương thức Bang(...) thực thi câu lệnh SQL
        /// trả về dữ liệu kiểu DataTable
        /// </summary>
        /// <param name="SQL">Select * from .../param>
        /// <returns>DataTable</returns>
        public DataTable Bang(String sql) {
            DataTable tb = new DataTable();
            try{
                this.MoKetNoi();
                SqlDataAdapter adp = new SqlDataAdapter(sql, this.con);                
                adp.Fill(tb);            
            }catch(SqlException ex)
            {
            }
             finally {
                this.DongKetNoi();
            }                
            return tb;
        }
        /// <summary>
        /// Phương thức thucThiSQL(...), thực thi SQL bằng phương thức ExecuteNonQuery() 
        /// trả về kết quả (k<>0 thành công, k=0 không thành công)
        /// </summary>
        /// <param name="sql">Insert into..., Delete...., Update....</param>
        /// <returns>int</returns>
        public int thucThiSQL(String sql) {
            int k = 0;
            try{
                this.MoKetNoi();
                SqlCommand cmd = new SqlCommand(sql);
                cmd.Connection = this.con;
               
                k = cmd.ExecuteNonQuery();//thi thi SQL
            }catch(SqlException ex)
            { }
            finally{
                this.DongKetNoi();
            }
            return k;
        }

    }
}
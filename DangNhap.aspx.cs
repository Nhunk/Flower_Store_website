using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class DangNhap : System.Web.UI.Page
{
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        string email = 
        string matKhau =;

        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();

            // Kiểm tra khách hàng
            string sqlKH = "SELECT Khach_ID, HoTen FROM KhachHang WHERE Email=@Email AND MatKhau=@MatKhau";
            SqlCommand cmdKH = new SqlCommand(sqlKH, conn);
            cmdKH.Parameters.AddWithValue("@Email", email);
            cmdKH.Parameters.AddWithValue("@MatKhau", matKhau);

            SqlDataReader readerKH = cmdKH.ExecuteReader();
            if (readerKH.Read())
            {
                Session["LoaiNguoiDung"] = "Khach";
                Session["TenNguoiDung"] = readerKH["HoTen"].ToString();
                readerKH.Close();
                Response.Redirect("TrangMuaHang.aspx");
                return;
            }
            readerKH.Close();

            // Kiểm tra nhân viên
            string sqlNV = "SELECT NhanVien_ID, HoTen FROM NhanVien WHERE Email=@Email";
            SqlCommand cmdNV = new SqlCommand(sqlNV, conn);
            cmdNV.Parameters.AddWithValue("@Email", email);
            SqlDataReader readerNV = cmdNV.ExecuteReader();

            if (readerNV.Read())
            {
                Session["LoaiNguoiDung"] = "Admin";
                Session["TenNguoiDung"] = readerNV["HoTen"].ToString();
                readerNV.Close();
                Response.Redirect("TrangQuanLy.aspx");
                return;
            }
            readerNV.Close();

            lblThongBao.Text = "Sai email hoặc mật khẩu!";
        }
    }

    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {

    }
}

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for KhachHangDal
/// </summary>
public class KhachHangDal:DBConnect
{
    public void ThemKhachHang(KhachHangDao _khachHangDao)
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sqlInsert = "INSERT INTO KhachHang VALUES(@TenKH,@CMND,@GioiTinh,@DiaChi,@SoDT,@Email)";
            cmd = new SqlCommand(sqlInsert, conn);
            cmd.Parameters.AddWithValue("TenKH", _khachHangDao.TenKH);
            cmd.Parameters.AddWithValue("CMND", _khachHangDao.CMND);
            cmd.Parameters.AddWithValue("GioiTinh", _khachHangDao.GioiTinh);
            cmd.Parameters.AddWithValue("DiaChi", _khachHangDao.DiaChi);
            cmd.Parameters.AddWithValue("SoDT", _khachHangDao.SDT);
            cmd.Parameters.AddWithValue("Email",_khachHangDao.Email);
            cmd.ExecuteNonQuery();
        }
        finally
        {
            CloseConnect();
        }

    }
}
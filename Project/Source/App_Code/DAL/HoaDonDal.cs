using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for HoaDonDal
/// </summary>
public class HoaDonDal:DBConnect
{
    public int getMaTP()
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sqlSelect = @"SELECT TOP 1 MaTP FROM ThuePhong ORDER BY MaTP DESC";
            cmd = new SqlCommand(sqlSelect, conn);
            int MaTP = (int)cmd.ExecuteScalar();
            return MaTP;

        }
        finally
        {
            CloseConnect();
        }
        
    }

    public int getNgay()
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sqlSelect = @"SELECT TOP 1 DATEDIFF(day,NgayDen,NgayDi) AS DATEIFF FROM ThuePhong ORDER BY MaTP DESC";
            cmd = new SqlCommand(sqlSelect,conn);
            int ngay = (int)cmd.ExecuteScalar();
            return ngay;
        }
        finally
        {
            CloseConnect();
        }
    }

    public int getGia(string MaP)
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sqlSelect = @"SELECT Gia FROM Phong WHERE MaP = @MaP";
            cmd = new SqlCommand(sqlSelect, conn);
            cmd.Parameters.AddWithValue("MaP", MaP);
            int gia = (int)cmd.ExecuteScalar();
            return gia;
        }
        finally
        {
            CloseConnect();
        }
    }

    public void ThemHoaDon(HoaDonDao _hoaDonDao)
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sqlInsert = @"INSERT INTO HoaDon(MaTP,NgayLap,ThanhTien) VALUES(@MaTP,@NgayLap,@ThanhTien)";
            cmd = new SqlCommand(sqlInsert, conn);
            cmd.Parameters.AddWithValue("MaTP", _hoaDonDao.MaTP);
            cmd.Parameters.AddWithValue("NgayLap", _hoaDonDao.NgayLap);
            cmd.Parameters.AddWithValue("ThanhTien", _hoaDonDao.ThanhTien);
            cmd.ExecuteNonQuery();

        }
        finally
        {
            CloseConnect();
        }
    }
    public DataTable HienThiHoaDonTheoTen(string tenkh)
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sql = "SELECT HoaDon.MaHD , KhachHang.TenKH ,";
            sql += "Phong.TenP , Phong.Gia , ThuePhong.NgayDen , ";
            sql += "ThuePhong.NgayDi ,HoaDon.NgayLap  , HoaDon.ThanhTien ";
            sql += " FROM HoaDon INNER JOIN ThuePhong ON HoaDon.MaTP = ThuePhong.MaTP INNER JOIN KhachHang ON ThuePhong.MaKH = KhachHang.MaKH";
            sql += " INNER JOIN Phong ON ThuePhong.MaP = Phong.MaP WHERE KhachHang.TenKH LIKE '%" + tenkh + "%'";
            cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("TenKH", tenkh);
            dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            return dt;
        }
        finally
        {
            CloseConnect();
        }
    }

    public DataTable HienThiHoaDon()
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sql = "SELECT HoaDon.MaHD , KhachHang.TenKH ,";
            sql += "Phong.TenP , Phong.Gia , ThuePhong.NgayDen, ";
            sql += "ThuePhong.NgayDi ,HoaDon.NgayLap  , HoaDon.ThanhTien ";
            sql += " FROM HoaDon INNER JOIN ThuePhong ON HoaDon.MaTP = ThuePhong.MaTP INNER JOIN KhachHang ON ThuePhong.MaKH = KhachHang.MaKH";
            sql += " INNER JOIN Phong ON ThuePhong.MaP = Phong.MaP ";
            
            cmd = new SqlCommand(sql, conn);
            dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            return dt;
        }
        finally
        {
            CloseConnect();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DatPhongDal
/// </summary>
public class DatPhongDal : DBConnect
{
    public DataTable GetAllData()
    {
        ConnectDB();
        string sql = "SELECT * FROM ThuePhong";
        da = new SqlDataAdapter(sql, conn);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public int GetMaKH()
    {
        ConnectDB();
        OpenConnect();
        string sqlSelect = "SELECT  TOP 1  MaKH FROM KhachHang ORDER BY MaKH DESC";
        cmd = new SqlCommand(sqlSelect, conn);
        int ma = (int)cmd.ExecuteScalar();
        CloseConnect();
        return ma;
    }
    public void DatPhong(DatPhongDao _datPhongDao)
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sqlInsert = "INSERT INTO ThuePhong VALUES(@MaP,@MaKH,@NgayDen,@NgayDi)";
            cmd = new SqlCommand(sqlInsert, conn);
            cmd.Parameters.AddWithValue("MaP", _datPhongDao.MaP);
            cmd.Parameters.AddWithValue("MaKH", _datPhongDao.MaKH);
            cmd.Parameters.AddWithValue("NgayDen",_datPhongDao.NgayDen);
            cmd.Parameters.AddWithValue("NgayDi",_datPhongDao.NgayDi);
            cmd.ExecuteNonQuery();
        }
        finally
        {
            CloseConnect();
        }
    }

}
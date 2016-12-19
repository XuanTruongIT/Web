using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for PhongDal
/// </summary>
public class PhongDal : DBConnect
{




    public DataTable getAllData()
    {
        ConnectDB();
        string sql = "SELECT * FROM Phong";
        da = new SqlDataAdapter(sql, conn);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable getTrangThai()
    {
        ConnectDB();
        string sql = @"SELECT TrangThai FROM Phong GROUP BY TrangThai";
        da = new SqlDataAdapter(sql, conn);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable getAllDataByTrangThai(string TrangThai)
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sql = "SELECT * FROM Phong WHERE TrangThai = @TrangThai";
            cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("TrangThai", TrangThai);
            dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            return dt;
        }
        finally
        {
            CloseConnect();
        }
    }
    public void ThemPhong(PhongDao _phongDao)
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sqlInsert = "INSERT INTO Phong VALUES(@TenP,@TrangThai,@MaLP,@Anh,@Gia)";
            cmd = new SqlCommand(sqlInsert, conn);
            cmd.Parameters.AddWithValue("TenP", _phongDao.TenP);
            cmd.Parameters.AddWithValue("TrangThai", _phongDao.TrangThai);
            cmd.Parameters.AddWithValue("MaLP", _phongDao.MaLP);
            cmd.Parameters.AddWithValue("Anh", _phongDao.Anh);
            cmd.Parameters.AddWithValue("Gia", _phongDao.Gia);
            cmd.ExecuteNonQuery();
        }
        finally
        {
            CloseConnect();
        }
       
       
    }
    public void UpdatePhong(PhongDao _phongDao)
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sqlUpdate = "UPDATE Phong SET(TenP=@TenP,TrangThai=@TrangThai,MaLP=@MaLP,Gia=@Gia) WHERE @MaP=@MaP";
            cmd = new SqlCommand(sqlUpdate, conn);
            cmd.Parameters.AddWithValue("MaP", _phongDao.MaP);
            cmd.Parameters.AddWithValue("TenP", _phongDao.TenP);
            cmd.Parameters.AddWithValue("TrangThai", _phongDao.TrangThai);
            cmd.Parameters.AddWithValue("MaLP", _phongDao.MaLP);
            cmd.Parameters.AddWithValue("Anh", _phongDao.Anh);
            cmd.Parameters.AddWithValue("Gia", _phongDao.Gia);
            cmd.ExecuteNonQuery();
        }
        finally
        {
            CloseConnect();
        }
    }
    public void DeletePhong(PhongDao _phongDao)
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sqlDelete = "DELETE FROM Phong WHERE @MaP=@MaP";
            cmd = new SqlCommand(sqlDelete, conn);
            cmd.Parameters.AddWithValue("MaP", _phongDao.MaP);
            cmd.ExecuteNonQuery();
        }
        finally
        {
            CloseConnect();
        }
    }
    public void UpdateTrangThai(string MaP)
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sqlUpdate = @"UPDATE Phong SET TrangThai = N'Đã thuê' WHERE MaP = @MaP ";
            cmd = new SqlCommand(sqlUpdate, conn);
            cmd.Parameters.AddWithValue("MaP", MaP);
            cmd.ExecuteNonQuery();
        }
        finally
        {
            CloseConnect();
        }
    }
}

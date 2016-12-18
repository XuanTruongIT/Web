using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;



/// <summary>
/// Summary description for PhongDal
/// </summary>
public class PhongDal:DBConnect
{
    DBConnect db = new DBConnect();
    
   

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
        da = new SqlDataAdapter(sql,conn);
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


}
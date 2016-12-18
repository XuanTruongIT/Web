using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ConnectDB
/// </summary>
public class DBConnect
{
    public SqlDataAdapter da;
    public SqlConnection conn;
    public SqlCommand cmd;
    public DataSet ds;
    public DataTable dt;

    public void ConnectDB()
    {
        string strConn = @"Data Source=.;Initial Catalog=QuanLyKhachSan;Integrated Security=True";
        conn = new SqlConnection(strConn);
    }
    public void OpenConnect()
    {
        if (conn.State == ConnectionState.Closed)
        {
            conn.Open();
        }
    }
    public void CloseConnect()
    {
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
    }

    

    

}
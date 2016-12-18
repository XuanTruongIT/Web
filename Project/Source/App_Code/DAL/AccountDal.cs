using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Account
/// </summary>
public class AccountDal:DBConnect
{
    public int TaiKhoan(string UserName, string PassWord)
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sql = "SELECT COUNT(*) FROM PhanQuyen WHERE UserName = @UserName AND PassWord = @PassWord";
            cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("UserName", UserName);
            cmd.Parameters.AddWithValue("PassWord", PassWord);
            int count = (int)cmd.ExecuteScalar();
            return count;
        }
        finally
        {
            CloseConnect();
        }
    }

    public int PhanQuyen(string UserName)
    {
        try
        {
            ConnectDB();
            OpenConnect();
            string sql = "SELECT Quyen FROM PhanQuyen WHERE UserName = @UserName";
            cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("UserName", UserName);
            int quyen = (int)cmd.ExecuteScalar();
            return quyen;
        }
        finally
        {
            CloseConnect();
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;



/// <summary>
/// Summary description for PhongDAL
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


}
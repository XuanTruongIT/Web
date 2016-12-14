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
        string sql = "SELECT * FROM Phong";
        return db.getAllData(sql);
    }
   



}
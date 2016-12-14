using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for PhongBLL
/// </summary>
public class PhongBll
{
    PhongDal _phongDal = new PhongDal();
   
    public DataTable getAllData()
    {
        return _phongDal.getAllData();
    }
}
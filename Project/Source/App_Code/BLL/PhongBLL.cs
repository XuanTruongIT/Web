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

    public DataTable getTrangThai()
    {
        return _phongDal.getTrangThai();
    }

    public DataTable getAllDataByTrangThai(string TrangThai)
    {
        return _phongDal.getAllDataByTrangThai(TrangThai);
    }
}
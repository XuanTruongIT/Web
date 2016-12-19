using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for PhongBll
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
    public void ThemPhong(PhongDao _phongDao)
    {
        _phongDal.ThemPhong(_phongDao);
    }
    public void UpdateTrangThai(string MaP)
    {
        _phongDal.UpdateTrangThai(MaP);
    }
}
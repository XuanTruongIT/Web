using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DatPhongBll
/// </summary>
public class DatPhongBll
{
    DatPhongDal _datPhongDal = new DatPhongDal();
   

    public int LayMaKH()
    {
        return _datPhongDal.GetMaKH();
    }
    public void DatPhong(DatPhongDao _datPhongDao)
    {
        _datPhongDal.DatPhong(_datPhongDao);
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for HoaDonBll
/// </summary>
public class HoaDonBll
{
    HoaDonDal _hoaDonDal = new HoaDonDal();
    public int getMaTP()
    {
        return _hoaDonDal.getMaTP();
    }
    public void ThemHoaDon(HoaDonDao _hoaDonDao)
    {
        _hoaDonDal.ThemHoaDon(_hoaDonDao);
    }

    public int getNgay()
    {
        return _hoaDonDal.getNgay();
    }
    public float getGia(string MaP)
    {
        return _hoaDonDal.getGia(MaP);
    }
}
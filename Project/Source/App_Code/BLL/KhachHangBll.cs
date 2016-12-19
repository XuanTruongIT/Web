using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for KhachHangBll
/// </summary>
public class KhachHangBll
{
    KhachHangDal _khachHangDal = new KhachHangDal();
    public void ThemKhachHang(KhachHangDao _khachHangDao)
    {
        _khachHangDal.ThemKhachHang(_khachHangDao);
    }
}
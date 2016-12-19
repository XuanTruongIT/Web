using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for HoaDonDao
/// </summary>
public class HoaDonDao
{
    public int MaHD { get; set; }
    public int MaTP { get; set; }
    public DateTime NgayLap { get; set; }
    public float ThanhTien { get; set; }

    public HoaDonDao()
    {

    }

    public HoaDonDao(int maHD, int maTP, DateTime ngayLap, float thanhTien)
    {
        this.MaHD = maHD;
        this.MaTP = maTP;
        this.NgayLap = ngayLap;
        this.ThanhTien = thanhTien;
    }
}
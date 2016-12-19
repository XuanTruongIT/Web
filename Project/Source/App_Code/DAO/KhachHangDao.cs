using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for KhachHangDao
/// </summary>
public class KhachHangDao
{
    public int MaKH { get; set; }
    public string TenKH { get; set; }
    public int CMND { get; set; }
    public string GioiTinh { get; set; }
    public string DiaChi { get; set; }
    public int SDT { get; set; }
    public string Email { get; set; }
    public KhachHangDao()
    {

    }
    public KhachHangDao(int maKH,string tenKH,int cmnd,string gioiTinh,string diaChi,int sdt,string email)
    {
        this.MaKH = maKH;
        this.TenKH = tenKH;
        this.CMND = cmnd;
        this.GioiTinh = gioiTinh;
        this.DiaChi = diaChi;
        this.SDT = sdt;
        this.Email = email;
    }
}
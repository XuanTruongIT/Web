using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for PhongDao
/// </summary>
public class PhongDao
{
    public int MaP { get; set; }
    public string TenP { get; set; }
    public string TrangThai { get; set; }
    public int MaLP { get; set; }
    public string Anh { get; set; }
    public int Gia { get; set; }
    public PhongDao()
    {

    }
    public PhongDao(int maP, string tenP, string trangThai, int maLP, string anh, int gia)
    {
        this.MaP = maP;
        this.TenP = tenP;
        this.TrangThai = trangThai;
        this.MaLP = maLP;
        this.Anh = anh;
        this.Gia = gia;
    }

}
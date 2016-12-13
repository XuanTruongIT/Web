using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for PhongDAO
/// </summary>
public class PhongDAO
{
    public int MaP { get; set; }
    public string TenP { get; set; }
    public string TrangThai { get; set; }
    public int MaLP { get; set; }
    public string Anh { get; set; }
    public float Gia { get; set; }

    public PhongDAO()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public PhongDAO(int maP, string tenP, string trangThai, int maLP, string anh, float gia)
    {
        this.MaP = maP;
        this.TenP = tenP;
        this.TrangThai = trangThai;
        this.MaLP = maLP;
        this.Anh = anh;
        this.Gia = gia;
    }
    

}
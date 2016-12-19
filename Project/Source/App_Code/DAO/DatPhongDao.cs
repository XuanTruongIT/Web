using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DatPhongDao
/// </summary>
public class DatPhongDao
{

    public int MaTP { get; set; }
    public int MaP { get; set; }
    public int MaKH { get; set; }
    public DateTime NgayDen { get; set; }
    public DateTime NgayDi { get; set; }

    public DatPhongDao()
    {

    }
    public DatPhongDao(int maTP,int maP,int maKH,DateTime ngayDen,DateTime ngayDi)
    {
        this.MaTP = maTP;
        this.MaP = maP;
        this.MaKH = maKH;
        this.NgayDen = ngayDen;
        this.NgayDi = ngayDi;
    }
   

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChiTietDatPhong : System.Web.UI.Page
{
    KhachHangBll _khachHangBll = new KhachHangBll();
    KhachHangDao _khachHangDao = new KhachHangDao();
    DatPhongBll _datPhongBll = new DatPhongBll();
    DatPhongDao _datPhongDao = new DatPhongDao();
    PhongBll _phongBll = new PhongBll();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string MaP = Session["MaP"].ToString();
            _khachHangDao.TenKH = txtHoTen.Text;
            _khachHangDao.CMND = int.Parse(txtCMND.Text);
            _khachHangDao.GioiTinh = txtGioiTinh.Text;
            _khachHangDao.DiaChi = txtDiaChi.Text;
            _khachHangDao.SDT = int.Parse(txtSDT.Text);
            _khachHangDao.Email = txtEmail.Text;
            _khachHangBll.ThemKhachHang(_khachHangDao);
            _datPhongDao.MaP = int.Parse(MaP.ToString());
            _datPhongDao.MaKH = _datPhongBll.LayMaKH();
            _datPhongDao.NgayDen = DateTime.Parse(txtNgayDen.Text);
            _datPhongDao.NgayDi = DateTime.Parse(txtNgayDi.Text);
            _datPhongBll.DatPhong(_datPhongDao);
            _phongBll.UpdateTrangThai(MaP.ToString());
            Response.Write("<script>alert('Đặt phòng thành công')</script>");
            Response.AddHeader("refresh", "3;url=TrangChu.aspx");

        }
        catch (Exception ex)
        {
            Response.Write(e.ToString());
            Response.Write("<script>alert('Đặt phòng thất bại')</script>");
            Response.AddHeader("refresh", "3;url=ChiTietDatPhong.aspx");

        }
        
        

        

    }
}
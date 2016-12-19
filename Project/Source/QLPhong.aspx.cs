using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QLPhong : System.Web.UI.Page
{
    PhongBll _phongBll = new PhongBll();
    PhongDao _phongDao = new PhongDao();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = _phongBll.getAllData();
        GridView1.DataBind();
    }

   
    

    protected void lbtnXoa_Command1(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int MaP = int.Parse(e.CommandArgument.ToString());
            _phongDao.MaP = MaP;
            _phongBll.XoaPhong(_phongDao);
            Response.Write("<script>alert('Xóa thành công')</script>");
            Response.AddHeader("refresh", "2;url=QLPhong.aspx");
        }
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        if (Page.IsValid && FileUpload1.HasFile)
        {
            string fileName = "Images/" + FileUpload1.FileName;
            string filePath = MapPath(fileName);
            FileUpload1.SaveAs(filePath);
            //Image1.ImageUrl = fileName;
            _phongDao.TenP = TextBox1.Text;
            _phongDao.TrangThai = DropDownList1.SelectedValue;
            _phongDao.MaLP = int.Parse(DropDownList2.SelectedValue);
            _phongDao.Anh = fileName.ToString();
            _phongDao.Gia = float.Parse(TextBox5.Text);
            _phongBll.ThemPhong(_phongDao);
            Response.Write("<script>alert('Thêm thành công')</script>");
            Response.AddHeader("refresh", "2;url=QLPhong.aspx");
        }
        else
        {
            Response.Write("Lỗi");
        }
    }
}







    
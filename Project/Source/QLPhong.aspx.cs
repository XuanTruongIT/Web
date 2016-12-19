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

    protected void Button1_Click(object sender, EventArgs e)
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
        }
        else
        {
            Response.Write("Lỗi");
        }
    }

    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        Session["RoomID"] = e.CommandArgument.ToString();
        //_phongDao.MaP = int.Parse(Session["RoomID"].ToString());
        //_phongBll.XoaPhong(_phongDao);
        Response.Write(Session["RoomID"]);
        

     }
    
}
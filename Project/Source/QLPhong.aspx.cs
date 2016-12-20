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
        if (!IsPostBack)
        {
            GridView1.DataSource = _phongBll.getAllData();
            GridView1.DataBind();
            if (Session["quyen"] == null || (int)Session["quyen"] != 1 || Session["quyen"].ToString() == "" || Session["account"] == null || Session["account"].ToString() == "")
            {
                Response.Redirect("TrangChu.aspx");
            }

        }


    }




    protected void lbtnXoa_Command1(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            try
            {
                int MaP = int.Parse(e.CommandArgument.ToString());
                _phongDao.MaP = MaP;
                _phongBll.XoaPhong(_phongDao);
                GridView1.DataSource = _phongBll.getAllData();
                GridView1.DataBind();
                Response.Write("<script>alert('Xóa thành công')</script>");
                //Response.AddHeader("refresh", "2;url=QLPhong.aspx");
            }
            catch (Exception)
            {

                Response.Write("<script>alert('Xóa thất bại')</script>");
            }
        }
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        //if (Page.IsValid && FileUpload1.HasFile)
        //{
        //    string fileName = "Images/" + FileUpload1.FileName;
        //    string filePath = MapPath(fileName);
        //    FileUpload1.SaveAs(filePath);
        //    //Image1.ImageUrl = fileName;
        //    _phongDao.TenP = txtTenP.Text;
        //    _phongDao.TrangThai = DropDownList1.SelectedValue;
        //    _phongDao.MaLP = int.Parse(DropDownList2.SelectedValue);
        //    _phongDao.Anh = fileName.ToString();
        //    _phongDao.Gia = int.Parse(txtGia.Text);
        //    _phongBll.ThemPhong(_phongDao);
        //    GridView1.DataSource = _phongBll.getAllData();
        //    GridView1.DataBind();
        //    Response.Write("<script>alert('Thêm thành công')</script>");
        //Response.AddHeader("refresh", "2;url=QLPhong.aspx");
    }
    //else
    //{
    //    Response.Write("<script>alert('Thêm thất bại')</script>");
    //}






    protected void lbtnSua_Command(object sender, CommandEventArgs e)
    {
        int map = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "sua")
        {
            Session["RoomID"] = map.ToString();
            Response.Redirect("SuaPhong.aspx");
        }

    }


    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows == 1)
        {
            GridView1.DataSource = _phongBll.getAllData();
            GridView1.DataBind();
            Response.Write("<script>alert('Thêm thành công')</script>");

            //Page.Response.Redirect(Page.Request.Url.ToString(), true);
            //Response.AddHeader("refresh", "3;url=QLPhong.aspx");
        }
        else
        {
            Response.Write("<script>alert('Thêm thất bại')</script>");
        }
    }

    protected void lbtnLoad_Click(object sender, EventArgs e)
    {
        FileUpload FileUpload1 = (FileUpload)FormView1.FindControl("FileUpload1");
        Image Image1 = (Image)FormView1.FindControl("Image1");
        if (Page.IsValid && FileUpload1.HasFile)
        {
            string fileName = "Images/" + FileUpload1.FileName;
            string filePath = MapPath(fileName);
            FileUpload1.SaveAs(filePath);
            Image1.ImageUrl = fileName;
        }
    }



    protected void Cancel_Click(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName=="Cancel")
        {
            Response.Redirect("Admin.aspx");
        }
    }
}




    
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    PhongBll _phongBll = new PhongBll();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

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

    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.AffectedRows == 1)
        {
            Response.Write("<script>alert('Sửa thành công')</script>");
            Response.AddHeader("refresh", "3;url=QLPhong.aspx");
        }
        else
        {
            Response.Write("<script>alert('Sửa thất bại')</script>");
        }
    }
}
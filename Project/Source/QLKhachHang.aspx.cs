using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QLKhachHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["quyen"] == null || (int)Session["quyen"] != 1 || Session["quyen"].ToString() == "" || Session["account"] == null || Session["account"].ToString() == "")
            {
                Response.Redirect("TrangChu.aspx");
            }
        }
    }

    protected void Quaylai_Click(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName=="Cancel")
        {
            Response.Redirect("Admin.aspx");
        }
    }

    protected void Them_Click(object sender, FormViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            err.Text = "Có lỗi xảy ra :" + e.Exception.Message;
            e.KeepInInsertMode = true;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 1)
        {
            Response.Write("<script>alert('Thêm nhân viên thành công !')</script>");
            Response.AddHeader("refresh", "1;url=QLKhachHang.aspx");
        }
    }
}
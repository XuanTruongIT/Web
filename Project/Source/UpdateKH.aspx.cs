using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateKH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Cancel_Click(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName=="Cancel")
        {
            Response.Redirect("QLKhachHang.aspx");
        }
    }

    protected void Sua_Click(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            err.Text = "Có lỗi xảy ra :" + e.Exception.Message;
            e.KeepInEditMode = true;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 1)
        {
            Response.Write("<script>alert('Sửa nhân viên thành công !')</script>");
            Response.AddHeader("refresh", "1;url=QLKhachHang.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QlHoaDon : System.Web.UI.Page
{
    HoaDonBll _hoaDonBll = new HoaDonBll();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //    GridView1.DataSource = _hoaDonBll.HienThiHoaDon();
            //    GridView1.DataBind();
            //if (Session["quyen"] == null || (int)Session["quyen"] != 1 || Session["quyen"].ToString() == "" || Session["account"] == null || Session["account"].ToString() == "")
            //{
            //    Response.Redirect("TrangChu.aspx");
            //}
        }
    }

    //protected void btntimkiem_Click(object sender, EventArgs e)
    //{
    //    string tenKH = txtSearch.Text;
    //    GridView1.DataSource = _hoaDonBll.hienThitheoTen(tenKH);
    //    GridView1.DataBind();

    //}

    //protected void txtSearch_TextChanged(object sender, EventArgs e)
    //{
    //    string tenKH = txtSearch.Text;
    //    GridView1.DataSource = _hoaDonBll.hienThitheoTen(tenKH);
    //    GridView1.DataBind();
    //}
}
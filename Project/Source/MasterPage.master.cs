using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["account"] == null || Session["account"].ToString() == "")
            {
                lblAcc.Text = "";
                dangnhap.Visible = true;
                dangxuat.Visible = false;
            }
            else
            {
                string acc = Session["account"].ToString();
                lblAcc.Text = "Xin chào, " + acc;
                dangnhap.Visible = false;
                dangxuat.Visible = true;
            }
        }
    }

    protected void dangxuat_Click(object sender, EventArgs e)
    {
        Session["account"] = "";
        Response.Redirect("TrangChu.aspx");
    }

    protected void dangnhap_Click(object sender, EventArgs e)
    {
        Response.Redirect("TrangChu.aspx");
    }
}

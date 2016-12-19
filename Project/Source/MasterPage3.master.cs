using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage3 : System.Web.UI.MasterPage
{
    AccountBll _accountBll = new AccountBll();
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


    protected void btnLogin_ServerClick(object sender, EventArgs e)
    {

        string Name = txtName.Text;
        string Pass = txtPass.Text;
        Session["account"] = "";
        if (_accountBll.TaiKhoan(Name,Pass)>0)
        {
            Session["account"] = Name;
            if (_accountBll.PhanQuyen(Name) == 1)
            {
                Server.Transfer("Admin.aspx");
                
            }
            else if (_accountBll.PhanQuyen(Name) == 2)
            {
                Response.Redirect("TrangChu.aspx");
                
            }
            lblAcc.Text = "Xin chào, " + Name;
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
        else
        {
            Response.Write("<script>alert('Tài khoản không tồn tại')</script>");
        }
        
    }







    protected void dangxuat_Click(object sender, EventArgs e)
    {
        Session["account"] = "";
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
    }
}

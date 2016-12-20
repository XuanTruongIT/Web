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
                HyperLink1.Visible = false;
                dangnhap.Visible = true;
                dangxuat.Visible = false;
                
            }
            else
            {
                string acc = Session["account"].ToString();
                string quyen = Session["quyen"].ToString();
                lblAcc.Text = "Xin chào, " + acc;
                dangnhap.Visible = false;
                dangxuat.Visible = true;
                if (quyen == "1")
                {
                    HyperLink1.Visible = true;
                }
                else
                {
                    HyperLink1.Visible = false;
                }


            }
        }
            
        
    }


    protected void btnLogin_ServerClick(object sender, EventArgs e)
    {

        string Name = txtName.Text;
        string Pass = txtPass.Text;
        Session["account"] = "";
        Session["quyen"] = "";
        if (_accountBll.TaiKhoan(Name,Pass)>0)
        {
            Session["account"] = Name;
            if (_accountBll.PhanQuyen(Name) == 1)
            {
                Session["quyen"] = 1;
                HyperLink1.Visible = true;
                Response.Redirect("Admin.aspx");
                
            }
            else if (_accountBll.PhanQuyen(Name) == 2)
            {
                Session["quyen"] = 2;
                HyperLink1.Visible = false;
                Response.Redirect("TrangChu.aspx");
                
            }
            lblAcc.Text = "Xin chào, " + Name;
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
        else
        {
            HyperLink1.Visible = false;
            Response.Write("<script>alert('Tài khoản không đúng')</script>");
        }
        
    }







    protected void dangxuat_Click(object sender, EventArgs e)
    {
        Session["account"] = "";
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
    }
}

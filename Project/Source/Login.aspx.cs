using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    DBConnect db = new DBConnect();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            txtUserName.Text = "";
            txtPassWord.Text = "";
            txtUserName.Focus(); 
        }


    }



    //protected void btnLogin_Click(object sender, EventArgs e)
    //{
    //    int count = (int)db.TaiKhoan(txtUserName.Text, txtPassWord.Text);
    //    if (count > 0)
    //    {
    //        int quyen = (int)db.PhanQuyen(txtUserName.Text);
    //        if (quyen == 1)
    //        {
    //            Session["account"] = txtUserName.Text;
    //            Session["quyen"] = quyen;
    //            Response.Redirect("Default3.aspx");
    //        }
    //        else if (quyen == 2)
    //        {
    //            Session["account"] = txtUserName.Text;
    //            Session["quyen"] = quyen;
    //            Response.Redirect("Default3.aspx");
    //        }
    //    }
    //    else
    //    {
    //        Response.Redirect("Login.aspx");
    //    }

    //}

    
}
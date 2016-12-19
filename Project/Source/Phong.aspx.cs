using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            AnHienButton();
        }
    }

    private void AnHienButton()
    {
        foreach (DataListItem item in DataList1.Items)
        {
            Label lblTrangThai = (Label)item.FindControl("lblTrangThai");
            Button btnDatPhong = (Button)item.FindControl("btnDatPhong");
            if (lblTrangThai.Text.Equals("Trống"))
            {
                btnDatPhong.Visible = true;
            }
            else
            {
                btnDatPhong.Visible = false;
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue.ToString() == "1")
        {
            DropDownList2.DataSourceID = "DBLoaiPhong";
            DropDownList2.DataTextField = "TenPhong";
            DropDownList2.DataValueField = "MaLP";
            //DropDownList2.DataBind();
        }
        else if (DropDownList1.SelectedValue.ToString() == "2")
        {
            DropDownList2.DataSourceID = "DBGia";
            DropDownList2.DataTextField = "Gia";
            DropDownList2.DataValueField = "Gia";
            //DropDownList2.DataBind();
        }
        else
        {
            DropDownList2.DataSourceID = "DBTrangThai";
            DropDownList2.DataTextField = "TrangThai";
            DropDownList2.DataValueField = "TrangThai";
            //DropDownList2.DataBind();
        }
    }



    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue.ToString() == "1")
        {
            Session["MaLP"] = DropDownList2.SelectedValue.ToString();
            DataList1.DataSourceID = "DBPhong1";
            //AnHienButton();


        }
        else if (DropDownList1.SelectedValue.ToString() == "2")
        {
            Session["Gia"] = DropDownList2.SelectedValue.ToString();
            DataList1.DataSourceID = "DBPhong2";
            //AnHienButton();

        }
        else
        {
            Session["TrangThai"] = DropDownList2.SelectedValue.ToString();
            DataList1.DataSourceID = "DBPhong3";
            //AnHienButton();

        }
        
    }

    protected void btnDatPhong_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName=="Chon")
        {
            Session["MaP"] = e.CommandArgument.ToString();
        }
        
    }
}
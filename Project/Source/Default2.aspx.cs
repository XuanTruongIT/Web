using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox txt = (TextBox)FormView1.FindControl("TextBox1");
        Label lbl = (Label)FormView1.FindControl("Label2");
        //if (txt.MaxLength == 0 || txt.Text == "")
        //{
        //    //lbl.Text = "Không được để trống";

        //}
        //else
        //{
        //    lbl.Text = "???";
        //}
        
            if (TextBox2.Text.Length ==0 || TextBox2.Text == "")
            {
                Label4.Text = "Không được để trống";
            }
        else if (TextBox2.Text.Length < 6)
        {
            Label4.Text = "Phải nhập độ dài từ 6 ký tự ";
        }

        else if (TextBox2.Text.Length > 10)
        {
            Label4.Text = "Độ dài không cho phép";
        }

        else
        {
            Label4.Text = "";
        }
          
        
    }
}
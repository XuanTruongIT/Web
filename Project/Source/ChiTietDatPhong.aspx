<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietDatPhong.aspx.cs" Inherits="ChiTietDatPhong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/Phong.css" rel="stylesheet" />
<div id="formdatphong">
    <h1 id="ttdp">THÔNG TIN ĐẶT PHÒNG</h1>
  &nbsp;<table style="text-align:right; border-collapse:separate; border-spacing:10px;">
        <tr >
            <td class="ctdp">Họ và tên : </td>
            <td>
                <asp:TextBox ID="txtHoTen" runat="server" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="ctdp">CMND : </td>
            <td>
                <asp:TextBox ID="txtCMND" runat="server" type = "number" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="ctdp">Giới tính : </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="GioiTinh" DataValueField="GioiTinh" Height="22px" Width="175px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT GioiTinh FROM KhachHang GROUP BY GioiTinh"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="ctdp">Địa chỉ : </td>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="ctdp">Số điện thoại : </td>
            <td>
                <asp:TextBox ID="txtSDT" type="number" runat="server" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="ctdp">Email : </td>
            <td>
                <asp:TextBox ID="txtEmail" type="email" runat="server" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="ctdp">Ngày đặt phòng : </td>
            <td><asp:TextBox ID="txtNgayDen" runat="server" type="date" required="required" Width="173"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="ctdp">Ngày rời đi : </td>
            <td><asp:TextBox ID="txtNgayDi" runat="server" type="date" required="required" Width="173"></asp:TextBox></td>
        </tr>
       
    </table>
    <br />
    <asp:Button ID="btnDatPhong" runat="server" Text="Đặt phòng" OnClick="btnDatPhong_Click" style="background-image:url('btn.png'); font-family:'Monotype Corsiva',Courier New;color: #ffffff; 
    border-radius:15px;
    margin:10px 0 150px 170px;
    font-size: 22px;
    border: 2px hidden #808080;
    background-size: cover;
    background-image: url('../Images/btn.png');"  />
  </div>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietDatPhong.aspx.cs" Inherits="ChiTietDatPhong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  Phiếu đăng ký đặt phòng

    <table>
        <tr>
            <td>Họ và tên :</td>
            <td>
                <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>CMND</td>
            <td>
                <asp:TextBox ID="txtCMND" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Giới tính</td>
            <td>
                <asp:TextBox ID="txtGioiTinh" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Địa chỉ</td>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Số điện thoại</td>
            <td>
                <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Ngày đặt phòng</td>
            <td><asp:TextBox ID="txtNgayDen" runat="server" type="date"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Ngày rời đi</td>
            <td><asp:TextBox ID="txtNgayDi" runat="server" type="date"></asp:TextBox></td>
        </tr>
       
    </table>

    <asp:Button ID="Button1" runat="server" Text="Đặt phòng" OnClick="Button1_Click" />

</asp:Content>


﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietDatPhong.aspx.cs" Inherits="ChiTietDatPhong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="formdatphong">
  &nbsp;<table>
        <tr>
            <td>Họ và tên :</td>
            <td>
                <asp:TextBox ID="txtHoTen" runat="server" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>CMND</td>
            <td>
                <asp:TextBox ID="txtCMND" runat="server" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Giới tính</td>
            <td>
                <asp:TextBox ID="txtGioiTinh" runat="server" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Địa chỉ</td>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Số điện thoại</td>
            <td>
                <asp:TextBox ID="txtSDT" type="number" runat="server" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txtEmail" type="email" runat="server" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Ngày đặt phòng</td>
            <td><asp:TextBox ID="txtNgayDen" runat="server" type="date" required="required"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Ngày rời đi</td>
            <td><asp:TextBox ID="txtNgayDi" runat="server" type="date" required="required"></asp:TextBox></td>
        </tr>
       
    </table>

    <asp:Button ID="btnDatPhong" runat="server" Text="Đặt phòng" OnClick="btnDatPhong_Click" />
  </div>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/Trangchu.css" rel="stylesheet" />
   <div id="tieude">
        <h1 id="wc1">Xin chào, Admin</h1> 
        <h2 id="cm1">Quản lý thông tin</h2> 
   </div>

   <div id="noidung">
       <ul class="">
         <li id="qlroom"> 
             <a href="QLPhong.aspx">
                 <div class="w">
                     <div class="content_icon">
                         <div class="icon">
                             <img src="Images/qlphong_img.png" /> 
                         </div>
                         <div class="title1">
                             QUẢN LÝ PHÒNG
                         </div>
                     </div>
                 </div>
             </a>
        </li>
           <li id="qlnhanvien"> 
             <a href="QLNhanVien.aspx">
                 <div class="w">
                     <div class="content_icon">
                         <div class="icon">
                             <img src="Images/nhanvien_img.png" />
                         </div>
                         <div class="title1">
                             QUẢN LÝ NHÂN VIÊN
                         </div>
                     </div>
                 </div>
             </a>
        </li>
            <li id="qlkhachhang"> 
             <a href="QLKhachHang.aspx">
                 <div class="w">
                     <div class="content_icon">
                         <div class="icon">
                             <img src="Images/khachang_img.png" />                           
                         </div>
                         <div class="title1">
                             QUẢN LÝ KHÁCH HÀNG
                         </div>
                     </div>
                 </div>
             </a>
        </li>
           <li id="qlthongke"> 
             <a href="#">
                 <div class="w">
                     <div class="content_icon">
                         <div class="icon">
                             <img src="Images/thongke_img.png" />                           
                         </div>
                         <div class="title1">
                             THỐNG KÊ
                         </div>
                     </div>
                 </div>
             </a>
        </li>
       </ul>
   </div>
</asp:Content>


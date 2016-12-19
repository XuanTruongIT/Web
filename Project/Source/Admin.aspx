<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/Trangchu.css" rel="stylesheet" />
   <div id="tieude">
        <h1 id="wc">Welcome to Royal Hotel!</h1> 
        <h2 id="cm">CHÀO MỪNG QUÝ KHÁCH ĐẾN VỚI KHÁCH SẠN ROYAL HÀ NỘI</h2> 
   </div>

   <div id="noidung">
       <ul class="">
         <li id="room"> 
             <a href="#">
                 <div class="w">
                     <div class="content_icon">
                         <div class="icon">
                             <img src="Images/phong.png" />  
                         </div>
                         <div class="title">
                             QUẢN LÝ PHÒNG
                         </div>
                     </div>
                 </div>
             </a>
        </li>
           <li id="note"> 
             <a href="#">
                 <div class="w">
                     <div class="content_icon">
                         <div class="icon">
                             <img src="Images/thongbao.png" />
                         </div>
                         <div class="title">
                             QUẢN LÝ NHÂN VIÊN
                         </div>
                     </div>
                 </div>
             </a>
        </li>
            <li id="gioithieu"> 
             <a href="#">
                 <div class="w">
                     <div class="content_icon">
                         <div class="icon">
                             <img src="Images/gioithieu.png" />                           
                         </div>
                         <div class="title">
                             QUẢN LÝ KHÁCH HÀNG
                         </div>
                     </div>
                 </div>
             </a>
        </li>
           <li id="sukien"> 
             <a href="#">
                 <div class="w">
                     <div class="content_icon">
                         <div class="icon">
                             <img src="Images/sukien.png" />                            
                         </div>
                         <div class="title">
                             THỐNG KÊ
                         </div>
                     </div>
                 </div>
             </a>
        </li>
       </ul>
   </div>
</asp:Content>


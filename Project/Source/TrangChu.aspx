<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="Default3" EnableEventValidation="false"%>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <link href="CSS/Trangchu.css" rel="stylesheet" />
   <div id="tieude">
       <h1>Welcome to Royal Hotel!</h1> 
    <h2>CHÀO MỪNG QUÝ KHÁCH ĐẾN VỚI KHÁCH SẠN ROYAL HÀ NỘI</h2> 
   </div>

   <div id="noidung">
       <ul class="">
         <li id="room"> 
             <img class="anh" src="Images/room.jpg"  width="300" height="300"/>
             <a href="#">
                 <div class="">
                     <div class="content_icon">
                         <div class="icon">
                             <img src="Images/ic_date_range_white_24dp_2x.png" />
                         </div>
                         <div class="title">
                             PHÒNG Ở
                         </div>
                     </div>
                 </div>
             </a>
        </li>
       </ul>
   </div>         
</asp:Content>


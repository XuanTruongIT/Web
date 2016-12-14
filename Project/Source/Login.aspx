<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link href="CSS/login.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <div id="header">
            <div id="logo"><img src="Images/logo.jpg" width="200" height="100"/></div>
            <div id="rightheader"><a href="Default3.aspx">Royal Ha Noi</a></div>
        </div>
        <div id="content">
            <div id="anh">
                <img id="anh1"src="Images/pic4.jpg" width="400" height="300" />
            </div>
            <div id="login">
               <h1>Login</h1>
                <p><asp:TextBox ID="txtUserName" runat="server" placeholder="Username" required="required"></asp:TextBox></p>
                <p><asp:TextBox ID="txtPassWord" runat="server" placeholder="Password" required="required"></asp:TextBox></p>
                <p><asp:Button ID="btnLogin" runat="server" Text="Login" /></p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

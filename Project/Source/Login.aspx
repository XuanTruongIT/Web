<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="CSS/login.css" rel="stylesheet" />
<head runat="server">
    <title></title>
</head>
<body>
    <div id="header">
        <h2 id="logo"><a href="Default3.aspx">Royal Ha Noi </a></h2>
    </div>
    <div id="content">
    <div class="login">
      <h1>Login</h1>
      <form method="post" action="index.html">
        <p><input type="text" name="login" value="" placeholder="Username"></p>
        <p><input type="password" name="password" value="" placeholder="Password"></p>
        <p class="submit"><input type="submit" name="commit" value="Login"></p>
      </form>
    </div>
   </div>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link type="text/css" rel="stylesheet" href="css/css.css" />
<link type="text/css" rel="stylesheet" href="css/style1.css" />
<title>登录</title>
</head>
    <body bgcolor="#000000">

        <form id="form1" runat="server">

        <div class="clear"></div>
<div class="login">
<div class="login_nr">
<ul class="ul_login">
<li><a href="Main.aspx">返回首页</a></li>
<li><a href="Regist.aspx">用户注册</a></li>
<li><a href="Update.aspx">资料修改</a></li>

</ul>
<div class="clear" style="font-family: 宋体; font-size: medium">
    
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户账号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Label ID="lblInfo" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户密码: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Label ID="lblInfo2" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 验 证 码：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/绘制验证码图片.aspx" />
    <asp:LinkButton ID="LinkButton1" runat="server">看不清</asp:LinkButton>
    <asp:Label ID="lblValid" runat="server" Text=""></asp:Label>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="返回首页" PostBackUrl="~/Main.aspx" Width="79px" />
    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="点我登录" Width="62px" />
    
    &nbsp;&nbsp;&nbsp;</div>

</div>
</div>
   
        </form>
   
</body>
</html>

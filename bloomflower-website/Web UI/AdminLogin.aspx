<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员登录</title>
    <style>
        body {
            background-color:navajowhite;
        }

        .auto-style1 {
            height: 80px;
        }

    </style>
</head>
<body>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table style="width: 100%;">
                <tr>
                    <td style="font-size: xx-large; font-family: @微软雅黑; text-align: center; height: 100px;">后台登录 </td>
                </tr>
                <tr>
                    <td style="text-align: center">用户账号<asp:TextBox ID="txtId" runat="server" class="txtInput" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; height: 50px;">密&nbsp; 码 <asp:TextBox ID="txtPassword" runat="server" class="txtInput" TextMode="Password" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;color:Red;">
                        <asp:Label ID="LabErrorMsg" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; " class="auto-style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/Main.aspx" Text="返回网站首页" />
&nbsp;&nbsp;
                        &nbsp;<asp:Button ID="btnLogin" runat="server" class="btnLogin" Text="登录" OnClick="btnLogin_Click" Width="108px" />
                    &nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="忘记密码？" Visible="False" PostBackUrl="~/管理员找回密码.aspx" Width="107px" />
                    </td>
                </tr>
            </table>
        </p>
    <div>
    
    </div>
    </form>
</body>
</html>

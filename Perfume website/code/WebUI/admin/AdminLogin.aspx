<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="admin_AdminLog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 702px;
        }
        body {
            background-image:url('image/adminbg3.jpg');
            background-repeat:no-repeat;
            background-size:cover;
        }
        .auto-style2 {
            height: 153px;
        }
        .auto-style3 {
            height: 169px;
        }
        .auto-style4 {
            height: 153px;
            width: 312px;
        }
        .auto-style5 {
            height: 169px;
            width: 312px;
        }
        .auto-style6 {
            height: 153px;
            width: 533px;
        }
        .auto-style7 {
            height: 169px;
            width: 533px;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            font-size: medium;
            height: 24px;
        }
        .auto-style11 {
            font-size: medium;
        }
        .auto-style12 {
            font-size: x-large;
            height: 44px;
        }
        .auto-style13 {
            height: 44px;
        }
        .auto-style14 {
            width: 62px;
        }
        .auto-style15 {
            font-size: x-large;
            height: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style6"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style7">
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style12"></td>
                            <td style="font-size: xx-large; color: #FFFFFF;" class="auto-style13">&nbsp;&nbsp; &nbsp; &nbsp; 后台登录</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2" style="color: #FFFFFF">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2" style="color: #FFFFFF">管理员ID：</td>
                        </tr>
                        <tr>
                            <td class="auto-style9" colspan="2">
                    <asp:TextBox ID="txtAdminId" runat="server" Width="263px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtAdminId" runat="server" ControlToValidate="txtAdminId" ErrorMessage="请输入管理员ID" ForeColor="White" style="font-size: medium"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11" colspan="2" style="color: #FFFFFF">密码：</td>
                        </tr>
                        <tr>
                            <td class="auto-style9" colspan="2">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="password" Width="263px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="请输入密码" ForeColor="White" style="font-size: medium"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9" colspan="2">
                    &nbsp;<table class="auto-style8">
                                    <tr>
                                        <td class="auto-style14">&nbsp;</td>
                                        <td>
                    <asp:Button ID="Button1" runat="server" class="bnt_blue_2" OnClick="Button1_Click" style="margin-left: 0px; margin-top: 3px;" Text="登 录" BackColor="#FFFF66" ForeColor="Black" Height="29px" Width="115px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

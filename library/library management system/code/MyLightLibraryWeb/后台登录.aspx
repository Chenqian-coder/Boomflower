<%@ Page Language="C#" AutoEventWireup="true" CodeFile="后台登录.aspx.cs" Inherits="后台登录" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style3 {
        height: 20px;
            text-align: center;
        }
        .auto-style5 {
            height: 25px;
        }
    .auto-style4 {
        height: 23px;
    }
        .auto-style1 {
            width: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table class="auto-style1">
    <tr>
        <td class="auto-style3" colspan="10">
            <asp:Image ID="Image1" runat="server" EnableTheming="True" ImageUrl="~/Image/后台logo.jpg" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style5"></td>
        <td style="border: thin hidden #CC6600; text-align: right" class="auto-style5">
            <asp:Label ID="Label4" runat="server" Text="管理员ID："></asp:Label>
        </td>
        <td colspan="4" style="border: thin hidden #CC6600; text-align: center" class="auto-style5">&nbsp;<asp:TextBox ID="txtuserId" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuserId" ErrorMessage="请输入 I D"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style5"></td>
        <td class="auto-style5"></td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4" style="border: thin hidden #CC6600; text-align: right">
            <asp:Label ID="Label5" runat="server" Text="密   码  ："></asp:Label>
        </td>
        <td class="auto-style4" colspan="4" style="border: thin hidden #CC6600; text-align: center">
            &nbsp;
            <asp:TextBox ID="txtuserPwd" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuserPwd" ErrorMessage="请输入密码"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td colspan="5" style="text-align: center">
            <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/Image/登录2.jpg" OnClick="ImageButton12_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/首页.aspx">返回</asp:HyperLink>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="10">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="10">&nbsp;</td>
    </tr>
</table>
    
    </div>
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="登录页.aspx.cs" Inherits="登录页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        height: 20px;
    }
    .auto-style4 {
        height: 23px;
    }
        .auto-style5 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td colspan="10" style="text-align: left; background-color: #808080;">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" style="text-align: left" Text="用户登录"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
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
            <asp:Label ID="Label4" runat="server" Text="用户名："></asp:Label>
        </td>
        <td colspan="4" style="border: thin hidden #CC6600; text-align: center" class="auto-style5">&nbsp;<asp:TextBox ID="txtuserId" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuserId" ErrorMessage="请输入用户名"></asp:RequiredFieldValidator>
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
            <asp:TextBox ID="txtuserPwd" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuserPwd" ErrorMessage="请输入 密 码"></asp:RequiredFieldValidator>
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
&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/忘记密码.aspx">忘记密码</asp:HyperLink>
&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/注册页.aspx">注册</asp:HyperLink>
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
    <tr>
        <td colspan="10">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="10">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="10">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="10">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="10">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="10">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="10">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="10">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="10">&nbsp;</td>
    </tr>
</table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyInfo.aspx.cs" Inherits="myInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style22 {
        }
        .auto-style24 {
            height: 100px;
            width: 151px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style24" style="background-color: #000000; color: #FFFFFF; ">&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink12" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="~/MyCollect.aspx">我的收藏</asp:HyperLink>
            </td>
            <td class="auto-style22" rowspan="3">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/hello.jpg" style="margin-left: 306px" Height="352px" Width="333px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style24" style="background-color: #000000; color: #FFFFFF; ">&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink13" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="~/MyInfoManage.aspx">修改个人信息</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style24" style="background-color: #000000; color: #FFFFFF; ">&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink14" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="~/PasswordManage.aspx">修改密码</asp:HyperLink>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style13"></td>
        </tr>
    </table>
</asp:Content>


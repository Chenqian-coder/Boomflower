<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyInfoManage.aspx.cs" Inherits="MyInfoManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style24 {
            height: 100px;
            width: 151px;
        }
        .auto-style25 {
            height: 22px;
        }
        .auto-style27 {
            height: 22px;
            width: 127px;
        }
        .auto-style28 {
            width: 127px;
        }
        .auto-style29 {
            width: 127px;
            height: 24px;
        }
        .auto-style31 {
            height: 22px;
            width: 205px;
        }
        .auto-style32 {
            width: 205px;
        }
        .auto-style33 {
            width: 205px;
            height: 24px;
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
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style32">&nbsp;</td>
                        <td class="auto-style28" style="border-color: #C0C0C0">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style32">&nbsp;</td>
                        <td class="auto-style28" style="border-color: #C0C0C0">用户ID:</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31"></td>
                        <td class="auto-style27" style="border-color: #C0C0C0">用户名: </td>
                        <td class="auto-style25">
                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style32">&nbsp;</td>
                        <td class="auto-style28" style="border-color: #C0C0C0">姓名: </td>
                        <td>
                            <asp:TextBox ID="txtRealname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style33">&nbsp;</td>
                        <td class="auto-style29">性别: </td>
                        <td class="auto-style13">
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="Sex" Text="男" />
                    &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="Sex" Text="女" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style32">&nbsp;</td>
                        <td class="auto-style28" style="border-color: #C0C0C0">出生日期: </td>
                        <td>
                            <asp:TextBox ID="txtBirthday" runat="server" onClick="WdatePicker()"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style32">&nbsp;</td>
                        <td class="auto-style28" style="border-color: #C0C0C0">联系方式:</td>
                        <td>
                            <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style33"></td>
                        <td class="auto-style29" style="border-color: #C0C0C0">电子邮件:</td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style33"></td>
                        <td class="auto-style29" style="border-color: #C0C0C0">注册时间:</td>
                        <td class="auto-style13">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style32">&nbsp;</td>
                        <td class="auto-style28" style="border-color: #C0C0C0">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style32">&nbsp;</td>
                        <td class="auto-style28" style="border-color: #C0C0C0">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" class="bnt_blue_2" OnClick="Button1_Click" style="margin-left: 13px" Text="   修改   " />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style24" style="background-color: #000000; color: #FFFFFF; ">&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink13" runat="server" Font-Underline="False" ForeColor="Aqua" NavigateUrl="~/MyInfoManage.aspx">修改个人信息</asp:HyperLink>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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


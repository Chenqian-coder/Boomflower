<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="个人信息.aspx.cs" Inherits="个人信息" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 55px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" rowspan="9" style="background-color: #000000">
                <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/Image/个人信息.jpg" OnClick="ImageButton12_Click" style="text-align: left" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td rowspan="3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
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
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4" rowspan="2">用户ID：</td>
            <td class="auto-style5" rowspan="2">
                <asp:Label ID="lbUserId" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td rowspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4" rowspan="2">用户名：</td>
            <td class="auto-style5" rowspan="2">
                <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtUsername" runat="server" ControlToValidate="tbUserName" ErrorMessage="请输入用户名" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="2">&nbsp;</td>
            <td rowspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td rowspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4" rowspan="2">姓 名 ：</td>
            <td class="auto-style5" rowspan="2">
                <asp:TextBox ID="tbUserRealName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtRealname" runat="server" ControlToValidate="tbUserRealName" ErrorMessage="请输入姓名" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="2">&nbsp;</td>
            <td rowspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" rowspan="7" style="background-color: #a0a0a0">
                <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/Image/我的书架.jpg" OnClick="ImageButton13_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4" rowspan="2">性别：</td>
            <td class="auto-style5" rowspan="2">
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="Sex" Text="男" />
                &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="Sex" Text="女" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4" rowspan="2">
                <asp:Label ID="Label3" runat="server" Text="出生日期："></asp:Label>
            </td>
            <td class="auto-style5" rowspan="2">
                <asp:TextBox ID="tbBirthday" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtBirthday" runat="server" ControlToValidate="tbBirthday" ErrorMessage="请输入出生日期" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4" rowspan="2">联系方式：</td>
            <td class="auto-style5" rowspan="2">
                <asp:TextBox ID="tbContect" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtContact" runat="server" ControlToValidate="tbContect" ErrorMessage="请输入联系方式" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbContect" ErrorMessage="请填写正确的电话！" SetFocusOnError="True" ValidationExpression="^1(?:3\d|4[4-9]|5[0-35-9]|6[67]|7[013-8]|8\d|9\d)\d{8}$" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4" rowspan="2">电子邮件：</td>
            <td class="auto-style5" rowspan="2">
                <asp:TextBox ID="tbMail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtEmail" runat="server" ControlToValidate="tbMail" ErrorMessage="请输入电子邮件" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbMail" ErrorMessage="请填写正确形式的邮箱！" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" rowspan="6" style="background-color: #a0a0a0">
                <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/Image/我的评论.jpg" OnClick="ImageButton14_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4" rowspan="2">注册时间：</td>
            <td class="auto-style5" rowspan="2">
                <asp:Label ID="lblTime" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td rowspan="3" style="text-align: left">
                <asp:Button ID="btnUpdate" runat="server" style="text-align: left" Text="修改信息" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnok" runat="server" OnClick="btnok_Click" Text="确认修改" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdatePwd" runat="server" Text="修改密码" OnClick="Button2_Click" CausesValidation="False" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
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
        </tr>
    </table>
</asp:Content>


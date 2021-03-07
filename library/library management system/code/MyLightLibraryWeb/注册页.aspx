<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="注册页.aspx.cs" Inherits="注册页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            height: 32px;
        }
        .auto-style5 {
            text-align: center;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="auto-style1">
            <tr>
                <td style="background-color: #808080; text-align: left;">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" style="text-align: left" Text="用户注册"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table align="center" bgcolor="#dddddd" border="0" cellpadding="5" cellspacing="1" width="60%">
            <tr>
                <td bgcolor="#ffffff">用户ID:</td>
                <td bgcolor="#ffffff" class="auto-style3">
                    <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserId" ErrorMessage="请输入用户ID" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">用户名: </td>
                <td bgcolor="#ffffff" class="auto-style3">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="请输入用户名" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">密码: </td>
                <td bgcolor="#ffffff" class="auto-style3">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="请输入密码" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">确认密码: </td>
                <td bgcolor="#ffffff" class="auto-style3">
                    <asp:TextBox ID="txtRepassword" runat="server" TextMode="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRepassword" ErrorMessage="请输入确认密码" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRepassword" ErrorMessage="两次输入密码不一致" Display="Dynamic"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">姓名: </td>
                <td bgcolor="#ffffff" class="auto-style3">
                    <asp:TextBox ID="txtRealname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtRealname" runat="server" ControlToValidate="txtRealname" ErrorMessage="请输入姓名" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">性别: </td>
                <td bgcolor="#ffffff" class="auto-style3">
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="Sex" Text="男" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Sex" Text="女" />
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">出生日期: </td>
                <td bgcolor="#ffffff" class="auto-style3">
                    <asp:TextBox ID="txtBirthday" runat="server" onClick="WdatePicker()"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtBirthday" runat="server" ControlToValidate="txtBirthday" ErrorMessage="请输入出生日期" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" class="auto-style4">联系方式: </td>
                <td bgcolor="#ffffff" class="auto-style5">
                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtContact" runat="server" ControlToValidate="txtContact" ErrorMessage="请输入联系方式" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtContact" ErrorMessage="请填写正确的电话！" SetFocusOnError="True" ValidationExpression="^1(?:3\d|4[4-9]|5[0-35-9]|6[67]|7[013-8]|8\d|9\d)\d{8}$" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" class="auto-style24">电子邮件: </td>
                <td bgcolor="#ffffff" class="auto-style3">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="请输入电子邮件" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="请填写正确形式的邮箱！" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" class="bnt_blue_2" OnClick="Button1_Click" style="height: 27px" Text="   注册   " />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
</asp:Content>


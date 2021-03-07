<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

  h6{
margin:0; padding:0; border:none; list-style-type:none;
}
  	 h6{height:38px; line-height:38px; text-align:right; font-size:12px; background:#f6f6f6; color:#3f3f3f;
  border:1px solid #fff; padding-right:10px;
  }
        .auto-style24 {
            height: 37px;
        }
        h6{height:38px; line-height:38px; text-align:right; font-size:12px; background:#f6f6f6; color:#3f3f3f;
  border:1px solid #fff; padding-right:10px;
  }
  h6{
margin:0; padding:0; border:none; list-style-type:none;
}
  h6 span{float:left; padding-left:15px; font-size:14px;}

        .auto-style24 {
            height: 37px;
        }
        .auto-style25 {
            width: 792px;
        }
        .auto-style26 {
            height: 37px;
            width: 792px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h6><span>用户注册</span></h6>
    <p>
        <table align="center" bgcolor="#dddddd" border="0" cellpadding="5" cellspacing="1" width="60%">
            <tr>
                <td bgcolor="#ffffff">用户ID:</td>
                <td bgcolor="#ffffff" class="auto-style25">
                    <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserId" ErrorMessage="请输入用户ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">用户名: </td>
                <td bgcolor="#ffffff" class="auto-style25">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="请输入用户名"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">密码: </td>
                <td bgcolor="#ffffff" class="auto-style25">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="请输入密码"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">确认密码: </td>
                <td bgcolor="#ffffff" class="auto-style25">
                    <asp:TextBox ID="txtRepassword" runat="server" TextMode="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRepassword" ErrorMessage="请输入确认密码"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRepassword" ErrorMessage="两次输入密码不一致"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">姓名: </td>
                <td bgcolor="#ffffff" class="auto-style25">
                    <asp:TextBox ID="txtRealname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtRealname" runat="server" ControlToValidate="txtRealname" ErrorMessage="请输入姓名"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">性别: </td>
                <td bgcolor="#ffffff" class="auto-style25">
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="Sex" Text="男" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Sex" Text="女" />
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">出生日期: </td>
                <td bgcolor="#ffffff" class="auto-style25">
                    <asp:TextBox ID="txtBirthday" runat="server" onClick="WdatePicker()"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtBirthday" runat="server" ControlToValidate="txtBirthday" ErrorMessage="请输入出生日期"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">联系方式: </td>
                <td bgcolor="#ffffff" class="auto-style25">
                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtContact" runat="server" ControlToValidate="txtContact" ErrorMessage="请输入联系方式"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtContact" ErrorMessage="请填写正确的电话！" SetFocusOnError="True" ValidationExpression="^(13[0-9]|15[0|3|6|7|8]|18[8|9])\d{8}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" class="auto-style24">电子邮件: </td>
                <td bgcolor="#ffffff" class="auto-style26">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="请输入电子邮件"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="请填写正确形式的邮箱！" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" colspan="2" style="text-align: left">
                    <asp:Button ID="Button1" runat="server" class="bnt_blue_2" OnClick="Button1_Click" style="height: 27px" Text="   注册   " />
                    <asp:HyperLink ID="HyperLink6" runat="server" Font-Size="Small" Font-Underline="False" NavigateUrl="~/Login.aspx">登录</asp:HyperLink>
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


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

h6{height:38px; line-height:38px; text-align:right; font-size:12px; background:#f6f6f6; color:#3f3f3f;
  border:1px solid #fff; padding-right:10px;
  }
  h6{
margin:0; padding:0; border:none; list-style-type:none;
}
  h6 span{float:left; padding-left:15px; font-size:14px;}
  
        .auto-style23 {
            width: 506px;
        }
        .auto-style24 {
            height: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h6><span>用户登录</span></h6>
    <p>
        <table align="center" bgcolor="#dddddd" border="0" cellpadding="5" cellspacing="1" width="60%">
            <tr>
                <td bgcolor="#ffffff">用户ID: </td>
                <td bgcolor="#ffffff" class="auto-style23" colspan="3">
                    <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtUserId" runat="server" ControlToValidate="txtUserId" ErrorMessage="请输入用户ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff">密码: </td>
                <td bgcolor="#ffffff" class="auto-style23" colspan="3">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="请输入密码"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" bgcolor="#ffffff" colspan="4" style="text-align: left" class="auto-style24">
                    <asp:Button ID="Button1" runat="server" class="bnt_blue_2" OnClick="Button1_Click" style="height: 27px" Text="   登录   " />
                    &nbsp;<asp:HyperLink ID="HyperLink6" runat="server" Font-Size="Small" Font-Underline="False" NavigateUrl="~/ForgetPwd.aspx">忘记密码</asp:HyperLink>
                    &nbsp;<asp:HyperLink ID="HyperLink7" runat="server" Font-Size="Small" Font-Underline="False" NavigateUrl="~/Register.aspx">注册</asp:HyperLink>
                    &nbsp;&nbsp; </td>
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
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
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


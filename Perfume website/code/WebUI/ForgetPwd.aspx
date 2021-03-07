<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPwd.aspx.cs" Inherits="forgetPwd" %>

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
        .auto-style25 {
            width: 113px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h6><span>忘记密码</span></h6>
        <p>
        <table align="center" bgcolor="#dddddd" border="0" cellpadding="5" cellspacing="1" width="60%">
            <tr>
                <td bgcolor="#ffffff" class="auto-style25">用户ID: </td>
                <td bgcolor="#ffffff" class="auto-style23">
                    <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtUserId" runat="server" ControlToValidate="txtUserId" ErrorMessage="请输入用户ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" class="auto-style25">注册手机号: </td>
                <td bgcolor="#ffffff" class="auto-style23">
                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtContact" runat="server" ControlToValidate="txtContact" ErrorMessage="请输入手机号"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" class="auto-style25">新密码：</td>
                <td bgcolor="#ffffff" class="auto-style23">
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="password" Width="187px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="请输入新密码"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" bgcolor="#ffffff" colspan="2" style="text-align: left" class="auto-style24">
                    <asp:Button ID="Button1" runat="server" class="bnt_blue_2" OnClick="Button1_Click" style="height: 27px" Text="   修改   " />
                    &nbsp;&nbsp;&nbsp;&nbsp; </td>
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
        <br />
    </p>
        </asp:Content>


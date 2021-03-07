<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PasswordManage.aspx.cs" Inherits="PasswordManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

h6{height:38px; line-height:38px; text-align:right; font-size:12px; background:#f6f6f6; color:#3f3f3f;
  border:1px solid #fff; padding-right:10px;
  }
  h6{
margin:0; padding:0; border:none; list-style-type:none;
}
  h6 span{float:left; padding-left:15px; font-size:14px;}
  	    .auto-style24 {
            height: 100px;
            width: 151px;
        }
     .auto-style26 {
        width: 142px;
        height: 24px;
        font-weight: 700;
    }
    .auto-style29 {
        width: 142px;
    }
    .auto-style30 {
        width: 182px;
        height: 24px;
    }
    .auto-style31 {
        width: 182px;
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
                <table class="auto-style1" style="height: 198px">
                    <tr>
                        <td class="auto-style30"></td>
                        <td class="auto-style26">新密码：</td>
                        <td class="auto-style13">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTxtPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="请输入密码"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">&nbsp;</td>
                        <td class="auto-style26">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style30"></td>
                        <td class="auto-style26">确认新密码：</td>
                        <td class="auto-style13">
                    <asp:TextBox ID="txtRepassword" runat="server" TextMode="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRepassword" ErrorMessage="请输入确认密码"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRepassword" ErrorMessage="两次输入密码不一致"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">&nbsp;</td>
                        <td class="auto-style26">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style30">&nbsp;</td>
                        <td class="auto-style26">&nbsp;</td>
                        <td class="auto-style13">
                            <asp:Button ID="Button2" runat="server" BackColor="#FFFF66" OnClick="Button2_Click" style="margin-left: 33px" Text="修改" Width="86px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31">&nbsp;</td>
                        <td class="auto-style29">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style24" style="background-color: #000000; color: #FFFFFF; ">&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink13" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="~/MyInfoManage.aspx">修改个人信息</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style24" style="background-color: #000000; color: #FFFFFF; ">&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink14" runat="server" Font-Underline="False" ForeColor="Aqua" NavigateUrl="~/PasswordManage.aspx">修改密码</asp:HyperLink>
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


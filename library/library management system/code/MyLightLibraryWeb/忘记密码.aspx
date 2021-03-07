<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="忘记密码.aspx.cs" Inherits="忘记密码" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="background-color: #808080; text-align: left;">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" style="text-align: left" Text="修改密码"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
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
                <asp:TextBox ID="txtContact" runat="server" TextMode="password"></asp:TextBox>
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
            <td align="center" bgcolor="#ffffff" class="auto-style24" colspan="2" style="text-align: left">
                <asp:Button ID="Button1" runat="server" class="bnt_blue_2" OnClick="Button1_Click" style="height: 27px" Text="   修改   " />
                &nbsp;&nbsp;&nbsp;&nbsp; </td>
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
    </table>
    <br />
</asp:Content>


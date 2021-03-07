<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="管理员信息管理.aspx.cs" Inherits="管理员信息管理" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Label ID="Label1" runat="server" Text="管理员ID："></asp:Label>
            <asp:TextBox ID="tbAdminId" runat="server"></asp:TextBox>
            <asp:Button ID="btnSelect" runat="server" Text="搜索" />
&nbsp;&nbsp;
            <asp:Button ID="btnInsert" runat="server" Text="添加" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="adminId" style="margin-left: 103px" Width="79%" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="adminId" HeaderText="管理员ID" />
                    <asp:BoundField DataField="adminPwd" HeaderText="管理员密码" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="text-align: center">
            <asp:Panel ID="Panel1" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="管理员ID："></asp:Label>
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="tbInsertId" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text=" 密 码 ："></asp:Label>
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="tbInsertPwd" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>


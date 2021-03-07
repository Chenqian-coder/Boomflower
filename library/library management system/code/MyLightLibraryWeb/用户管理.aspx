<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="用户管理.aspx.cs" Inherits="用户管理" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
            width: 204px;
        }
        .auto-style4 {
            text-align: center;
            width: 674px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:Label ID="Label1" runat="server" Text="用户ID："></asp:Label>
            <asp:TextBox ID="tbUserId" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="用户名："></asp:Label>
            <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSelect" runat="server" Text="搜索" OnClick="btnSelect_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style4">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userId" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="userId" HeaderText="用户ID" />
                    <asp:BoundField DataField="userName" HeaderText="用户名" />
                    <asp:BoundField DataField="realName" HeaderText="真实姓名" />
                    <asp:BoundField DataField="sex" HeaderText="性别" />
                    <asp:BoundField DataField="birthday" HeaderText="生日" />
                    <asp:BoundField DataField="contact" HeaderText="电话" />
                    <asp:BoundField DataField="email" HeaderText="邮箱" />
                    <asp:BoundField DataField="regdate" HeaderText="注册时间" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </td>
        <td class="auto-style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">&nbsp;</td>
    </tr>
</table>
</asp:Content>


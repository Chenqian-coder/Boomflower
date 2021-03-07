<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="评论管理.aspx.cs" Inherits="评论管理" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        text-align: center;
    }
    .auto-style4 {
        text-align: center;
        width: 588px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="用户ID："></asp:Label>
            <asp:TextBox ID="tbUserId" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="小说ID："></asp:Label>
            <asp:TextBox ID="tbBookId" runat="server"></asp:TextBox>
            <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="搜索" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="commentId" OnRowDeleting="GridView1_RowDeleting" Width="100%">
                <Columns>
                    <asp:BoundField DataField="commentId" HeaderText="评论ID" />
                    <asp:BoundField DataField="bookId" HeaderText="小说ID" />
                    <asp:BoundField DataField="userId" HeaderText="用户ID" />
                    <asp:BoundField DataField="userName" HeaderText="用户名" />
                    <asp:BoundField DataField="bookComment" HeaderText="评论内容" />
                    <asp:BoundField DataField="time" HeaderText="评论时间" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
</table>
</asp:Content>


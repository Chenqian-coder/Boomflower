<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="后台查询页.aspx.cs" Inherits="后台查询页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="小说ID："></asp:Label>
            <asp:TextBox ID="tbBookId" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="书名："></asp:Label>
            <asp:TextBox ID="tbBookName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="搜索" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">
            <asp:Button ID="Button2" runat="server" Font-Size="X-Large" Height="50px" OnClick="Button2_Click" Text="添加" Width="150px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
    <asp:DataList ID="DataList1" runat="server" CellSpacing="100" RepeatColumns="5" style="text-align: center">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("bookImage") %>' Width="130px" />
        <br />
        <asp:LinkButton ID="LinkButton5" runat="server" Text='<%# Eval("bookName") %>' CommandArgument='<%# Eval("bookId") %>' OnClick="LinkButton5_Click"></asp:LinkButton>
    </ItemTemplate>
</asp:DataList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
</table>
</asp:Content>


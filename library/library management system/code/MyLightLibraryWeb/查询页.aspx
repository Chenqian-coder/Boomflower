<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="查询页.aspx.cs" Inherits="查询页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellSpacing="100" RepeatColumns="5" style="text-align: center">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("bookImage") %>' Width="130px" />
        <br />
        <asp:LinkButton ID="LinkButton5" runat="server" Text='<%# Eval("bookName") %>' CommandArgument='<%# Eval("bookId") %>' OnClick="LinkButton5_Click"></asp:LinkButton>
    </ItemTemplate>
</asp:DataList>
</asp:Content>


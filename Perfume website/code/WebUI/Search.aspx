<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellSpacing="20" RepeatColumns="3" style="margin-left: 249px; margin-top: 67px">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="310px" ImageUrl='<%# Eval("image") %>' Width="300px" />
            <br />
            <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="Black" OnClick="LinkButton5_Click" Text='<%# Eval("perfumeName") %>'></asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


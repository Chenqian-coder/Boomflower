<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="下载页.aspx.cs" Inherits="下载页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" style="text-align: center" Width="100%">
        <ItemTemplate>
            <table class="auto-style1" style="width: 100%">
                <tr>
                    <td>
                        <asp:Label ID="lbchapter" runat="server" Text='<%# Eval("bookChapter") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:HyperLink ID="hlDownload" runat="server" NavigateUrl='<%# Eval("bookDownload") %>'>转入下载页</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="我的书架.aspx.cs" Inherits="我的书架" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style3 {
            width: 55px;
        }
        .auto-style4 {
            width: 25px;
        }
        .auto-style5 {
            width: 25px;
            height: 38px;
        }
        .auto-style6 {
            width: 25px;
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" rowspan="7" style="background-color: #a0a0a0">
                <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/Image/个人信息2.jpg" OnClick="ImageButton12_Click" style="text-align: left" />
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td colspan="5" rowspan="17">    <asp:DataList ID="DataList1" runat="server" CellSpacing="70" RepeatColumns="4" style="text-align: center">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("bookImage") %>' Width="130px" />
        <br />
        <asp:LinkButton ID="LinkButton5" runat="server" Text='<%# Eval("bookName") %>' CommandArgument='<%# Eval("bookId") %>' OnClick="LinkButton5_Click"></asp:LinkButton>
    </ItemTemplate>
</asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style3" rowspan="7" style="background-color: #000000">
                <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/Image/我的书架2.jpg" OnClick="ImageButton13_Click" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3" rowspan="6" style="background-color: #a0a0a0">
                <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/Image/我的评论.jpg" OnClick="ImageButton14_Click" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td colspan="4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="text-align: left">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="text-align: left">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


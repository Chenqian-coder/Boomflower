<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="我的评论.aspx.cs" Inherits="我的评论" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            width: 55px;
        }
        .auto-style5 {
            width: 240px;
        }
        .auto-style6 {
            width: 426px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" rowspan="7" style="background-color: #a0a0a0">
                <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/Image/个人信息2.jpg" OnClick="ImageButton12_Click" style="text-align: left" />
            </td>
            <td>&nbsp;</td>
            <td colspan="5" rowspan="17">
                <asp:DataList ID="DataList1" runat="server" Width="100%">
                    <ItemTemplate>
                        <table class="auto-style1" style="height: 70px">
                            <tr>
                                <td class="auto-style5" rowspan="3" style="text-align: center">
                                    <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# Eval("bookImage") %>' Width="130px" />
                                    <br />
                                    <asp:Label ID="lbbookName" runat="server" style="text-align: center" Text='<%# Eval("bookName") %>'></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                </td>
                                <td colspan="2" style="text-align: left">
                                    <asp:Label ID="lbcomment" runat="server" Text='<%# Eval("bookComment") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td rowspan="2">
                                    <asp:Label ID="lbtime" runat="server" Text='<%# Eval("time") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" rowspan="7" style="background-color: #a0a0a0">
                <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/Image/我的书架.jpg" OnClick="ImageButton13_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" rowspan="6" style="background-color: #000000">
                <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/Image/我的评论2.jpg" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="4">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/提示.jpg" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="text-align: left">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="text-align: left">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


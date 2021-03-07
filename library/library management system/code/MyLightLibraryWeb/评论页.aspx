<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="评论页.aspx.cs" Inherits="评论页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 167px;
        }
        .auto-style4 {
            height: 15px;
        }
        .auto-style5 {
            height: 16px;
            text-align: left;
        }
        .auto-style6 {
            height: 20px;
            text-align: center;
        }
        .auto-style7 {
            width: 675px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">
                <asp:DataList ID="DataList1" runat="server" Width="100%">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3" rowspan="3" style="text-align: center">
                                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/Image/用户头像.jpg" Width="150px" />
                                </td>
                                <td class="auto-style5">用户：<asp:Label ID="lbuserName" runat="server" Text='<%# Eval("userName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="lbcomment" runat="server" Text='<%# Eval("bookComment") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("time") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <asp:TextBox ID="tbcomment" runat="server" Height="95px" TextMode="MultiLine" Width="79%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/Image/评论.jpg" OnClick="ImageButton12_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7" rowspan="5">&nbsp;</td>
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
    </table>
</asp:Content>


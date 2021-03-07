<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Introduce.aspx.cs" Inherits="Introduce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style23 {
            width: 100%;
        }
        .auto-style28 {
            width: 383px;
        }
        .auto-style26 {
            width: 316px;
        }
        .auto-style27 {
            height: 49px;
        }
        .auto-style29 {
            width: 383px;
            height: 24px;
        }
        .auto-style30 {
            width: 316px;
            height: 24px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
        <table class="auto-style23">
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style26">
                    <asp:Image ID="Image1" runat="server" Height="250px" style="margin-left: 0px" Width="250px" />
                </td>
                <td>
                    <table class="auto-style23" style="color: #FF9966; height: 248px;">
                        <tr>
                            <td class="auto-style27" style="color: #000000; font-size: large;">
                                <asp:Label ID="label1" runat="server" Text="香水名"></asp:Label>
                                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/uncollect.png" OnClick="ImageButton2_Click" Width="30px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #000000; font-size: large;">
                                <asp:Label ID="label2" runat="server" Text="简介" Width="500px"></asp:Label>
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #000000; font-size: large;">
                                <asp:Label ID="label3" runat="server" Text="ml"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #000000; font-size: large;">
                                ￥<asp:Label ID="label4" runat="server" Text="价格"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #FF9966; font-size: large;">
                                <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" ForeColor="Black" Height="24px" OnClick="Button1_Click" Text="-" Width="27px" />
                                <asp:TextBox ID="TextBox1" runat="server" Width="31px">1</asp:TextBox>
                                <asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" ForeColor="Black" Height="25px" OnClick="Button2_Click" Text="+" Width="25px" />
                                &nbsp;<asp:Button ID="Button3" runat="server" BackColor="#FFFF66" Height="40px" Text="加入购物车" Width="132px" OnClick="Button3_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style30"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style30"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>


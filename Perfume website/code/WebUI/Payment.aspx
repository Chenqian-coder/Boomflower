<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style22 {
            height: 24px;
            font-weight: bold;
            width: 446px;
        }
        .auto-style23 {
            width: 446px;
        }
        .auto-style24 {
            width: 446px;
            height: 24px;
        }
        h6{height:38px; line-height:38px; text-align:right; font-size:12px; background:#f6f6f6; color:#3f3f3f;
  border:1px solid #fff; padding-right:10px;
  }
  h6{
margin:0; padding:0; border:none; list-style-type:none;
}
  h6 span{float:left; padding-left:15px; font-size:14px;}
        .auto-style25 {
            width: 446px;
            height: 83px;
        }
        .auto-style26 {
            height: 83px;
        }
        .auto-style27 {
            width: 555px;
        }
        .auto-style28 {
            width: 386px;
        }
        .auto-style29 {
            width: 555px;
            height: 24px;
        }
        .auto-style30 {
            width: 386px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h6><span>支付中心</span></h6>
    <p></p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style24"><b></b></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style26">
                <asp:RadioButton ID="RB1" runat="server" GroupName="zhifu" AutoPostBack="True" OnCheckedChanged="RB1_CheckedChanged" />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/wx.png" OnClick="ImageButton2_Click" Width="200px" />
                <asp:RadioButton ID="RB2" runat="server" GroupName="zhifu" AutoPostBack="True" OnCheckedChanged="RB2_CheckedChanged" />
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/zfb.png" OnClick="ImageButton3_Click" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/image/mywx.jpg" style="margin-left: 77px; margin-top: 44px" Width="300px" />
            </td>
        </tr>
        </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style30">
                <asp:Label ID="Label3" runat="server" Text="使用微信或支付宝扫码完成支付"></asp:Label>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="38px" ImageUrl="~/image/ywc.png" OnClick="ImageButton4_Click" style="margin-left: 38px" Width="131px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


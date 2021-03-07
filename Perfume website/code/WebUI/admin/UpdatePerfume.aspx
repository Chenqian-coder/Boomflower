<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePerfume.aspx.cs" Inherits="admin_UpdatePerfume" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            background-image:url('image/adminbg.jpg');
            background-repeat:no-repeat;
            background-size:cover;
        }
        .auto-style25 {
            height: 101px;
        }
        .auto-style1 {
            width: 100%;
            height: 102px;
        }
        .auto-style26 {
            width: 208px;
        }
        .auto-style27 {
            height: 24px;
        }
        .auto-style28 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style36 {
            width: 407px;
            height: 57px;
        }
        .auto-style41 {
            height: 68px;
        }
        .auto-style43 {
            height: 84px;
        }
        .auto-style46 {
            width: 407px;
        }
        .auto-style47 {
            height: 63px;
            width: 407px;
        }
        .auto-style48 {
            height: 68px;
            width: 407px;
        }
        .auto-style49 {
            height: 84px;
            width: 407px;
        }
        .auto-style52 {
            width: 303px;
        }
        .auto-style53 {
            height: 63px;
            width: 303px;
        }
        .auto-style54 {
            height: 68px;
            width: 303px;
        }
        .auto-style55 {
            height: 84px;
            width: 303px;
        }
        .auto-style56 {
            height: 41px;
        }
        .auto-style58 {
            height: 128px;
        }
        .auto-style59 {
            height: 39px;
        }
        .auto-style60 {
            height: 44px;
        }
        .auto-style61 {
            height: 42px;
        }
        .auto-style62 {
            height: 43px;
        }
        .auto-style63 {
            height: 76px;
            width: 407px;
        }
        .auto-style64 {
            height: 76px;
            width: 303px;
        }
        .auto-style65 {
            height: 76px;
        }
        .auto-style66 {
            height: 33px;
        }
        #UploadFile {
            width: 259px;
            margin-left: 58px;
        }
        .auto-style67 {
            height: 76px;
            width: 42px;
        }
        .auto-style68 {
            width: 42px;
        }
        .auto-style69 {
            height: 68px;
            width: 42px;
        }
        .auto-style70 {
            height: 84px;
            width: 42px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style25">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style26" rowspan="2">
                <asp:HyperLink ID="HyperLink14" runat="server" Font-Underline="False" ForeColor="#66FFFF" NavigateUrl="~/admin/PerfumeInfoManage.aspx">&lt;-管理商品信息</asp:HyperLink>
                            </td>
                            <td class="auto-style27">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style27">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table class="auto-style28">
            <tr>
                <td class="auto-style63"></td>
                <td class="auto-style64"></td>
                <td class="auto-style67">&nbsp;</td>
                <td class="auto-style65"></td>
            </tr>
            <tr>
                <td class="auto-style46"></td>
                <td class="auto-style52" rowspan="2">
                    <asp:Image ID="Image1" runat="server" Height="400px" Width="400px" />
                </td>
                <td class="auto-style68" rowspan="3">&nbsp;</td>
                <td rowspan="3">
                    <table class="auto-style28">
                        <tr>
                            <td class="auto-style56">香水编号：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style66">香水名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style58">简介：<asp:TextBox ID="TextBox2" runat="server" Height="83px" TextMode="MultiLine" Width="279px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style59">价格：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style60">容量：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style61">是否热销：<asp:RadioButton ID="RadioButton1" runat="server" GroupName="hot" Text="是" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="hot" Text="否" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style62">是否是男士香水：<asp:RadioButton ID="RadioButton3" runat="server" GroupName="male" Text="是" />
&nbsp;<asp:RadioButton ID="RadioButton4" runat="server" GroupName="male" Text="否" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
            </tr>
            <tr>
                <td class="auto-style47"></td>
                <td class="auto-style53">
                            <input id="UploadFile" runat="server" name="UploadFile" type="file" /></td>
            </tr>
            <tr>
                <td class="auto-style48"></td>
                <td class="auto-style54"></td>
                <td class="auto-style69">&nbsp;</td>
                <td class="auto-style41">
                            <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" class="bnt_blue_2" OnClick="Button1_Click" style="margin-left: 3px" Text="   修改   " />
                        </td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style55"></td>
                <td class="auto-style70">&nbsp;</td>
                <td class="auto-style43"></td>
            </tr>
            <tr>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style68">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style68">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style68">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

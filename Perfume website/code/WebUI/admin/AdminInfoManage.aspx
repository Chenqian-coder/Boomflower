<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminInfoManage.aspx.cs" Inherits="admin_AdminInfoManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 102px;
        }
        .auto-style24 {
            height: 100px;
            width: 151px;
        }
        .auto-style25 {
            height: 101px;
        }
        body {
            background-image:url('image/adminbg.jpg');
            background-repeat:no-repeat;
            background-size:cover;
        }
        .auto-style26 {
            width: 208px;
        }
        .auto-style27 {
            height: 24px;
        }
        .auto-style28 {
            height: 100px;
            width: 53px;
        }
        .auto-style29 {
            width: 100%;
        }
        .auto-style31 {
            height: 60px;
        }
        .auto-style32 {
            height: 59px;
        }
        .auto-style33 {
            height: 58px;
        }
        .auto-style34 {
            height: 61px;
        }
        .auto-style35 {
            height: 57px;
        }
        .auto-style36 {
            height: 63px;
        }
        .auto-style37 {
            height: 60px;
            width: 322px;
        }
        .auto-style38 {
            height: 59px;
            width: 322px;
        }
        .auto-style39 {
            height: 58px;
            width: 322px;
        }
        .auto-style40 {
            height: 61px;
            width: 322px;
        }
        .auto-style41 {
            height: 57px;
            width: 322px;
        }
        .auto-style42 {
            height: 63px;
            width: 322px;
        }
        .auto-style43 {
            height: 60px;
            width: 144px;
            font-size: large;
        }
        .auto-style44 {
            height: 59px;
            width: 144px;
            font-size: large;
        }
        .auto-style45 {
            height: 58px;
            width: 144px;
            font-size: large;
        }
        .auto-style46 {
            height: 61px;
            width: 144px;
        }
        .auto-style47 {
            height: 57px;
            width: 144px;
        }
        .auto-style48 {
            height: 63px;
            width: 144px;
        }
        .auto-style49 {
            height: 63px;
            width: 144px;
            font-size: large;
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
                            <td class="auto-style26" rowspan="2">&nbsp;</td>
                            <td class="auto-style27"><asp:Label id="Label1" runat="server" text="W X L I N" Font-Bold="True" Font-Size="40px" ForeColor="Black" CssClass="auto-style5"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="auto-style27">&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="20px" Text="b  a  c  k  s  t  a  g  e" CssClass="auto-style5" ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
    <table class="auto-style1">
        <tr>
            <td class="auto-style28" style="color: #FFFFFF; ">
            </td>
            <td class="auto-style24" style="color: #FFFFFF; ">
                <asp:HyperLink ID="HyperLink12" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="~/admin/AddAdmin.aspx">添加管理员</asp:HyperLink>
            </td>
            <td class="auto-style22" rowspan="9">
                <table class="auto-style29">
                    <tr>
                        <td class="auto-style42"></td>
                        <td class="auto-style49"></td>
                        <td class="auto-style36"></td>
                    </tr>
                    <tr>
                        <td class="auto-style42"></td>
                        <td class="auto-style49"></td>
                        <td class="auto-style36"></td>
                    </tr>
                    <tr>
                        <td class="auto-style37"></td>
                        <td class="auto-style43">管理员ID:</td>
                        <td class="auto-style31">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style38"></td>
                        <td class="auto-style44">管理员名:</td>
                        <td class="auto-style32">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style39"></td>
                        <td class="auto-style45">密码:</td>
                        <td class="auto-style33">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style39"></td>
                        <td class="auto-style45">姓名:</td>
                        <td class="auto-style33">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style39"></td>
                        <td class="auto-style45">联系方式:</td>
                        <td class="auto-style33">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style40"></td>
                        <td class="auto-style46"></td>
                        <td class="auto-style34">
                            <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" class="bnt_blue_2" OnClick="Button1_Click" style="margin-left: 3px" Text="   修改   " />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style37"></td>
                        <td class="auto-style43"></td>
                        <td class="auto-style31"></td>
                    </tr>
                    <tr>
                        <td class="auto-style40"></td>
                        <td class="auto-style46"></td>
                        <td class="auto-style34"></td>
                    </tr>
                    <tr>
                        <td class="auto-style41"></td>
                        <td class="auto-style47"></td>
                        <td class="auto-style35"></td>
                    </tr>
                    <tr>
                        <td class="auto-style42"></td>
                        <td class="auto-style48"></td>
                        <td class="auto-style36"></td>
                    </tr>
                </table>
                            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="color: #FFFFFF; ">&nbsp;</td>
            <td class="auto-style24" style="color: #FFFFFF; ">
                <asp:HyperLink ID="HyperLink17" runat="server" Font-Underline="False" ForeColor="#66FFFF" NavigateUrl="~/admin/AdminInfoManage.aspx">管理员信息修改</asp:HyperLink>
            &nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="color: #FFFFFF; ">&nbsp;</td>
            <td class="auto-style24" style="color: #FFFFFF; ">
                <asp:HyperLink ID="HyperLink13" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="~/admin/AddPerfume.aspx">添加商品</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="color: #FFFFFF; ">&nbsp;</td>
            <td class="auto-style24" style="color: #FFFFFF; ">
                <asp:HyperLink ID="HyperLink14" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="~/admin/PerfumeInfoManage.aspx">管理商品信息</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="color: #FFFFFF; ">&nbsp;</td>
            <td class="auto-style24" style="color: #FFFFFF; ">
                <asp:HyperLink ID="HyperLink19" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="~/admin/DeletePerfume.aspx">删除商品</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="color: #FFFFFF; ">&nbsp;</td>
            <td class="auto-style24" style="color: #FFFFFF; ">
                <asp:HyperLink ID="HyperLink15" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="~/admin/AllOrderManage.aspx">管理订单</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="color: #FFFFFF; ">&nbsp;</td>
            <td class="auto-style24" style="color: #FFFFFF; ">
                <asp:HyperLink ID="HyperLink16" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="~/admin/UserManage.aspx">管理用户</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="color: #FFFFFF; ">&nbsp;</td>
            <td class="auto-style24" style="color: #FFFFFF; ">
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Underline="False" ForeColor="White" OnClick="LinkButton1_Click">退出登录</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="color: #FFFFFF; ">&nbsp;</td>
            <td class="auto-style24" style="color: #FFFFFF; ">
                <asp:HyperLink ID="HyperLink18" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="~/Homepage.aspx">返回前台界面</asp:HyperLink>
            </td>
        </tr>
    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>


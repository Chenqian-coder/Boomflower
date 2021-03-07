<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPerfume.aspx.cs" Inherits="admin_AddPerfume" %>

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
            height: 795px;
        }
        .auto-style35 {
            width: 313px;
        }
        .auto-style34 {
            width: 148px;
            font-size: large;
        }
        .auto-style40 {
            width: 313px;
            height: 58px;
        }
        .auto-style41 {
            width: 148px;
            font-size: large;
            height: 58px;
        }
        .auto-style42 {
            height: 58px;
        }
        .auto-style43 {
            width: 313px;
            height: 57px;
        }
        .auto-style44 {
            width: 148px;
            height: 57px;
            font-size: large;
        }
        .auto-style45 {
            height: 57px;
        }
        .auto-style46 {
            width: 313px;
            height: 59px;
        }
        .auto-style47 {
            width: 148px;
            font-size: large;
            height: 59px;
        }
        .auto-style48 {
            height: 59px;
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
                        <td class="auto-style35">&nbsp;</td>
                        <td class="auto-style34">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style35">&nbsp;</td>
                        <td class="auto-style34">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style40"></td>
                        <td class="auto-style41">香水ID:</td>
                        <td class="auto-style42">
                            <asp:TextBox ID="txtPerfumeId" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPerfumeId" ErrorMessage="请输入香水ID"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style43"></td>
                        <td class="auto-style44">香水名:</td>
                        <td class="auto-style45">
                            <asp:TextBox ID="txtPerfumeName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredTxtUsername" runat="server" ControlToValidate="txtPerfumeName" ErrorMessage="请输入香水名"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style46"></td>
                        <td class="auto-style47">介绍: </td>
                        <td class="auto-style48">
                            <asp:TextBox ID="txtIntroduce" runat="server" TextMode="MultiLine" Height="101px" Width="241px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredTxtPassword" runat="server" ControlToValidate="txtIntroduce" ErrorMessage="请输入介绍"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style46">&nbsp;</td>
                        <td class="auto-style47">图片：</td>
                        <td class="auto-style48">
                            <input id="UploadFile" runat="server" name="UploadFile" type="file" /><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="UploadFile" ErrorMessage="请选择图片"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style46"></td>
                        <td class="auto-style47">价格:</td>
                        <td class="auto-style48">
                            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="请输入价格" EnableTheming="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style46"></td>
                        <td class="auto-style47">容量: </td>
                        <td class="auto-style48">
                            <asp:TextBox ID="txtCounts" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredTxtRealname" runat="server" ControlToValidate="txtCounts" ErrorMessage="请输入容量"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style40"></td>
                        <td class="auto-style41">是否热销:</td>
                        <td class="auto-style42">
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="hot" Text="是" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="hot" Text="否" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style40">&nbsp;</td>
                        <td class="auto-style41">是否是男士香水：</td>
                        <td class="auto-style42">
                            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="male" Text="是" />
&nbsp;<asp:RadioButton ID="RadioButton4" runat="server" GroupName="male" Text="否" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style35">&nbsp;</td>
                        <td class="auto-style30" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" class="bnt_blue_2" OnClick="Button1_Click" Text="添 加" Width="81px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style35">&nbsp;</td>
                        <td class="auto-style30" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style35">&nbsp;</td>
                        <td class="auto-style30" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style35">&nbsp;</td>
                        <td class="auto-style30" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style35">&nbsp;</td>
                        <td class="auto-style30" colspan="2">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="color: #FFFFFF; ">&nbsp;</td>
            <td class="auto-style24" style="color: #FFFFFF; ">
                <asp:HyperLink ID="HyperLink17" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="~/admin/AdminInfoManage.aspx">管理员信息修改</asp:HyperLink>
            &nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="color: #FFFFFF; ">&nbsp;</td>
            <td class="auto-style24" style="color: #FFFFFF; ">
                <asp:HyperLink ID="HyperLink13" runat="server" Font-Underline="False" ForeColor="#66FFFF" NavigateUrl="~/admin/AddPerfume.aspx">添加商品</asp:HyperLink>
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


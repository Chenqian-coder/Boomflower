<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeletePerfume.aspx.cs" Inherits="admin_DeletePerfume" %>

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
            height: 281px;
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="perfumeId" Height="60px" OnRowDeleting="GridView1_RowDeleting" style="margin-left: 148px; margin-top: 0px;" Width="1000px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="perfumeId" HeaderText="香水ID" />
            <asp:BoundField DataField="perfumeName" HeaderText="香水名" />
            <asp:BoundField DataField="price" HeaderText="香水价格">
            <ItemStyle HorizontalAlign="center" />
            <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="counts" HeaderText="香水容量">
            <ItemStyle HorizontalAlign="center" />
            <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="管理">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
                <ItemTemplate>
                    <asp:LinkButton ID="btnDelete" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('您确认删除?');" Text="删除"></asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle Width="100px" />
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
                <br />
                <table class="auto-style29">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
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
                <asp:HyperLink ID="HyperLink19" runat="server" Font-Underline="False" ForeColor="#66FFFF" NavigateUrl="~/admin/DeletePerfume.aspx">删除商品</asp:HyperLink>
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

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="删除花卉信息.aspx.cs" Inherits="删除酒店房型信息" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="no" Width ="1335px" Height="614px">
            <Columns>
                <asp:BoundField DataField="no" HeaderText="房型编号" />
                <asp:BoundField DataField="name" HeaderText="酒店名称" />
                <asp:TemplateField HeaderText="房型图片">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("name") %>' Height="42px"
                             ImageUrl='<%# "sight\\"+Eval("image") %>' Width="44px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="price" HeaderText="房型价钱" />
                <asp:BoundField DataField="introduction" HeaderText="房型介绍" />
                <asp:BoundField DataField="window" HeaderText="是否有窗" />
                <asp:BoundField DataField="toilet" HeaderText="是否独卫" />
                <asp:BoundField DataField="breakfast" HeaderText="是否有早餐" />
                <asp:BoundField DataField="type1" HeaderText="房型" />
                <asp:BoundField DataField="net" HeaderText="网络" />
                <asp:BoundField DataField="counts" HeaderText="房间数量" />
                <asp:TemplateField HeaderText="模板列删除">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnDel" runat="server" CommandArgument='<%# Eval("no") %>' OnClick="lbtnDel_Click" OnClientClick="return confirm('确认删除？');">删除</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/后台管理首页.aspx">返回首页</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    
    </div>
  
  
    </form>
</body>
</html>

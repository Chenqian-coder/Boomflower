<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buyCar.aspx.cs" Inherits="buyCar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="no" ForeColor="Black" GridLines="Vertical" Height="373px" Width="1400px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="产品预览">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("name") %>' Height="42px" ImageUrl='<%#Eval("image") %>' Width="44px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="名字" />
                <asp:BoundField DataField="troduction" HeaderText="花语" />
                <asp:BoundField DataField="price" DataFormatString="{0:c}" HeaderText="价格" />
                <asp:BoundField DataField="num" HeaderText="所选数量" />
                <asp:TemplateField HeaderText="模板列删除">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnDel" runat="server" CommandArgument='<%# Eval("no") %>' OnClick="lbtnDel_Click" OnClientClick="return confirm('确认删除？');">删除</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="返回首页">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Main.aspx">返回首页</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="确认购买">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("no") %>' OnClick="LinkButton2_Click" OnClientClick="return confirm('确认购买？');">确认购买</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>

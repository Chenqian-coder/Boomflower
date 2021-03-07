<%@ Page Language="C#" AutoEventWireup="true" CodeFile="删除康乃馨信息.aspx.cs" Inherits="删除酒店信息" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="no" Width="1321px" Height="357px">
            <Columns>
                <asp:BoundField DataField="no" HeaderText="编号" />
                <asp:BoundField DataField="name" HeaderText="花名" />
                <asp:BoundField DataField="introduce" HeaderText="花语" />
                <asp:TemplateField HeaderText="图片预览">
                    <EditItemTemplate>
                        <asp:Image ID="img" runat="server" Height="57px" Width="49px" ImageUrl='<%# Eval("image") %>' />
                        <asp:HiddenField ID="hf" runat="server" Value='<%# Eval("image") %>' />
                        <asp:FileUpload ID="fup" runat="server" />
                        
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("name") %>' Height="42px"
                             ImageUrl='<%# "images\\"+Eval("image") %>' Width="44px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="price" DataFormatString="{0:c}" HeaderText="价格" />
                <asp:BoundField DataField="tprice" HeaderText="鲜花网站价格" SortExpression="tprice" />
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
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    
        <br />
    
    </div>
    </form>
</body>
</html>

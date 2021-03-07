<%@ Page Language="C#" AutoEventWireup="true" CodeFile="修改康乃馨信息.aspx.cs" Inherits="添加酒店信息" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="no" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="1321px" Height="357px" PageSize="20">
            <Columns>
                <asp:BoundField DataField="no" HeaderText="编号" />
                <asp:BoundField DataField="name" HeaderText="鲜花名" />
                <asp:BoundField DataField="introduce" HeaderText="花语" />
                <asp:TemplateField HeaderText="鲜花预览">
                    <EditItemTemplate>
                        <asp:Image ID="img" runat="server" Height="57px" ImageUrl='<%# Eval("image") %>' Width="49px" />
                        <asp:HiddenField ID="hf" runat="server" Value='<%# Eval("image") %>' />
                        <asp:FileUpload ID="fup" runat="server" />
                        <asp:Button ID="btnPrev" runat="server" OnClick="btnPrev_Click" Text="预览" />
                        <asp:Button ID="btnCanc" runat="server" OnClick="btnCanc_Click" Text="取消" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("name") %>' Height="57px" ImageUrl='<%# "images\\"+Eval("image") %>' Width="55px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="price" DataFormatString="{0:c}" HeaderText="价格" />
               
                <asp:BoundField DataField="tprice" HeaderText="鲜花价格" />
                <asp:CommandField ShowEditButton="True" />
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
    
    </div>
    </form>
    
</body>
</html>

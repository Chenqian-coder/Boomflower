<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style22 {
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="perfumeName" ForeColor="Black" GridLines="Vertical" Height="60px" OnRowDeleting="GridView1_RowDeleting" style="margin-left: 211px; margin-top: 61px;" Width="1000px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="perfumeName" HeaderText="商品名">
            <ItemStyle HorizontalAlign="center" />
            <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="单价">
            <ItemStyle HorizontalAlign="center" />
            <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="counts" HeaderText="数量">
            <ItemStyle HorizontalAlign="center" />
            <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="total" HeaderText="总价">
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
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style22">
        <asp:Button ID="Button1" runat="server" BackColor="#FFFF99" ForeColor="#FF9966" Height="47px" OnClick="Button1_Click" style="text-align: center; margin-left: 629px;" Text="去结算" Width="97px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
<p>&nbsp;</p>
</asp:Content>


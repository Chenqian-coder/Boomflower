<%@ Page Title="" Language="C#" MasterPageFile="~/美食酒店详细页面母版.master" AutoEventWireup="true" CodeFile="xiangRiKui.aspx.cs" Inherits="xiangRiKui" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image2" runat="server" Height="458px" Width="530px" />
    <p>
        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
&nbsp;</p>
    <p style="font-size: x-large; color: #FF6600">
        花&nbsp;&nbsp; 语：  
        <asp:Label ID="lblIntroduction" runat="server" BorderStyle="Double" ForeColor="#CC0099"></asp:Label>
    </p>
    <p style="font-size: x-large; color: #FF6600;">
        数 量&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCount" runat="server" Width="168px"></asp:TextBox>
        单次限购5件</p>
    <p style="font-size: x-large; color: #FF6600;">
        运 费&nbsp; 至&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox1" runat="server" Width="168px"></asp:TextBox>
        &nbsp;免运费</p>
    <p style="font-size: x-large; color: #FF6600;">
        收货人电话&nbsp;&nbsp; 
        <asp:TextBox ID="txtPhone" runat="server" Width="162px"></asp:TextBox>
    </p>
    <p style="font-size: x-large; color: #FF6600;">
        市场价格：&nbsp; 
        <asp:Label ID="lblPrice" runat="server" BorderStyle="Double" ForeColor="#CC0099"></asp:Label>
        <asp:Label ID="Label1" runat="server" Text="元"></asp:Label>
    </p>
    <p style="font-size: x-large; color: #FF6600;">
        鲜花网价格：  
        <asp:Label ID="lblTprice" runat="server" BorderStyle="Double" ForeColor="#CC0099"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="元"></asp:Label>
    </p>
    <p style="font-size: x-large; color: #FF6600;">
        &nbsp;</p>
    <p style="font-size: x-large; color: #FF6600;">
        <asp:Button ID="Button1" runat="server" ForeColor="#FF6600" PostBackUrl="~/Main.aspx" Text="返回首页"  />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" ForeColor="#FF6600" Text="立即购买" OnClick="Button2_Click" Width="90px" />
    </p>
    <p style="font-size: x-large; color: #FF6600;">
        &nbsp;</p>
    <p>
    &nbsp;</p>
    <p>
&nbsp;
    </p>
    <p>
    </p>
</asp:Content>


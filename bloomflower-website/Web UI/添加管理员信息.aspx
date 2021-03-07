<%@ Page Title="" Language="C#" MasterPageFile="~/Admin母版页.master" AutoEventWireup="true" CodeFile="添加管理员信息.aspx.cs" Inherits="添加管理员信息" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


*{ margin:2px 0 0 0px; 
padding:0;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: medium; color: #000000;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p style="font-size: medium; color: #000000;">
        &nbsp;</p>
    <p style="font-size: medium; color: #000000;">
        &nbsp;</p>
    <p style="font-size: medium; color: #000000;">
        &nbsp;</p>
    <p style="font-size: medium; color: #000000;">
        &nbsp;</p>
    <p style="font-size: medium; color: #000000;">
        &nbsp;</p>
    <p style="font-size: medium; color: #000000;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 管理员ID：<asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 管理员名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 码： <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
        &nbsp;</p>
    <p style="font-size: medium; color: #000000;">
        &nbsp;</p>
    <p style="font-size: medium; color: #000000;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Height="20px" PostBackUrl="~/后台管理首页.aspx" Text="返回首页" Width="89px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="注册管理员" />
    </p>
    <p style="font-size: medium; color: #000000;">
        &nbsp;</p>
</asp:Content>


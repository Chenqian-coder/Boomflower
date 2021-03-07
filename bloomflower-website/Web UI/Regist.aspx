<%@ Page Title="" Language="C#" MasterPageFile="~/版权声明.master" AutoEventWireup="true" CodeFile="Regist.aspx.cs" Inherits="Regist1" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <br />
    <p style="color: #000000; font-size: medium">
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户ID：<asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密 码： <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
        <br/>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p style="color: #000000; font-size: medium">
       
    <br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <asp:Button ID="btnBackToLogin" runat="server" Text="返回登录" PostBackUrl="~/Login.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnRegist" runat="server" Text="点我注册" OnClick="btnRegist_Click" Width="66px" /></p>
   
  
</asp:Content>


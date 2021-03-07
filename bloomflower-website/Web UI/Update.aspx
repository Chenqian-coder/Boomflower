<%@ Page Title="" Language="C#" MasterPageFile="~/版权声明.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <p style="color: #000000; font-size: medium">
       
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p style="color: #000000; font-size: medium">
       
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户ID：<asp:Label ID="lblID" runat="server" ForeColor="Red"></asp:Label>
       
        </p>
    <p style="color: #000000; font-size: medium">
       
       
        &nbsp;</p>
    <p style="color: #000000; font-size: medium">
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        
      
    <p style="color: #000000; font-size: medium">
       
        &nbsp;<p style="color: #000000; font-size: medium">
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新密码：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     
        &nbsp;</p>
    <p style="color: #000000; font-size: medium">
       
        &nbsp;</p>
    <p style="color: #000000; font-size: medium">
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 确认密码：<asp:TextBox ID="txtRePwd" runat="server"></asp:TextBox>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p style="font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="bntBackMain" runat="server" Text="返回登录" PostBackUrl="~/Login.aspx" />&nbsp;&nbsp;&nbsp;

      <asp:Button ID="bntUpdate" runat="server" Text="修改资料" OnClick="Button2_Click" />

 
    
    <br />
</asp:Content>


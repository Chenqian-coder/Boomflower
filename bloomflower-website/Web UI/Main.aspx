<%@ Page EnableEventValidation="false"  Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="_11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:Panel ID="Panel2" runat="server" Visible="False">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 欢迎 <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
        会员登录 </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 欢迎游客来访&nbsp; 欢迎您早日成为会员<br /> </asp:Panel>



    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 玫瑰</p>

    <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" Height="487px" s192tyle="margin-top: 0px" Width="1450px" style="margin-top: 1px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" AlternateText='<%# Eval("name") %>' CommandArgument='<%# Eval("no") %>' Height="300px" ImageUrl='<%# "images\\"+Eval("image") %>' Width="200px" OnClick="ImageButton1_Click" />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%# Eval("no") %>' Text='<%# Eval("name") %>' OnClick="LinkButton4_Click" BorderStyle="None"></asp:LinkButton>
            </ItemTemplate>

        </asp:DataList>



    


    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 康乃馨</p>
    <asp:DataList ID="DataList2" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" Height="487px" s192tyle="margin-top: 0px" Width="1450px" style="margin-top: 1px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton2" runat="server" AlternateText='<%# Eval("name") %>' CommandArgument='<%# Eval("no") %>' Height="300px" ImageUrl='<%# "images\\"+Eval("image") %>' Width="200px" OnClick="ImageButton2_Click" />
                <br />
                <asp:LinkButton ID="LinkButton5" runat="server" CommandArgument='<%# Eval("no") %>' Text='<%# Eval("name") %>' OnClick="LinkButton5_Click1"></asp:LinkButton>
            </ItemTemplate>

        </asp:DataList>
    

    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 向日葵</p>
    <asp:DataList ID="DataList3" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" Height="487px" s192tyle="margin-top: 0px" Width="1450px" style="margin-top: 1px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">
            <ItemTemplate>
                
                <asp:ImageButton ID="ImageButton3" runat="server" Height="300px" Width="200px" AlternateText='<%# Eval("name") %>' CommandArgument='<%# Eval("no") %>' OnClick="ImageButton3_Click" ImageUrl='<%# "images\\"+Eval("image") %>' />
                <br />
                <asp:LinkButton ID="LinkButton6" runat="server" CommandArgument='<%# Eval("no") %>' Text='<%# Eval("name") %>' OnClick="LinkButton6_Click"></asp:LinkButton>
            </ItemTemplate>

        </asp:DataList>
    <p style="width: 1377px">   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/AdminLogin.aspx">后台管理</asp:LinkButton>
</p>




</asp:Content>


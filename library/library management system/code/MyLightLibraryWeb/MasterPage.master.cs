using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] != null)
        {
            Lbtn_login.Visible = false;
            Lbtn_register.Visible = false;
            LinkButton2.Visible = true;
            LinkButton3.Visible = true;
            LinkButton4.Visible = true;
        }
        else
        {
            Lbtn_login.Visible = true;
            Lbtn_register.Visible = true;
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton4.Visible = false;
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Session["bookName"] = "";
        Session["type"] = "冒险";
        Response.Write("<script>location.href='查询页.aspx';</script>");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='首页.aspx';</script>");
    }
    protected void Lbtn_login_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location.href='登录页.aspx';</script>");
    }
    protected void Lbtn_register_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location.href='注册页.aspx';</script>");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location.href='个人信息.aspx';</script>");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location.href='我的书架.aspx';</script>");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["userId"] = null;
        Response.Write("<script>location.href='首页.aspx';</script>");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["bookName"] = "";
        Session["type"] = "战斗";
        Response.Write("<script>location.href='查询页.aspx';</script>");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Session["bookName"] = "";
        Session["type"] = "校园";
        Response.Write("<script>location.href='查询页.aspx';</script>");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Session["bookName"] = "";
        Session["type"] = "恋爱";
        Response.Write("<script>location.href='查询页.aspx';</script>");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Session["bookName"] = "";
        Session["type"] = "恐怖";
        Response.Write("<script>location.href='查询页.aspx';</script>");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Session["bookName"] = "";
        Session["type"] = "科幻";
        Response.Write("<script>location.href='查询页.aspx';</script>");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Session["bookName"] = "";
        Session["type"] = "鬼神";
        Response.Write("<script>location.href='查询页.aspx';</script>");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Session["bookName"] = "";
        Session["type"] = "搞笑";
        Response.Write("<script>location.href='查询页.aspx';</script>");
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Session["bookName"] = "";
        Session["type"] = "其他";
        Response.Write("<script>location.href='查询页.aspx';</script>");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Session["bookName"] = tbSelectBook.Text;
        Session["type"] = "";
        Response.Write("<script>location.href='查询页.aspx';</script>");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location.href='后台登录.aspx';</script>");
    }
}

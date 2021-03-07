using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToBoolean(Session["power"]))
        {
            LinkButton11.Visible = true;
        }
        else
        {
            LinkButton11.Visible = false;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='后台首页.aspx';</script>");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='用户管理.aspx';</script>");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='评论管理.aspx';</script>");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='后台查询页.aspx';</script>");
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location.href='管理员信息管理.aspx';</script>");
    }
}

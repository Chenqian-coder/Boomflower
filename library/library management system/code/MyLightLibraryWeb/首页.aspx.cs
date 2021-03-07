using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 首页 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='登录页.aspx';</script>");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='注册页.aspx';</script>");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["bookName"] = "";
        Session["type"] = "";
        Response.Write("<script>location.href='查询页.aspx';</script>");
    }
}
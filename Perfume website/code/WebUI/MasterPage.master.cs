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
            HyperLink1.Visible = false;
            HyperLink2.Visible = false;
            HyperLink9.Visible = true;
            HyperLink10.Visible = true;
            LinkButton5.Visible = true;
        }
        else
        {
            HyperLink1.Visible = true;
            HyperLink2.Visible = true;
            HyperLink9.Visible = false;
            HyperLink10.Visible = false;
            LinkButton5.Visible = false;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["type"] = 1;
        Response.Write("<script>location.href='Search.aspx';</script>");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["type"] = 2;
        Response.Write("<script>location.href='Search.aspx';</script>");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["type"] = 3;
        Response.Write("<script>location.href='Search.aspx';</script>");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["type"] = 4;
        Response.Write("<script>location.href='Search.aspx';</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["type"] = 5;
        Session["search"] = TextBox1.Text;
        Response.Write("<script>location.href='Search.aspx';</script>");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='Cart.aspx';</script>");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session["userId"] = null;
        Response.Write("<script>location.href='Homepage.aspx';</script>");
    }
}

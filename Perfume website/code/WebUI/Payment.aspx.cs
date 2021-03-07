using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label3.Visible = false;
            Image1.Visible = false;
            ImageButton4.Visible = false;
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        RB1.Checked = true;
        RB2.Checked = false;
        Image1.Visible = true;
        Image1.ImageUrl = "~/image/mywx.jpg";
        Label3.Visible = true;
        ImageButton4.Visible = true;
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        RB1.Checked = false;
        RB2.Checked = true;
        Image1.Visible = true;
        Image1.ImageUrl = "~/image/zfb.jpg";
        Label3.Visible = true;
        ImageButton4.Visible = true;
    }
    protected void RB1_CheckedChanged(object sender, EventArgs e)
    {
        Image1.Visible = true;
        Image1.ImageUrl = "~/image/mywx.jpg";
        Label3.Visible = true;
        ImageButton4.Visible = true;
    }
    protected void RB2_CheckedChanged(object sender, EventArgs e)
    {
        Image1.Visible = true;
        Image1.ImageUrl = "~/image/zfb.jpg";
        Label3.Visible = true;
        ImageButton4.Visible = true;
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='MyOrder.aspx';</script>");
    }
}
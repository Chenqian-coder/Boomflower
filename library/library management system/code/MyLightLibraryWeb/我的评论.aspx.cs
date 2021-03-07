using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 我的评论 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (Session["userId"] != null)
            {

                string userId = Session["userId"].ToString();
                DataList1.DataSource = Business.CommentBusiness.SelectCommentByUserId("Comment", userId).Tables["Comment"];
                DataList1.DataBind();

                
            }
            else
            {
                Response.Write("<script>alert('请先登录');location.href='登录页.aspx';</script>");
            }
        }
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='个人信息.aspx';</script>");
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='我的书架.aspx';</script>");
    }
}
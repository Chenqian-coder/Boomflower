using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;

public partial class 评论管理 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["admin"] != null)
            {
                GridView1.DataSource = CommentBusiness.GetCommentTable("comment").Tables["comment"];
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('请先登陆');location='后台登录.aspx';</script>");
            }
        }
    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {

        GridView1.DataSource = CommentBusiness.GetCommentTableByBookIdAndUserId(tbBookId.Text, tbUserId.Text, "comment").Tables["comment"];
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string commentId = GridView1.DataKeys[e.RowIndex].Value.ToString();
        if (CommentBusiness.DeleteInfoByCommentId(commentId))
        {
            GridView1.DataSource = CommentBusiness.GetCommentTable("comment").Tables["comment"];
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('删除失败');</script>");
        }
    }
}
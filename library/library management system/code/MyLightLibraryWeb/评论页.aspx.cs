using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;

public partial class 评论页 : System.Web.UI.Page
{
    Comment comment = new Comment();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            if (Session["userId"] != null)
            {
                if (Session["bookId"] != null)
                {
                    string bookId = Session["bookId"].ToString();
                    string userId = Session["userId"].ToString();
                    DataList1.DataSource = Business.CommentBusiness.SelectCommentByBookIdAndUserId("Comment", bookId).Tables["Comment"];
                    DataList1.DataBind();
                }
                else
                {
                    Response.Write("<script>location.href='首页.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('请先登录');location.href='登录页.aspx';</script>");
            }
        }
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        comment.UserId = Session["userId"].ToString();
        comment.BookId = int.Parse(Session["bookId"].ToString());
        comment.UserName = Business.UserBusiness.PostBackName(Session["userId"].ToString()).ToString();
        comment.BookComment = tbcomment.Text;
        comment.Time = DateTime.Now.ToString();
        if (Business.CommentBusiness.InsertBookComment(comment))
        {
            Response.Write("<script>alert('评论成功！');location.href='评论页.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('评论失败！');location.href='评论页.aspx';</script>");
        }
    }
}
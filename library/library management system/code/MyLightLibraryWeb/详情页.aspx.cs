using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class 详情页 : System.Web.UI.Page
{
    Books book = new Books();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Params["bookId"] != null)
            {
                string bookId = Request.Params["bookId"].ToString();
                Session["bookId"] = bookId;
                book = Business.BookBusiness.GetBookInfoByID(bookId);
                lbbookName.Text = book.BookName;
                lbtype.Text = book.BookType;
                Image1.ImageUrl = book.BookImage;
                lbIntroduce.Text = book.BookIntroduce;
                ImageButton14.ImageUrl = "~/Image/收藏.jpg";
                if (Session["userId"] != null)
                {
                    if (Business.CollectionBusiness.IsExistCollection( Session["userId"].ToString(), bookId))
                    {
                        ImageButton14.ImageUrl = "~/Image/取消收藏.jpg";
                    }
                    else
                    {
                        ImageButton14.ImageUrl = "~/Image/收藏.jpg";
                    }
                }
            }
            else
            {
                Response.Write("<script>location.href='首页.aspx';</script>");
            }
        }
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='下载页.aspx';</script>");
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='评论页.aspx';</script>");
    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["userId"] != null)
        {
            if (ImageButton14.ImageUrl == "~/Image/收藏.jpg")
            {
                if (Business.CollectionBusiness.InsertCollection(Session["userId"].ToString(), Request.Params["bookId"].ToString()))
                {
                    Response.Write("<script>alert('收藏成功');location.href='查询页.aspx';</script>");
                }
                else 
                {
                    Response.Write("<script>alert('收藏失败');location.href='查询页.aspx';</script>");
                }
            }
            else
                if (Business.CollectionBusiness.DeleteCollection(Session["userId"].ToString(), Request.Params["bookId"].ToString()))
                {
                    Response.Write("<script>alert('取消收藏成功');location.href='查询页.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('取消收藏失败');location.href='查询页.aspx';</script>");
                }
        }
        else
        {
            Response.Write("<script>alert('请先登录');location.href='登录页.aspx';</script>");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bussiness;
using Entity;

public partial class Introduce : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Perfume perfume = new Perfume();
        if (!IsPostBack)
        {
            string pname = Session["pname"].ToString();
            perfume = Bussiness.PerfumeBussiness.GetPerfumeInfoByName(pname);
            label1.Text = perfume.PerfumeName;
            label2.Text = perfume.Introduce;
            label3.Text = perfume.Counts;
            label4.Text = perfume.Price;
            Label5.Text = perfume.PerfumeId;
            Image1.ImageUrl = perfume.Image;
            if (Session["userId"] != null)
            {
                if (ShopCartBussiness.IsExistCol(label1.Text, Session["userId"].ToString()))
                {
                    ImageButton2.ImageUrl = "~/image/collect.png";
                }
            }
            else
            {
                ImageButton2.ImageUrl = "~/image/uncollect.png";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int num = int.Parse(TextBox1.Text);
        if (num > 1)
        {
            num = num - 1;
            TextBox1.Text = num.ToString();
        }
        else
        {
            Response.Write("<script>alert('数量不能小于1');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int num = int.Parse(TextBox1.Text);
        num = num + 1;
        TextBox1.Text = num.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        ShopCart cart = new ShopCart();
        if (Session["userId"] != null)
        {
            string userId = Session["userId"].ToString();
            if (!ShopCartBussiness.IsExistCart(label1.Text, userId))
            {
                cart.PerfumeId = Label5.Text;
                cart.PerfumeName = label1.Text;
                cart.Price = label4.Text;
                cart.Counts = int.Parse(TextBox1.Text);
                cart.Time = DateTime.Now.ToString();
                cart.Total = int.Parse(cart.Price) * cart.Counts;
                cart.UserId = Session["userId"].ToString();
                if (ShopCartBussiness.InsertShopCart(cart))
                {
                    Response.Write("<script>alert('已加入购物车');</script>");
                }
                else
                {
                    Response.Write("<script>alert('加入购物车失败')</script>");
                }
            }
            else
            {
                if (ShopCartBussiness.UpdateShopCart(label1.Text, userId, int.Parse(TextBox1.Text)))
                {
                    Response.Write("<script>alert('已加入购物车');</script>");
                }
                else
                {
                    Response.Write("<script>alert('加入购物车失败')</script>");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('请先登录');location.href='login.aspx';</script>");
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Collect col = new Collect();
        if (Session["userId"] != null)
        {
            string userId = Session["userId"].ToString();
            if (!ShopCartBussiness.IsExistCol(label1.Text,userId))
            {
                col.PerfumeName = label1.Text;
                col.Price = label4.Text;
                col.Image = Image1.ImageUrl;
                col.UserId = Session["userId"].ToString();
                if (ShopCartBussiness.InsertMyCollect(col))
                {
                    Response.Write("<script>alert('已添加收藏');</script>");
                    ImageButton2.ImageUrl = "~/image/collect.png";
                }
                else
                {
                    Response.Write("<script>alert('添加收藏失败')</script>");
                }
            }
            else
            {
                int i = ShopCartBussiness.DeleteCakesById(label1.Text, userId);
                if (i == 1)
                {
                    Response.Write("<script>alert('取消收藏成功')</script>");
                    ImageButton2.ImageUrl = "~/image/uncollect.png";
                }
                else
                {
                    Response.Write("<script>alert('取消收藏失败')</script>");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('请先登录');location.href='login.aspx';</script>");
        }
    }
}
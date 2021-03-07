using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;
using Entity;

public partial class KangNaiXin : System.Web.UI.Page
{

    KangNaiXinEntity knx = new KangNaiXinEntity();

    object obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = Request.Params["no"];
        if (obj == null)
        {
            Response.Redirect("Main.aspx");
        }
        else
        {
            string no = obj.ToString();
            knx = KangNaiXinBusiness.GetKangNaiXinInfoByNo(int.Parse(no));

            lblName.Text = knx.Name;
            lblIntroduction.Text = knx.Introduction;
            lblPrice.Text = knx.Price.ToString();
            lblTprice.Text = knx.Tprice.ToString();
            Image2.ImageUrl = "images\\" + knx.Image;
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (txtCount.Text == "" || txtPhone.Text == "" || TextBox1.Text == "")
        {
            Response.Write("<script>alert('所有项必须填写！');</script>");
        }
        else
        {
            if (int.Parse(txtCount.Text) > 5)
            {
                Response.Write("<script>alert('请填写正确的数量！');</script>");
            }
            else
            {
                if (Session["id"] == null)
                {//先查看会话传参里的参数是不是空的  如果是空的 那么说明没有用户登录 这样的话 先让用户登录 登录之后再回到提示登录的页面
                    Response.Write("<script>alert('请先登录');location='Login.aspx?type=RoseInfo&no=" + obj.ToString() + "';</script>");
                }
                else
                {
                    BuyCar bc = new BuyCar();
                    bc.No = int.Parse(txtPhone.Text);
                    bc.Name = lblName.Text;
                    bc.Introduction = lblIntroduction.Text;
                    bc.Num = int.Parse(txtCount.Text);
                    bc.Price = double.Parse(lblTprice.Text);
                    bc.Image = Image2.ImageUrl;

                    if (CarBusiness.InsertSightInfo(bc))
                    {
                        Response.Write("<script>alert('购物车添加成功！');location='buyCar.aspx';</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('购物车添加失败！')</script>");
                    }
                }
            }
        }
    }

    
}
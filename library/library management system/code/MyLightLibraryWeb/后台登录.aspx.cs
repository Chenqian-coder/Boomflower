using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 后台登录 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        if (Business.AdminBusiness.IsExistAdminId(txtuserId.Text))
        {

            if (Business.AdminBusiness.IsRightAdminPwd(txtuserId.Text, txtuserPwd.Text))
            {
                Session["power"] = Business.AdminBusiness.PostBackPower(txtuserId.Text);
                Session["admin"] = txtuserId.Text;
                Response.Write("<script>alert('登录成功');location.href='后台首页.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('密码不正确');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('账号不存在');</script>");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class 登录页 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        if (Business.UserBusiness.IsExistId(txtuserId.Text))
        {

            if (Business.UserBusiness.IsRightPwd(txtuserId.Text, txtuserPwd.Text))
            {
                Session["userId"] = txtuserId.Text;
                Session["password"] = txtuserPwd.Text;
                Session["bookName"] = "";
                Session["type"] = "";
                Response.Write("<script>alert('登录成功');location.href='查询页.aspx';</script>");
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
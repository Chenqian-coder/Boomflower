using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 修改密码 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        string userId = Session["userId"].ToString();
        if (Business.UserBusiness.UpdatePwd(userId, txtPassword.Text))
        {
            Response.Write("<script>alert('修改成功!');</script>");
            Session["userId"] = null;
            Response.Write("<script>location.href='登录页.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败');</script>");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Bussiness.UserBussiness.IsExistId(txtUserId.Text))
        {

            if (Bussiness.UserBussiness.IsRightPwd(txtUserId.Text, txtPassword.Text))
            {
                Session["userId"] = txtUserId.Text;
                Session["password"] = txtPassword.Text;
                Response.Write("<script>alert('登录成功');location.href='Homepage.aspx';</script>");
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
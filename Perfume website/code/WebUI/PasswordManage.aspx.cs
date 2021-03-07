using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PasswordManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string userId = Session["userId"].ToString();
        if (Bussiness.UserBussiness.UpdatePwd(userId, txtPassword.Text))
        {
            Response.Write("<script>alert('修改成功,请重新登录');</script>");
            Session["userId"] = null;
            Response.Write("<script>location.href='Login.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败');</script>");
        }
    }
}
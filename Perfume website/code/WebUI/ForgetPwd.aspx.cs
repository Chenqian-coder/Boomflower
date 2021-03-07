using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;

public partial class forgetPwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Bussiness.UserBussiness.IsExistId(txtUserId.Text))
        {
            if (Bussiness.UserBussiness.IsRightContact(txtUserId.Text, txtContact.Text))
            {
                if (Bussiness.UserBussiness.UpdatePwd(txtUserId.Text, txtPwd.Text))
                {
                    Response.Write("<script>alert('修改成功');location.href='Login.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('修改失败')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('验证失败')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('账号不存在');</script>");
        }
    }
}
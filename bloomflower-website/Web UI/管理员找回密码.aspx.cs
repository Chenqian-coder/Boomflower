using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;


public partial class 管理员找回密码 : System.Web.UI.Page
{
    Administrator admin = new Administrator();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        if (AdministratorBusiness.IsExistNo(txtID.Text))
        {
            if (txtID.Text == "" || txtPwd.Text == "" || txtRePwd.Text == "")
            {
                lblInfo.Text = "所有项必须填写";
            }
            else
            {
                if (txtPwd.Text == txtRePwd.Text)
                {
                    if (AdministratorBusiness.UpdateAdiminPassWord(txtID.Text, txtPwd.Text))
                    {
                        Response.Write("<script>alert('密码找回成功，请记住您的密码');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('密码找回失败');</script>");
                    }
                }
                else
                {
                    lblInfo.Text = "两次密码必须一致";
                    txtPwd.Text = "";
                    txtRePwd.Text = "";
                }


            }
        }
        else
        {

            lblInfo.Text = "用户不存在，请注册";
        }

    }
}
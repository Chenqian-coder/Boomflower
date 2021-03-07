using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;


public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string id = txtId.Text;
            if (AdministratorBusiness.IsExistNo(id))
            {
                if (txtId.Text == "" || txtPassword.Text == "")
                {
                    LabErrorMsg.Text = "请输入您的账号,密码";
                }
                else
                {
                    if (AdministratorBusiness.IsRightPwd(id, txtPassword.Text))
                    {
                        Response.Redirect("后台管理首页.aspx");

                    }
                    else
                    {
                        LabErrorMsg.Text = "密码不正确，请重新填写";
                        txtPassword.Text = "";
                        Button1.Visible = true;
                    }
                }
            }
            else
            {
                LabErrorMsg.Text = "账号不存在";
                txtId.Text = "";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }




   
}
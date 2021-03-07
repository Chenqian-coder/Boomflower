using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class 注册页 : System.Web.UI.Page
{
    Users user = new Users();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        user.UserId = txtUserId.Text;
        user.UserName = txtUsername.Text;
        user.Password = txtPassword.Text;
        user.RealName = txtRealname.Text;
        if (RadioButton1.Checked)
            user.Sex = "男";
        else
            user.Sex = "女";
        user.Birthday = txtBirthday.Text;
        user.Contact = txtContact.Text;
        user.Email = txtEmail.Text;
        user.Regdate = DateTime.Now.ToString();
        if (!Business.UserBusiness.IsExistId(txtUserId.Text))
        {
            if (Business.UserBusiness.InsertUserInfo(user))
            {
                Response.Write("<script>alert('注册成功');location.href='登录页.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('注册失败')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('该ID已存在，请更换ID')</script>");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Bussiness;

public partial class MyInfoManager : System.Web.UI.Page
{
    Users user = new Users();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string usid = Session["userId"].ToString();
            user = UserBussiness.GetUserInfoById(usid);
            Label3.Text = user.UserId;
            txtUsername.Text = user.UserName;
            txtRealname.Text = user.RealName;
            if (user.Sex == "男")
            {
                RadioButton1.Checked = true;
                RadioButton2.Checked = false;
            }
            else
            {
                RadioButton1.Checked = false;
                RadioButton2.Checked = true;
            }
            txtBirthday.Text = user.Birthday;
            txtContact.Text = user.Contact;
            txtEmail.Text = user.Email;
            Label4.Text = user.Regdate;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        user.UserId = Label3.Text;
        user.UserName = txtUsername.Text;
        user.Password = Session["password"].ToString();
        user.RealName = txtRealname.Text;
        if (RadioButton1.Checked == true)
            user.Sex = "男";
        else
            user.Sex = "女";
        user.Birthday = txtBirthday.Text;
        user.Contact = txtContact.Text;
        user.Email = txtEmail.Text;
        user.Regdate = Label4.Text;
        if (UserBussiness.UpdateUserInfo(user))
        {
            Response.Write("<script>alert('修改成功');location.href='MyInfo.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败')</script>");
        }
    }
}
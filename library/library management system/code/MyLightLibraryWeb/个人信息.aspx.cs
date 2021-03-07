using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;


public partial class 个人信息 : System.Web.UI.Page
{
    Users user = new Users();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userId"] != null)
            {
                btnok.Enabled = false;
                btnUpdate.Enabled = true;
                string usid = Session["userId"].ToString();
                user = Business.UserBusiness.GetUserInfoById(usid);
                lbUserId.Text = user.UserId;
                tbUserName.Text = user.UserName;

                tbUserRealName.Text = user.RealName;

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
                tbBirthday.Text = user.Birthday;
                tbContect.Text = user.Contact;
                tbMail.Text = user.Email;
                lblTime.Text = user.Regdate;
                tbUserName.ReadOnly = true;
                tbUserRealName.ReadOnly = true;
                tbBirthday.ReadOnly = true;
                tbContect.ReadOnly = true;
                tbMail.ReadOnly = true;
            }
            else
            {
                Response.Write("<script>alert('请先登录');location.href='登录页.aspx';</script>");
            }
        }
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='个人信息.aspx';</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location.href='修改密码.aspx';</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        tbUserName.ReadOnly = false;
        tbUserRealName.ReadOnly = false;
        tbBirthday.ReadOnly = false;
        tbContect.ReadOnly = false;
        tbMail.ReadOnly = false;
        btnUpdate.CausesValidation = true;
        btnok.Enabled = true;
        btnUpdate.Enabled = false;
        
    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        user.UserId = lbUserId.Text;
        user.UserName = tbUserName.Text;
        user.Password = Session["password"].ToString();
        user.RealName = tbUserRealName.Text;
        if (RadioButton1.Checked == true)
            user.Sex = "男";
        else
            user.Sex = "女";
        user.Birthday = tbBirthday.Text;
        user.Contact = tbContect.Text;
        user.Email = tbMail.Text;
        user.Regdate = lblTime.Text;
        if (UserBusiness.UpdateUserInfo(user))
        {
            Response.Write("<script>alert('修改成功');location.href='个人信息.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败')</script>");
        }
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='我的书架.aspx';</script>");
    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>location.href='我的评论.aspx';</script>");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Bussiness;

public partial class admin_AdminInfoManage : System.Web.UI.Page
{
    Admin admin = new Admin();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string adminid = Session["adminId"].ToString();
            admin = AdminBussiness.GetAdminInfoById(adminid);
            Label4.Text = admin.AdminId;
            TextBox1.Text = admin.AdminName;
            TextBox2.Text = admin.Password;
            TextBox3.Text = admin.RealName;
            TextBox4.Text = admin.Contact;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["adminId"] = null;
        Response.Write("<script>location.href='AdminLogin.aspx';</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        admin.AdminId = Label4.Text;
        admin.AdminName = TextBox1.Text;
        admin.Password = TextBox2.Text;
        admin.RealName = TextBox3.Text;
        admin.Contact = TextBox4.Text;
        if (AdminBussiness.UpdateAdminInfo(admin))
        {
            Response.Write("<script>alert('修改成功');location.href='AdminHomePage.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败')</script>");
        }
    }
}
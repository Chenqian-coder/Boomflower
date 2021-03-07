using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Bussiness;

public partial class admin_AddAdmin : System.Web.UI.Page
{
    Admin admin = new Admin();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["adminId"] = null;
        Response.Write("<script>location.href='AdminLogin.aspx';</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        admin.AdminId = txtAdminId.Text;
        admin.AdminName = txtAdminName.Text;
        admin.Password = txtPassword.Text;
        admin.RealName = txtRealname.Text;
        admin.Contact = txtContact.Text;
        if (!AdminBussiness.IsExistAdminId(txtAdminId.Text))
        {
            if (AdminBussiness.InsertAdminInfo(admin))
            {
                Response.Write("<script>alert('添加成功');location.href='AdminHomePage.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('添加失败')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('该账号已存在，请更换账号')</script>");
        }
    }
}
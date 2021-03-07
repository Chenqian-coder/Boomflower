using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AdminLog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminId"] != null)
        {
            Response.Write("<script>location.href='AdminHomePage.aspx';</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Bussiness.AdminBussiness.IsExistAdminId(txtAdminId.Text))
        {

            if (Bussiness.AdminBussiness.IsRightAdminPwd(txtAdminId.Text, txtPassword.Text))
            {
                Session["adminId"] = txtAdminId.Text;
                Session["adminPassword"] = txtPassword.Text;
                Response.Write("<script>location.href='AdminHomepage.aspx';</script>");
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
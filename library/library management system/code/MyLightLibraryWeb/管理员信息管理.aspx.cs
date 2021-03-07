using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;

public partial class 管理员信息管理 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["admin"].ToString() == "admin")
            {
                GridView1.DataSource = AdminBusiness.GetAdminTable("admin").Tables["admin"];
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('请使用超级管理员登录');location='后台登录.aspx';</script>");
            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string adminId = GridView1.DataKeys[e.RowIndex].Value.ToString();
        if (adminId != "admin")
        {
            if (AdminBusiness.DeleteInfoByAdminId(adminId))
            {
                GridView1.DataSource = AdminBusiness.GetAdminTable("admin").Tables["admin"];
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('删除失败');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('高级账户管理员不可删除');</script>");
        }
    }
}
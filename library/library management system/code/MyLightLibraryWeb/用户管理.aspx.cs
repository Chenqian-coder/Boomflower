using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;

public partial class 用户管理 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (Session["admin"] != null)
            {
                GridView1.DataSource = UserBusiness.GetUserTable("user").Tables["user"];
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('请先登陆');location='后台登录.aspx';</script>");
            }
        }
    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = UserBusiness.GetUserTableByIdAndName(tbUserId.Text,tbUserName.Text, "user").Tables["user"];
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string userId = GridView1.DataKeys[e.RowIndex].Value.ToString();
        if (UserBusiness.DeleteInfoByUserId(userId))
        {
            GridView1.DataSource = UserBusiness.GetUserTable("user").Tables["user"];
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('删除失败');</script>");
        }
    }
}
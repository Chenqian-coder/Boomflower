using Bussiness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AllOrderManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["adminId"] != null)
            {
                this.GridView1.DataSource = AdminBussiness.getALLOrderInfo();
                this.GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('请先登录');location.href='AdminLogin.aspx';</script>");
            }
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["adminId"] = null;
        Response.Write("<script>location.href='AdminLogin.aspx';</script>");
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string userid = GridView1.Rows[e.RowIndex].Cells[0].Text.ToString();
        string pname = GridView1.DataKeys[e.RowIndex].Value.ToString();
        int i = AdminBussiness.DeleteOrderByName(pname, userid);
        Response.Redirect("AllOrderManage.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.GridView1.DataSource = AdminBussiness.getALLOrderInfo();
        this.GridView1.DataBind();
    }
}
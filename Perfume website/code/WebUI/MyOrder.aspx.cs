using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Bussiness;

public partial class myOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userId"] != null)
            {
                string userId = Session["userId"].ToString();
                this.GridView1.DataSource = OrderBussiness.getALLOrderInfo(userId);
                this.GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('请先登录');location.href='login.aspx';</script>");
            }
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        string userId = Session["userId"].ToString();
        this.GridView1.DataSource = OrderBussiness.getALLOrderInfo(userId);
        this.GridView1.DataBind();
    }
}
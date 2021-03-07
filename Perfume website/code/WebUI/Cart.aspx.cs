using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bussiness;
using System.Data;
using Entity;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userId"] != null)
            {
                string userId = Session["userId"].ToString();
                this.GridView1.DataSource = ShopCartBussiness.getALLInfo(userId);
                this.GridView1.DataBind();

            }
            else
            {
                Response.Write("<script>alert('请先登录');location.href='login.aspx';</script>");
            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string userid=Session["userId"].ToString();
        string pname = GridView1.DataKeys[e.RowIndex].Value.ToString();
        int i = ShopCartBussiness.DeleteCartByName(pname, userid);
        Response.Write("<script>alert('删除成功');location.href='Cart.aspx';</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string userId = Session["userId"].ToString();
        DataTable dt = ShopCartBussiness.getALLInfo(userId);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            Orders o = new Orders();
            o.UserId = Session["userId"].ToString();
            o.PerfumeName = dt.Rows[i]["perfumeName"].ToString();
            o.Price = dt.Rows[i]["price"].ToString();
            o.Counts = (int)dt.Rows[i]["counts"];
            o.Total = dt.Rows[i]["total"].ToString();
            o.Time = DateTime.Now.ToString("yyyy/MM/dd");
            o.Status = "未发货";
            OrderBussiness.InsertOrders(o);
            ShopCartBussiness.DeleteCartByName(dt.Rows[i]["perfumeName"].ToString(),userId);     
        }
        Response.Redirect("Payment.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        string userId = Session["userId"].ToString();
        this.GridView1.DataSource = ShopCartBussiness.getALLInfo(userId);
        this.GridView1.DataBind();
    }
}
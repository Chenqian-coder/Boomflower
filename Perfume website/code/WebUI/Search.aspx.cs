using Bussiness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (int.Parse(Session["type"].ToString()) == 1)
            {
                DataList1.DataSource = Bussiness.PerfumeBussiness.ShowAllPerfume();
                DataList1.DataBind();
            }
            else if (int.Parse(Session["type"].ToString()) == 2)
            {
                DataList1.DataSource = Bussiness.PerfumeBussiness.ShowHotPerfume();
                DataList1.DataBind();
            }
            else if (int.Parse(Session["type"].ToString()) == 3)
            {
                DataList1.DataSource = Bussiness.PerfumeBussiness.ShowMalePerfume();
                DataList1.DataBind();
            }
            else if (int.Parse(Session["type"].ToString()) == 4)
            {
                DataList1.DataSource = Bussiness.PerfumeBussiness.ShowFemalePerfume();
                DataList1.DataBind();
            }
            else if (int.Parse(Session["type"].ToString()) == 5)
            {
                DataList1.DataSource = Bussiness.PerfumeBussiness.SearchPerfume(Session["search"].ToString());
                DataList1.DataBind();
            }
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        LinkButton button = sender as LinkButton;
        Session["pname"] = button.Text;
        Response.Write("<script>location.href='Introduce.aspx';</script>");
    }
}
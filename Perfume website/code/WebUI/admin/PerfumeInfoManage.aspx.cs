using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_PerfumeInfoManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataList1.DataSource = Bussiness.PerfumeBussiness.ShowAllPerfume();
        DataList1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["adminId"] = null;
        Response.Write("<script>location.href='AdminLogin.aspx';</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataList1.DataSource = Bussiness.PerfumeBussiness.SearchPerfume(TextBox1.Text);
        DataList1.DataBind();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        LinkButton button = sender as LinkButton;
        Session["PerfumeName"] = button.Text;
        Response.Write("<script>location.href='UpdatePerfume.aspx';</script>");
    }
}
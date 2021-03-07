using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyCollect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string userId = Session["userId"].ToString();
            DataList2.DataSource = Bussiness.PerfumeBussiness.ShowCollectPerfume(userId);
            DataList2.DataBind();
        }
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        LinkButton button = sender as LinkButton;
        Session["pname"] = button.Text;
        Response.Write("<script>location.href='Introduce.aspx';</script>");
    }
}
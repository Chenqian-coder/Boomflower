using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class buyCar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }

    }
     void Bind()
    {
         GridView1.DataSource = CarBusiness.GetSightTable();
         GridView1.DataBind();

    }
    protected void lbtnDel_Click(object sender, EventArgs e)
    {
        
        LinkButton lbtn = sender as LinkButton;
        if (CarBusiness.DeleteSightInfo(int.Parse(lbtn.CommandArgument)))
        {
            Response.Write("<script>alert('删除成功');</script>");
            Bind();
        }
        else
        {
            Response.Write("<script>alert('删除失败');</script>");

        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton lbtn = sender as LinkButton;
        if (CarBusiness.DeleteSightInfo(int.Parse(lbtn.CommandArgument)))
        {
            Response.Write("<script>alert('购买成功');</script>");
            Bind();
        }
        else
        {
            Response.Write("<script>alert('购买失败');</script>");

        }
    }
}
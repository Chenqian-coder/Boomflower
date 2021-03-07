using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class 删除酒店房型信息 : System.Web.UI.Page
{
    Type1 type1 = new Type1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {
        GridView1.DataSource = TypeBusiness.GetTypeTable();
        GridView1.DataBind();
    }

    protected void lbtnDel_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lbtn = sender as LinkButton;
            if (TypeBusiness.DeleteTypeInfo(lbtn.CommandArgument))
            {
                Response.Write("<script>alert('删除成功');</script>");
                Bind();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
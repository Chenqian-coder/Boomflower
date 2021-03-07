using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;
using Entity;

public partial class 删除管理员信息 : System.Web.UI.Page
{
    Administrator administrator = new Administrator();
    private void Bind()
    {
        GridView1.DataSource = AdministratorBusiness.GetVisitorTable();
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lbtn = sender as LinkButton;
            if (AdministratorBusiness.DeleteAdministratorInfo(lbtn.CommandArgument))
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
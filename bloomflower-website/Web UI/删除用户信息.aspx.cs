using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class 删除用户信息 : System.Web.UI.Page
{
  
    UserEntity visitor = new UserEntity();
    private void Bind()
    {
        GridView1.DataSource = UserBusiness.GetVisitorTable();
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    protected void lbtnDel_Click1(object sender, EventArgs e)
    {
        try
        {
            LinkButton lbtn = sender as LinkButton;
            if (UserBusiness.DeleteVisitorInfo(lbtn.CommandArgument))
            {
                Response.Write("<script>alert('删除成功');</script>");
                Bind();
            }
        }catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
   
}
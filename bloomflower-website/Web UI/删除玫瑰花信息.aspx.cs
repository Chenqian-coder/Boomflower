using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business;
using Entity;

public partial class Book_GridView命令字段 : System.Web.UI.Page
{
   
    Rose sight = new Rose();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {
        GridView1.DataSource = roseBusiness.GetSightTable();
        GridView1.DataBind();
    }
   
    
  
    protected void lbtnDel_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lbtn = sender as LinkButton;
            if (roseBusiness.DeleteSightInfo(int.Parse(lbtn.CommandArgument)))
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
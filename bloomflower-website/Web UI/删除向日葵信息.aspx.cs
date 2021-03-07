using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;
using Entity;
public partial class 删除美食信息 : System.Web.UI.Page
{
    XiangRiKuiEntity food = new XiangRiKuiEntity();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {
        GridView1.DataSource = XiangRiKuiBusiness.GetXiangRiKuiTable();
        GridView1.DataBind();
    }
  
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        Bind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Bind();
    }
   
    protected void lbtnDel_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lbtn = sender as LinkButton;
            if (XiangRiKuiBusiness.DeleteXiangRiKuiInfo(lbtn.CommandArgument))
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

    protected void btnPrev_Click(object sender, EventArgs e)
    {
        try
        {
            int index = GridView1.EditIndex;
            FileUpload fup = GridView1.Rows[index].Cells[7].FindControl("fup") as FileUpload;
            Image img = GridView1.Rows[index].Cells[7].FindControl("img") as Image;
            if (fup.HasFile)
            {
                string fileName = fup.FileName;
                fup.SaveAs(Server.MapPath("") + "\\" + fileName);
                img.ImageUrl = fileName;
            }
            else
            {
                Response.Write("<script>alert('请选择图片文件');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btnCanc_Click(object sender, EventArgs e)
    {
        try
        {
            int index = GridView1.EditIndex;
            Image img = GridView1.Rows[index].Cells[7].FindControl("img") as Image;
            HiddenField hf = GridView1.Rows[index].Cells[7].FindControl("hf") as HiddenField;
            img.ImageUrl = hf.Value;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
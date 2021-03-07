using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class 修改景点信息 : System.Web.UI.Page
{

   
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
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        TextBox txtSightName = GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox;
        TextBox txtPrice = GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox;
        Image img = GridView1.Rows[e.RowIndex].Cells[3].FindControl("img") as Image;
        TextBox txtIntroduction = GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox;
        TextBox txtTprice = GridView1.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox;

        Rose sight = new Rose();
        sight.No = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
        sight.Name = txtSightName.Text;
        sight.Price = double.Parse(txtPrice.Text);
        sight.Tprice = double.Parse(txtTprice.Text);
        sight.Introduction = txtIntroduction.Text;
        sight.Image = img.ImageUrl;
       
      
        if (roseBusiness.UpdataSightInfoByNo(sight))
        {
            Response.Write("<script>alert('更新成功');</script>");
            GridView1.EditIndex = -1;
            GridView1.SelectedIndex = e.RowIndex;
            Bind();
        }
    }
   
    protected void btnPrev_Click(object sender, EventArgs e)
    {
        try
        {
            int index = GridView1.EditIndex;
            FileUpload fup = GridView1.Rows[index].Cells[4].FindControl("fup") as FileUpload;
            Image img = GridView1.Rows[index].Cells[4].FindControl("img") as Image;
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
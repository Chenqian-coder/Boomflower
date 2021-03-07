using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class 修改美食信息 : System.Web.UI.Page
{
    XiangRiKuiEntity xrk = new XiangRiKuiEntity();
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

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtName = GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox;
        TextBox txtIntroduce = GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox;
        Image img = GridView1.Rows[e.RowIndex].Cells[3].FindControl("img") as Image;
        TextBox txtPrice = GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox;
        TextBox txtTprice = GridView1.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox;

        xrk.No = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString()); ;
        xrk.Name = txtName.Text;
        xrk.Introduction = txtIntroduce.Text;
        xrk.Image = img.ImageUrl;
        xrk.Price = double.Parse(txtPrice.Text);
        xrk.Tprice = double.Parse(txtTprice.Text);
        if (XiangRiKuiBusiness.UpdataXiangRiKuiInfoByNo(xrk))
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
            FileUpload fup = GridView1.Rows[index].Cells[2].FindControl("fup") as FileUpload;
            Image img = GridView1.Rows[index].Cells[2].FindControl("img") as Image;
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
            Image img = GridView1.Rows[index].Cells[2].FindControl("img") as Image;
            HiddenField hf = GridView1.Rows[index].Cells[2].FindControl("hf") as HiddenField;
            img.ImageUrl = hf.Value;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
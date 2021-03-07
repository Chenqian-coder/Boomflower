using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business;
using Entity;

public partial class 修改管理员信息 : System.Web.UI.Page
{

   
    Administrator administrator = new Administrator();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {
        GridView1.DataSource = AdministratorBusiness.GetVisitorTable();
        GridView1.DataBind();
    }

    //行编辑
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;//获取当前行的下角标行号
        Bind();
    }
    //取消行编辑
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Bind();
    }
    //更新行的内容
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        TextBox txtName = GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox;
        TextBox txtPassword = GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox;
        administrator.No = GridView1.DataKeys[e.RowIndex].Value.ToString();
        administrator.Name = txtName.Text;
        administrator.Password = txtPassword.Text;
        if (AdministratorBusiness.UpdataAdministratorInfoByNo(administrator))
        {
            Response.Write("<script>alert('更新成功');</script>");
            GridView1.EditIndex = -1;
            GridView1.SelectedIndex = e.RowIndex;
            Bind();


        }

    }
}
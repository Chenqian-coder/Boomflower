using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class 修改用户信息 : System.Web.UI.Page
{
    UserEntity visitor = new UserEntity();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {
        GridView1.DataSource = UserBusiness.GetVisitorTable();
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
        TextBox txtUsername = GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox;
        TextBox txtPassword = GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox;
     
        visitor.Userid = GridView1.DataKeys[e.RowIndex].Value.ToString();
        visitor.Username = txtUsername.Text;
        visitor.Password = txtPassword.Text;
     
        if (UserBusiness.UpdateVisitorInfo(visitor))
        {
            Response.Write("<script>alert('更新成功');</script>");
            GridView1.EditIndex = -1;
            GridView1.SelectedIndex = e.RowIndex;
            Bind();
        }
    }
}

 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class 添加用户信息 : System.Web.UI.Page
{
    UserEntity visitor = new UserEntity();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            txtID.Focus();
        }

    }
    protected void btnRegist_Click(object sender, EventArgs e)
    {
        try
        {
            if (UserBusiness.IsExistID(txtID.Text))
            {
                Response.Write("<script>alert('用户ID已存在，请重新注册');</script>");
            }
            else
            {
                if (txtID.Text == "" || txtName.Text == "" || txtPwd.Text == "")
                {
                    Response.Write("<script>alert('所有项必须填写');</script>");
                }
                else
                {
                    visitor.Userid = txtID.Text.ToString();
                    visitor.Username = txtName.Text;
                    visitor.Password = txtPwd.Text;
                 
                    if (UserBusiness.InsertVisitorInfo(visitor))
                    {
                        Response.Write("<script>alert('用户注册成功！');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('注册失败');</script>");
                    }
                }
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
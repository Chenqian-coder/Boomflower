using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;
using Entity;

public partial class 添加管理员信息 : System.Web.UI.Page
{
    Administrator admin = new Administrator();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (AdministratorBusiness.IsExistNo(txtID.Text))
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
                    admin.No = txtID.Text;
                    admin.Name = txtName.Text;
                    admin.Password = txtPwd.Text;
                    if (AdministratorBusiness.InsertAdminInfo(admin))
                    {
                        Response.Write("<script>alert('管理员注册成功！');</script>");
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;
using Entity;
using DataAccess;

public partial class Regist1 : System.Web.UI.Page
{
    UserEntity user = new UserEntity();
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

                    user.Userid = txtID.Text.ToString();
                    user.Username = txtName.Text.ToString();
                    user.Password = txtPwd.Text.ToString();

                    if (UserBusiness.InsertVisitorInfo(user))
                    {
                        Response.Write("<script>alert('注册成功，快来登录吧！');location='Login.aspx';</script>");
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

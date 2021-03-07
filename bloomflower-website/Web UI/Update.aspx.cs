using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;


public partial class Update1 : System.Web.UI.Page
{
    UserEntity visitor = new UserEntity();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Write("<script>alert('必须登录');location='Login.aspx?type=update';</script>");
        }
        else
        {
            id = Session["id"].ToString();

            if (!IsPostBack)
            {
                lblID.Text = id;
                txtName.Text = visitor.Username;
            }
                
            }

        }
    

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtName.Text == "" || txtRePwd.Text == "" || TextBox1.Text == "")
            {
                Response.Write("<script>alert('所有信息必须填写')</script>");
            }
            else
            {
                if (txtRePwd.Text == TextBox1.Text)
                {
                    visitor.Userid = lblID.Text;
                    visitor.Username = txtName.Text;
                    visitor.Password = txtRePwd.Text;
                  
                    if (UserBusiness.UpdateVisitorInfo(visitor))
                    {
                        Response.Write("<script>alert('修改成功');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('修改失败');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('两次密码不一致，请重新输入');</script>");
                    TextBox1.Text = "";
                    txtRePwd.Text = "";

                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
        
    }

}
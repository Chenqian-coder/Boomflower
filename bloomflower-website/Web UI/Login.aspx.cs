using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class Login1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string id = TextBox1.Text;
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
            {
                lblInfo.Text = "请输入您的账号,密码和正确的验证码";
            }
            else
            {
                if (string.Compare(TextBox3.Text, Session["valid"].ToString(), true) == 0)
                {

                    if (UserBusiness.IsExistID(id))
                    {
                        if (UserBusiness.IsRightPwd(id, TextBox2.Text))
                        {

                            Session["id"] = id;
                            object type1 = Request.Params["type"];
                            if (type1 == null)
                            {
                                Response.Redirect("Main.aspx");

                            }
                            else
                            {
                                switch (type1.ToString())
                                {

                                    case "update":
                                        Response.Redirect("Update.aspx");
                                        break;
                                    case "FoodInfo":
                                        Response.Redirect("FoodInfo.aspx?no=" + Request.Params["no"].ToString());
                                        break;
                                    case "RoseInfo":
                                        Response.Redirect("RoseInfo.aspx?no=" + Request.Params["no"].ToString());
                                        break;
                                    case "HotelType":
                                        Response.Redirect("酒店房型.aspx?hno=" + Request.Params["hno"].ToString());
                                        break;
                                }
                            }
                        }
                        else
                        {
                            lblInfo2.Text = "您的密码不正确 请重新填写";
                            TextBox2.Text = "";

                        }
                    }
                    else
                    {
                        lblInfo.Text = "账号不存在 点击注册按钮注册";
                        TextBox1.Text = "";
                    }

                }
                else
                {
                    Response.Write("<script>alert('验证码错误，重新输入。');</script>");
                    TextBox3.Text = "";
                    TextBox3.Focus();
                }

            }
        }catch(Exception ex){
            Response.Write(ex.Message);

        }

        }
    

   
}

    



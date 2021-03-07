using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class 添加景点信息 : System.Web.UI.Page
{
    Rose sight = new Rose();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegist_Click(object sender, EventArgs e)
    {
        try
        {
            if (roseBusiness.IsExistNo(txtID.Text))
            {
                Response.Write("<script>alert('景点已存在，请重新添加');</script>");
            }
            else
            {
                if (txtID.Text == "" || txtName.Text == "" || txtPrice.Text == "" || Image1.ImageUrl == "" || txtTprice.Text == ""||txtIntroduce.Text == "")
                {
                    Response.Write("<script>alert('所有项必须填写');</script>");
                }
                else
                {
                    sight.No = int.Parse(txtID.Text.ToString());
                    sight.Name = txtName.Text;
                    sight.Image = Image1.ImageUrl.ToString();
                    sight.Introduction = txtIntroduce.Text;
                    sight.Price = double.Parse(txtPrice.Text.ToString());
                    sight.Tprice = double.Parse(txtTprice.Text.ToString());
                    if (roseBusiness.InsertSightInfo(sight))
                    {
                        Response.Write("<script>alert('玫瑰花信息插入成功！');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('玫瑰花信息插入失败！');</script>");
                    }
                }

            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(".\\") + fileName);
                Image1.ImageUrl = fileName;
            }
            else
            {
                Response.Write("<script>alert('请选择图片');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Bussiness;

public partial class admin_AddPerfume : System.Web.UI.Page
{
    private string pname; //上传文件时定义的一全局变量用来接收upload方法上传文件的文件名
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["adminId"] = null;
        Response.Write("<script>location.href='AdminLogin.aspx';</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Perfume perfume = new Perfume();
        perfume.PerfumeId = txtPerfumeId.Text;
        perfume.PerfumeName = txtPerfumeName.Text;
        perfume.Introduce = txtIntroduce.Text;
        //判断上传控件是否为null或者'' 
        if (UploadFile.Value != null && UploadFile.Value != "")
        {
            // 调用本类的upload方法
            upload();
            //的字段存放的是文件的相对路径 **很重要 一定是相对路径
            perfume.Image = "~/upfiles/" + this.pname;
        }
        perfume.Price = txtPrice.Text;
        perfume.Counts = txtPrice.Text;
        if (RadioButton1.Checked)
        {
            perfume.IsHot = true;
        }
        else
        {
            perfume.IsHot = false;
        }
        if (RadioButton3.Checked)
        {
            perfume.IsMale = true;
        }
        else
        {
            perfume.IsMale = false;
        }
        if (!PerfumeBussiness.IsExistPerfumeId(txtPerfumeId.Text))
        {
            if (PerfumeBussiness.InsertPerfumeInfo(perfume))
            {
                Response.Write("<script>alert('添加成功');location.href='AdminHomePage.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('添加失败')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('该ID已存在，请更换账号')</script>");
        }

    }
    //文件上传的方法 
    private void upload()
    {
        //判断上传控件是否为null  
        if (UploadFile.Value != null)
        {
            //获取控件中的文件的文件名称
            string nam = UploadFile.PostedFile.FileName;
            //文件名中'.'的位置 例如 aaa.jpg中'.'的位置是4  
            int i = nam.LastIndexOf(".");
            //获取文件的文件类型(就是文件名'.'以及之后的部分)
            string newext = nam.Substring(i);
            //实例化一个随机数的接口 
            Random rnd = new Random();
            //获取一个1000-9999的随机数 防止同时提交 
            int n = rnd.Next(1000, 9999);
            //文件的新名称 命名规则是年月日时分秒毫秒+随机数
            string newname = DateTime.Now.ToString("yyyymmddhhmmssfff");
            //上传文件 文件路径是WebUI目录下的upfiles文件夹
            UploadFile.PostedFile.SaveAs(Server.MapPath("~\\upfiles/" + newname + newext));
            //给本类的变量赋值 值是文件的新文件名
            pname = newname + newext;
        }
    }
}
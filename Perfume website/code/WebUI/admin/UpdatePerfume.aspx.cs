using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Bussiness;

public partial class admin_UpdatePerfume : System.Web.UI.Page
{
    private string pname;
    Perfume perfume = new Perfume();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string perfumeName = Session["PerfumeName"].ToString();
            perfume = PerfumeBussiness.GetPerfumeInfoByName(perfumeName);
            Label1.Text = perfume.PerfumeId;
            TextBox1.Text = perfume.PerfumeName;
            TextBox2.Text = perfume.Introduce;
            TextBox3.Text = perfume.Price;
            TextBox4.Text = perfume.Counts;
            if (perfume.IsHot)
            {
                RadioButton1.Checked = true;
                RadioButton2.Checked = false;
            }
            else
            {
                RadioButton1.Checked = false;
                RadioButton2.Checked = true;
            }
            if (perfume.IsMale)
            {
                RadioButton3.Checked = true;
                RadioButton4.Checked = false;
            }
            else
            {
                RadioButton3.Checked = false;
                RadioButton4.Checked = true;
            }
            Image1.ImageUrl = perfume.Image;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        perfume.PerfumeId = Label1.Text;
        perfume.PerfumeName = TextBox1.Text;
        perfume.Introduce = TextBox2.Text;
        perfume.Price = TextBox3.Text;
        perfume.Counts = TextBox4.Text;
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
        if (UploadFile.Value != null && UploadFile.Value != "")
        {
            // 调用本类的upload方法
            upload();
            //的字段存放的是文件的相对路径 **很重要 一定是相对路径
            perfume.Image = "~/upfiles/" + this.pname;
        }
        else
        {
            perfume.Image = Image1.ImageUrl;
        }
        if (PerfumeBussiness.UpdatePerfumeInfo(perfume))
        {
            Response.Write("<script>alert('修改成功');location.href='PerfumeInfoManage.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败')</script>");
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
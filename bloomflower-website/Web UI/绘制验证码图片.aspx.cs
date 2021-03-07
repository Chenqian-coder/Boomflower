using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;


public partial class 绘制验证码图片 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Random rand = new Random();
        Color color1 = Color.FromArgb(rand.Next(0, 256), rand.Next(0, 256), rand.Next(0, 256));
        Color color2 = Color.FromArgb(rand.Next(0, 256), rand.Next(0, 256), rand.Next(0, 256));
        string strValid = GetValidNums();

        Session["valid"] = strValid;

        Bitmap bmp = new Bitmap(70, 25);
        Graphics grap = Graphics.FromImage(bmp);
        grap.Clear(color1);
        Brush brush = new SolidBrush(color2);
       // grap.DrawString(strValid, new Font("", 20), brush, 5, 2);
        grap.DrawString(strValid,new Font("幼圆",20),brush,5,2);
        //加干扰线
        Color[] color = new Color[100];
        for (int i = 0; i < 50; i++)
        {
            color[i] = Color.FromArgb(rand.Next(0, 256), rand.Next(0, 256), rand.Next(0, 256));
            int x = rand.Next(0, 75);
            int y = rand.Next(0, 30);
            grap.DrawLine(new Pen(color[i], 1), x, y, x + rand.Next(0, 5), y + rand.Next(0, 5));
        }


        bmp.Save(Response.OutputStream, ImageFormat.Bmp);
    }

    private static string GetValidNums()
    {
        Random rand = new Random();
        string strArray = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
        string strValid = "";
        for (int i = 0; i < 4; i++)
        {
            string str = strArray[rand.Next(0, strArray.Length)].ToString();
            strValid += str;
        }
        return strValid;
    }

}
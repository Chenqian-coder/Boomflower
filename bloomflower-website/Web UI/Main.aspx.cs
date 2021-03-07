using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;


public partial class _11 : System.Web.UI.Page
{
   public string no;
   public  string id;
    UserEntity visitor = new UserEntity();
    XiangRiKuiEntity food = new XiangRiKuiEntity();
    KangNaiXinEntity hotel = new KangNaiXinEntity();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        
            if (Session["id"] == null)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
            else
            {
                Panel2.Visible = true;
                Panel1.Visible = false;
                id = Session["id"].ToString();
                visitor = UserBusiness.GetVisitorInfoByID(id);
                lblName.Text = visitor.Username;
            }
            //绑定景点的数据库
            DataList1.DataSource = roseBusiness.GetSightTable();
            DataList1.DataBind();
            //绑定酒店的数据库
            DataList2.DataSource = KangNaiXinBusiness.GetKangNaiXinTable();
            DataList2.DataBind();
            //绑定美食的数据库
            DataList3.DataSource = XiangRiKuiBusiness.GetXiangRiKuiTable();
            DataList3.DataBind();
        

    }


   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            ImageButton imgbtn = sender as ImageButton;
            Response.Redirect("RoseInfo.aspx?no=" + imgbtn.CommandArgument);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lbtn = sender as LinkButton;
            Response.Redirect("RoseInfo.aspx?no=" + lbtn.CommandArgument);
        }catch(Exception ex){
            Response.Write(ex.Message);
        }
    }

   
 
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            ImageButton imgbtn = sender as ImageButton;
            Response.Redirect("xiangRiKui.aspx?no=" + imgbtn.CommandArgument);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
  
    protected void LinkButton5_Click1(object sender, EventArgs e)
    {
        try
        {
            LinkButton lbtn = sender as LinkButton;
            Response.Redirect("KangNaiXin.aspx?no=" + lbtn.CommandArgument);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lbtn = sender as LinkButton;
            Response.Redirect("xiangRiKui.aspx?no=" + lbtn.CommandArgument);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
            ImageButton imgbtn = sender as ImageButton;
            Response.Redirect("KangNaiXin.aspx?no=" + imgbtn.CommandArgument);
        
        
    }
}
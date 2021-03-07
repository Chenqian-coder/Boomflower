using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Business;

public partial class 下载页 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (Session["userId"] != null)
            {
                if (Session["bookId"] != null)
                {
                    string bookId = Session["bookId"].ToString();
                    DataList1.DataSource = Business.BookDownloadBusiness.SelectDownloadByBookId("bookDownload", bookId).Tables["bookDownload"];
                    DataList1.DataBind();
                }
                else
                {
                    Response.Write("<script>location.href='首页.aspx';</script>");
                }
            }
            else 
            {
                Response.Write("<script>alert('请先登录');location.href='登录页.aspx';</script>");
            }
        }
    }
}
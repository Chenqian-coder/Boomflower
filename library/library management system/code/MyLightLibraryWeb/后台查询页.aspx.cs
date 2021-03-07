using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;

public partial class 后台查询页 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataList1.DataSource = Business.BookBusiness.ShowAllBooks();
            DataList1.DataBind();
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        LinkButton lkbtn = (LinkButton)sender;
        Response.Redirect("后台详情页.aspx?bookId=" + lkbtn.CommandArgument);
    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        DataList1.DataSource = BookBusiness.SelectBooksByIdAndName(tbBookId.Text, tbBookName.Text, "books").Tables["books"];
        DataList1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location.href='后台详情页.aspx';</script>");
    }
}
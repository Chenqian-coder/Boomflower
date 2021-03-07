using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 查询页 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["type"].ToString() == "")
            {
                if (Session["bookName"].ToString() == "")
                {
                    DataList1.DataSource = Business.BookBusiness.ShowAllBooks();
                    DataList1.DataBind();
                }
                else
                {
                    string bookName = Session["bookName"].ToString();
                    DataList1.DataSource = Business.BookBusiness.SelectBooksByName("Books", bookName).Tables["Books"];
                    DataList1.DataBind();
                }
            }
            else
            {
                string type = Session["type"].ToString();
                DataList1.DataSource = Business.BookBusiness.SelectBooksByType("Books", type).Tables["Books"];
                DataList1.DataBind();
                
            }
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        LinkButton lkbtn = (LinkButton)sender;
        Response.Redirect("详情页.aspx?bookId=" + lkbtn.CommandArgument);
    }
}
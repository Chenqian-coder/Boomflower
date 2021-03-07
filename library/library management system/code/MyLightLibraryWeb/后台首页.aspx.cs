using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 后台首页 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Convert.ToBoolean(Session["power"]))
            
                Image1.ImageUrl = "~/Image/管理员2.jpg";
            
            else
                Image1.ImageUrl = "~/Image/管理员1.jpg";

        }
    }
}
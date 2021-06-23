using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserSide_Image : System.Web.UI.Page
{
    ANews a = new ANews();
    NewsHelper NH = new NewsHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = NH.GetData("select * from ViewNews where Newsid=" + Request.QueryString["Newsid"]);
        Repeater1.DataBind();
    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_NewsFeed : System.Web.UI.Page
{
    ANews a = new ANews();
    NewsHelper NH = new NewsHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = NH.GetData("select * from ViewNews   order by NewsDate DESC ");
        Repeater1.DataBind();
           
    }
}
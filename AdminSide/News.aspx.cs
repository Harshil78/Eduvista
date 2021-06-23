using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ANews a = new ANews();
        NewsHelper NH = new NewsHelper();
        if (Session["AdminName"] == null)
        {
            Response.Redirect("LogIn.aspx");
           
        }
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.Newsid = Convert.ToInt32(Request.QueryString["Newsid"]);
            NH.Delete(a);
        }
        Repeater1.DataSource = NH.GetData("select * from ViewNews");
        Repeater1.DataBind();
    }
 
}
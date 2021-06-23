using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_Contact : System.Web.UI.Page
{
    AContactUs a = new AContactUs();
    ContactHelper CH = new ContactHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
        {
            Response.Redirect("LogIn.aspx");
        }
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.Contactid = Convert.ToInt32(Request.QueryString["Contactid"]);
            CH.Delete(a);
        }
        Repeater1.DataSource = CH.GetData("select * from tblContact");
        Repeater1.DataBind();
    }
}
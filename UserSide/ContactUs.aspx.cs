using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_ContactUs : System.Web.UI.Page
{
    AContactUs a = new AContactUs();
    ContactHelper CH = new ContactHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Location"] != null)
        {

            Session["Location"] = Request.QueryString["Location"].ToString();
            Session.Timeout = 18000;
        }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        a.Name = TxtName.Text;
        a.Email = TxtEmail.Text;
        a.Subject = TxtSub.Text;
        a.Message = TxtMess.Text;
        CH.Insert(a);
        Response.Redirect("ContactUs.aspx");
    }
}
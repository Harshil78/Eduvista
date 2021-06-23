using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_LogIn : System.Web.UI.Page
{
    Helper h = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.Cookies["AdminName"] != null)

                TxtUsername.Text = Request.Cookies["AdminName"].Value;

            if (Request.Cookies["Password"] != null)

                TxtPassword.Attributes.Add("value", Request.Cookies["Password"].Value);
            if (Request.Cookies["AdminName"] != null && Request.Cookies["Password"] != null)
                RememberMe.Checked = true;
        }

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (h.AdminLogin(TxtUsername.Text, TxtPassword.Text))
        {
            if (RememberMe.Checked == true)
            {
                Response.Cookies["AdminName"].Value = TxtUsername.Text;
                Response.Cookies["Password"].Value = TxtPassword.Text;
                Response.Cookies["AdminName"].Expires = DateTime.Now.AddDays(365);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(365);
            }

            else
            {

                Response.Cookies["AdminName"].Expires = DateTime.Now.AddDays(-1);
                 Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Redirect("Country.aspx");
        }
        else
        {
            Response.Write(@"<script language='javascript'>alert('User Name Or Password Incorrect')</script>");
        }

    }
}
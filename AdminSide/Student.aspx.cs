using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_Student : System.Web.UI.Page
{
    AStudent a = new AStudent();
    StudentHelper SH = new StudentHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
        {
            Response.Redirect("LogIn.aspx");
           
        }
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.Studentid = Convert.ToInt32(Request.QueryString["Studentid"]);
            SH.Delete(a);
        }
        Repeater1.DataSource = SH.GetData("select * from ViewStudent");
        Repeater1.DataBind();
    }
    public string getdate(string d)
    {
        string datestr = "";
        datestr = d.Substring(8, 2) + "-";
        datestr += d.Substring(5, 2) + "-";
        datestr += d.Substring(0, 4) + "";

        return datestr;
    }
}
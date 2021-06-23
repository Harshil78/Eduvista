using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_Result : System.Web.UI.Page
{
    AResult a = new AResult();
    ResultHelper RH = new ResultHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
        {
            Response.Redirect("LogIn.aspx");
           
        }
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.Resultid = Convert.ToInt32(Request.QueryString["Resultid"]);
            RH.Delete(a);
        }
        Repeater1.DataSource = RH.GetData("select * from tblResult");
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_UStudent : System.Web.UI.Page
{
    AStudent a = new AStudent();
    StudentHelper SH = new StudentHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Countryid"] != null)
        {
            
                Repeater1.DataSource = SH.GetData("select * from ViewStudent where Countryid=" + Request.QueryString["Countryid"]);
                Repeater1.DataBind();
           
        }
        else
        {
            Repeater1.DataSource = SH.GetData("select * from ViewStudent");
            Repeater1.DataBind();
        }
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
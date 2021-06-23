using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_UResult : System.Web.UI.Page
{
    AResult a = new AResult();
    ResultHelper RH = new ResultHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = RH.GetData("select * from tblResult order by ExamDate Desc");
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
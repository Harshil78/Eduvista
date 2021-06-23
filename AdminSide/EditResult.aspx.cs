using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  
public partial class AdminSide_EditResult : System.Web.UI.Page
{
    AResult a = new AResult();
    ResultHelper RH = new ResultHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Resultid"] == null)
        {
            Response.Redirect("LogIn.aspx");
        }
        if (!this.IsPostBack)
        {
            DataRow dr = RH.GetSingle(Request.QueryString["Resultid"]);
            TxtName.Text = dr["Name"].ToString();
            TxtDate.Text = dr["ExamDate"].ToString();
            TxtOverall.Text = dr["Overall"].ToString();
            TxtListening.Text = dr["Listening"].ToString();
            TxtReading.Text = dr["Reading"].ToString();
            TxtWriting.Text = dr["writing"].ToString();
            TxtSpeaking.Text = dr["Speaking"].ToString();
            Image1.ImageUrl = "~/Images/" + dr["Image"].ToString();
            ViewState["image"] = dr["Image"].ToString();
        }
    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        a.Name = TxtName.Text;
        a.ExamDate = TxtDate.Text;
        a.Overall = TxtOverall.Text;
        a.Listening = TxtListening.Text;
        a.Reading = TxtReading.Text;
        a.Writing = TxtWriting.Text;
        a.Speaking = TxtSpeaking.Text;
        a.Resultid = Convert.ToInt16(Request.QueryString["Resultid"]);
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../Images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }
        else
            a.Image = ViewState["image"].ToString();

        RH.Update(a);
        Response.Redirect("Result.aspx");
    }
}
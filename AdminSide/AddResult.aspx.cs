using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_AddResult : System.Web.UI.Page
{
    AResult a = new AResult();
    ResultHelper RH = new ResultHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        a.Name = TxtName.Text;
        a.ExamDate = TxtDate.Text;
        a.Overall = TxtOverall.Text;
        a.Listening = TxtListening.Text;
        a.Reading = TxtReading.Text;
        a.Writing = TxtWriting.Text;
        a.Speaking = TxtSpeaking.Text;
        a.Image = "";
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../Images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }


        RH.Insert(a);
        Response.Redirect("Result.aspx");
    }
}
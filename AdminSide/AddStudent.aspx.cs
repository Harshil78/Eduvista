using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_AddStudent : System.Web.UI.Page
{
    AStudent a = new AStudent();
    StudentHelper SH = new StudentHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DDCountry.DataValueField = "Countryid";
            DDCountry.DataTextField= "CountryName";
            DDCountry.DataSource = SH.GetData("select * from tblCountry order by CountryName ASC");
            DDCountry.DataBind();
            DDCountry.Items.Insert(0, new ListItem("-----Select Country-----", "0"));
        }
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        a.Name = TxtName.Text;
        a.Countryid = Convert.ToInt16(DDCountry.SelectedValue);
        a.Description = TxtDesciption.Text;
        a.Date = TxtDate.Text;
        a.Image = "";
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../Images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }


        SH.Insert(a);
        Response.Redirect("Student.aspx");
    }
}
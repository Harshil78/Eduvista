using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AdminSide_EditStudent : System.Web.UI.Page
{
    AStudent a = new AStudent();
    StudentHelper SH = new StudentHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Studentid"] == null)
        {
            Response.Redirect("LogIn.aspx");
        }
        if (!this.IsPostBack)
        {
            DataRow dr = SH.GetSingle(Request.QueryString["Studentid"]);
            TxtName.Text = dr["Name"].ToString();

            DDCountry.DataValueField = "Countryid";
            DDCountry.DataTextField = "CountryName";
            DDCountry.DataSource = SH.GetData("select * from tblCountry order by CountryName ASC");
            DDCountry.DataBind();
            DDCountry.SelectedValue = dr["Countryid"].ToString();
            TxtDesciption.Text = dr["Description"].ToString();
            TxtDate.Text = dr["Date"].ToString();
            Image1.ImageUrl = "~/Images/" + dr["Image"].ToString();
            ViewState["image"] = dr["Image"].ToString();
        }
    }
    protected void BtnEdit_Click(object sender, EventArgs e)
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
        else
            a.Image = ViewState["image"].ToString();
        a.Studentid = Convert.ToInt32(Request.QueryString["Studentid"]);
        SH.Update(a);
        Response.Redirect("Student.aspx");
    }
}
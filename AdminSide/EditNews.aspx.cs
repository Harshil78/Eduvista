using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminSide_EditNews : System.Web.UI.Page
{
    ANews a = new ANews();
    NewsHelper NH = new NewsHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Newsid"] == null)
        {
            Response.Redirect("LogIn.aspx");
        }
        if (!this.IsPostBack)
        {
            DataRow dr = NH.GetSingle(Request.QueryString["Newsid"]);
            DDCountry.DataValueField = "Countryid";
            DDCountry.DataTextField = "CountryName";
            DDCountry.DataSource = NH.GetData("select * from tblCountry order by CountryName Asc ");
            DDCountry.DataBind();
            DDCountry.SelectedValue = dr["Countryid"].ToString();
            TxtDate.Text=dr["NewsDate"].ToString();
            Image1.ImageUrl = "~/Images/" + dr["Image"].ToString();
            ViewState["image"] = dr["Image"].ToString();
        }
    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        a.Countryid = Convert.ToInt32(DDCountry.SelectedValue);
        a.NewsDate = TxtDate.Text;

        a.Newsid = Convert.ToInt16(Request.QueryString["Newsid"]);
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../Images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }
        else
            a.Image = ViewState["image"].ToString();

        NH.Update(a);
        Response.Redirect("News.aspx");
    }
  
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_AddNews : System.Web.UI.Page
{
    ANews a=new ANews();
    NewsHelper NH = new NewsHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DDCountry.DataValueField = "Countryid";
            DDCountry.DataTextField = "CountryName";
            DDCountry.DataSource = NH.GetData("select * from tblCountry order by CountryName Asc ");
            DDCountry.DataBind();
            DDCountry.Items.Insert(0, new ListItem("-----Select Country-----", "0"));
        }
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
          a.Countryid=Convert.ToInt32( DDCountry.SelectedValue);
          a.NewsDate = DateTime.Now.Date.ToString("dd-MM-yyyy"); 
        a.Image = "";
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../Images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }


        NH.Insert(a);
        Response.Redirect("News.aspx");
    }
   
}
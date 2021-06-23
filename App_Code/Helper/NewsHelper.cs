using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data; 


/// <summary>
/// Summary description for NewsHelper
/// </summary>
public class NewsHelper:Helper
{
    public void Insert(ANews a)
    {
        SqlCommand cm = new SqlCommand("insert into tblNews(Countryid,NewsDate,Image)values(@Countryid,@NewsDate,@Image)");
        cm.Parameters.AddWithValue("@Countryid", a.Countryid);
        cm.Parameters.AddWithValue("@NewsDate", a.NewsDate);
        cm.Parameters.AddWithValue("@Image", a.Image);
        ExecuteCommand(cm);

    }

    public void Delete(ANews a)
    {
        SqlCommand cm = new SqlCommand("delete from tblNews  where Newsid=@Newsid");
        cm.Parameters.AddWithValue("@Newsid", a.Newsid);
        ExecuteCommand(cm);

    }

    public void Update(ANews a)
    {
        SqlCommand cm = new SqlCommand("update tblNews set Countryid=@Countryid,NewsDate=@NewsDate,Image=@Image where Newsid=@Newsid");
        cm.Parameters.AddWithValue("@Countryid", a.Countryid);
        cm.Parameters.AddWithValue("@NewsDate", a.NewsDate);
        cm.Parameters.AddWithValue("@Image", a.Image);
        cm.Parameters.AddWithValue("@Newsid", a.Newsid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblNews  where Newsid=@Newsid", cn);
        cm.Parameters.AddWithValue("@Newsid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}
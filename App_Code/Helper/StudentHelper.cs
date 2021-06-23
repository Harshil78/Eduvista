using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for CountryHelper
/// </summary>
public class StudentHelper : Helper
{
    public void Insert(AStudent a)
    {
        SqlCommand cm = new SqlCommand("insert into tblStudent(Name,Countryid,Description,Date,Image)values(@Name,@Countryid,@Description,@Date,@Image)");
        cm.Parameters.AddWithValue("@Name", a.Name);
        cm.Parameters.AddWithValue("@Countryid", a.Countryid);
        cm.Parameters.AddWithValue("@Description", a.Description);
        cm.Parameters.AddWithValue("@Date", a.Date);
        cm.Parameters.AddWithValue("@Image", a.Image);
        ExecuteCommand(cm);

    }

    public void Delete(AStudent a)
    {
        SqlCommand cm = new SqlCommand("delete from tblStudent  where Studentid=@Studentid");
        cm.Parameters.AddWithValue("@Studentid", a.Studentid);
        ExecuteCommand(cm);

    }

    public void Update(AStudent a)
    {
        SqlCommand cm = new SqlCommand("update tblStudent set Name=@Name,Countryid=@Countryid,Description=@Description,Date=@Date,Image=@Image where Studentid=@Studentid");
        cm.Parameters.AddWithValue("@Name", a.Name);
        cm.Parameters.AddWithValue("@Countryid", a.Countryid);
        cm.Parameters.AddWithValue("@Description", a.Description);
        cm.Parameters.AddWithValue("@Date", a.Date);
        cm.Parameters.AddWithValue("@Image", a.Image);
        cm.Parameters.AddWithValue("@Studentid", a.Studentid);
       
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblStudent  where Studentid=@Studentid", cn);
        cm.Parameters.AddWithValue("@Studentid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}
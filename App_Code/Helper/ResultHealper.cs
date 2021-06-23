using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for CountryHelper
/// </summary>
public class ResultHelper : Helper
{
    public void Insert(AResult a)
    {
        SqlCommand cm = new SqlCommand("insert into tblResult(Name,ExamDate,Overall,Listening,Reading,Writing,Speaking,Image)values(@Name,@ExamDate,@Overall,@Listening,@Reading,@Writing,@Speaking,@Image)");
        cm.Parameters.AddWithValue("@Name", a.Name);
        cm.Parameters.AddWithValue("@ExamDate", a.ExamDate);
        cm.Parameters.AddWithValue("@Overall", a.Overall);
        cm.Parameters.AddWithValue("@Listening", a.Listening);
        cm.Parameters.AddWithValue("@Reading", a.Reading);
        cm.Parameters.AddWithValue("@Writing", a.Writing);
        cm.Parameters.AddWithValue("@Speaking", a.Speaking);
        cm.Parameters.AddWithValue("@Image", a.Image);
        ExecuteCommand(cm);

    }

    public void Delete(AResult a)
    {
        SqlCommand cm = new SqlCommand("delete from tblResult  where Resultid=@Resultid");
        cm.Parameters.AddWithValue("@Resultid", a.Resultid);
        ExecuteCommand(cm);

    }

    public void Update(AResult a)
    {
        SqlCommand cm = new SqlCommand("update tblResult set Name=@Name,ExamDate=@ExamDate,Overall=@Overall,Listening=@Listening,Reading=@Reading,Writing=@Writing,Speaking=@Speaking,Image=@Image where Resultid=@Resultid");
        cm.Parameters.AddWithValue("@Name", a.Name);
        cm.Parameters.AddWithValue("@ExamDate", a.ExamDate);
        cm.Parameters.AddWithValue("@Overall", a.Overall);
        cm.Parameters.AddWithValue("@Listening", a.Listening);
        cm.Parameters.AddWithValue("@Reading", a.Reading);
        cm.Parameters.AddWithValue("@Writing", a.Writing);
        cm.Parameters.AddWithValue("@Speaking", a.Speaking);
        cm.Parameters.AddWithValue("@Image", a.Image);
        cm.Parameters.AddWithValue("@Resultid", a.Resultid);

        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblResult  where Resultid=@Resultid", cn);
        cm.Parameters.AddWithValue("@Resultid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}
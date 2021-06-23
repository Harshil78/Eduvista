using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ContactHelper
/// </summary>
public class ContactHelper : Helper
{
    public void Insert(AContactUs a)
    {
        SqlCommand cm = new SqlCommand("insert into tblContact(Name,Email,Subject,Message)values(@Name,@Email,@Subject,@Message)");
        cm.Parameters.AddWithValue("@Name", a.Name);
        cm.Parameters.AddWithValue("@Email", a.Email);
        cm.Parameters.AddWithValue("@Subject", a.Subject);
        cm.Parameters.AddWithValue("@Message", a.Message);

        ExecuteCommand(cm);

    }

    public void Delete(AContactUs a)
    {
        SqlCommand cm = new SqlCommand("delete from tblContact where Contactid=@Contactid");
        cm.Parameters.AddWithValue("@Contactid", a.Contactid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblContact where Contactid=@Contactid", cn);
        cm.Parameters.AddWithValue("@Contactid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}
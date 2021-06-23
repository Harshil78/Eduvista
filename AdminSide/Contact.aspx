<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/Admin.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="AdminSide_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
      th
    {
        text-align:center;
        
    }
    td
    {
    text-align:center;
    font-family:Arial;
    font-size:18px;
    font-variant:small-caps;
    }
    a
    {
     color:Black;   
    }
</style>
    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
</script>

 <div class="container" >
      <div>
        <h3>ContactUs Details </h3>
    </div>
     <br />
      <table id="example" class="display compact " >
          <thead>
              <tr>
                 
                  <th> Name  </th>
                  <th> Email   </th>
                  <th>Subject </th>
                  <th>Message</th>
                    <th> Delete  </th> 
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  
                  <td> <%# Eval("Name")%> </td>
                 <td><a href='mailto:<%# Eval("Email")%>>'</a> <%# Eval ("Email") %> </td>
                   <td> <%# Eval("Subject")%> </td>
                  <td> <%# Eval ("Message") %> </td>
                  <td> <a href='Contact.aspx?action=del&Contactid=<%# Eval ("Contactid") %>' class="fa fa-trash" > </a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
               <tr>
                 
                 <th> Name  </th>
                  <th> Email   </th>
                  <th>Subject </th>
                  <th>Message</th>
                    <th> Delete  </th> 
              </tr>
          </tfoot>

          </table>
  </div>
</asp:Content>


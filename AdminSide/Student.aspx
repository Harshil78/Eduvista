<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/Admin.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="AdminSide_Student" %>

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
        <h3>Global Student Details </h3>
    </div><br />
      <a href="AddStudent.aspx" class="btn btn-primary   li-modal">Add</a><br /> <br />
      <table id="example" class="display compact " style="" >
          <thead>
              <tr>
                  <th> Edit  </th>
                   <th> Name  </th>
                   <th>Country</th>
                   <th>Description</th>
                   <th>Date</th>
                    <th>Image</th>
                    <th> Delete  </th> 
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  <td> <a href='EditStudent.aspx?Studentid=<%#  Eval ("Studentid") %>' class=" fa fa-pencil-square-o modalEdit"  > </a> </td>
                   <td> <%# Eval("Name")%> </td>
                  <td> <%# Eval("CountryName")%> </td>
                   <td> <%# Eval("Description")%> </td>
                   <td> <%# getdate( Eval("Date").ToString())%> </td>
                  <td><img src="../Images/<%# Eval("Image") %>" width="80px" height="80px" alt="Not Found" />
                  <td> <a href='Student.aspx?action=del&Studentid=<%# Eval ("Studentid") %>' class=" fa fa-trash"  > </a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
              <tr>
                     <th> Edit  </th>
                   <th> Name  </th>
                   <th>Country</th>
                   <th>Description</th>
                   <th>Date</th>
                    <th>Image</th>
                    <th> Delete  </th> 
              </tr>
          </tfoot>

          </table>  
          <div id="theModal" class="modal fade  text-center " >
                        <div class="modal-dialog">
                          <div class="modal-content" >
                          </div>
                        </div>
                     
                       <script type="text/javascript">
                           $('.li-modal').on('click', function (e) {
                               e.preventDefault();
                               $('#theModal').modal('show').find('.modal-content').load($(this).attr('href'));
                           });

                           $('.modalEdit').on('click', function (e) {
                               e.preventDefault();
                               $('#theModal').modal('show').find('.modal-content').load($(this).attr('href'));
                           });
                      </script>
         </div>
         </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/Admin.master" AutoEventWireup="true" CodeFile="Country.aspx.cs" Inherits="AdminSide_Country" %>

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
        <h3>Country Details </h3>
    </div><br />
      <a href="AddCountry.aspx" class="btn btn-primary li-modal">Add</a><br /> <br />
      <table id="example" class="display compact " style="" >
          <thead>
              <tr>
                  <th> Edit  </th>
                   <th>Country</th>
                   <th>Image</th>

                    <th> Delete  </th> 
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  <td> <a href='EditCountry.aspx?Countryid=<%# Eval ("Countryid") %>' class=" fa fa-pencil-square-o modalEdit"  > </a> </td>
                  <td> <%# Eval("CountryName")%> </td>
                  <td><img src="../Images/<%# Eval("Image") %>" width="80px" height="80px" alt="Not Found" />
                  <td> <a href='Country.aspx?action=del&Countryid=<%# Eval ("Countryid") %>' class=" fa fa-trash"  > </a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
              <tr>
                   <th> Edit  </th>
                   <th>Country</th>
                   <th>Image</th>

                    <th> Delete  </th> 
              </tr>
          </tfoot>

          </table>  
          <div id="theModal" class="modal fade  text-center " role="dialog">
                        <div class="modal-dialog">
                          <div class="modal-content" >
                          </div>
                        </div>
                     
                       <script>
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



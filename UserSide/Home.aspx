<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="UserSide_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script>
     $(document).ready(function () {
         $("#homemenu").addClass("active");
     });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
div.polaroid {
  width: 250px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
  height:200px;
 
}

.polaroid:hover
{
     
   opacity:0.8;
   
}  
a 
{
    text-decoration:none;
    color:Black;
}
div.container {
  padding: 10px;
}
</style>
<div class="row" style="margin:auto" >
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            
                <div class="col-md-3" style="padding:50px;">
                    <div class="polaroid">
                        <a href="Ustudent.aspx?Countryid=<%# Eval("Countryid") %>">
                          <img src="../Images/<%# Eval("Image") %>" alt="Not Found" style="width:100%;height:150px">
                          <div class="container">
                            <p><b><%# Eval("CountryName") %></b></p>
                            </a>
                          </div>
                    </div>
                </div>
          
        </ItemTemplate>
    </asp:Repeater>
</div>
</asp:Content>


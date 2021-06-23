<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="UStudent.aspx.cs" Inherits="UserSide_UStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script>
    $(document).ready(function () {
        $("#GStudent").addClass("active");
    });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
div.polaroid {
  width: auto;
  box-shadow: 4px 8px 8px 4px rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
  height:auto;

}

.polaroid:hover
{
     
   opacity:0.8;
}
#d
{
    text-align:right;
    font-size:20px;
    width:auto;
}  

div.container {
  padding: 4px;
}

.err
{
 font-size:26px; 
 margin-left:50%;
 margin-top:120px; 
 color:Red;
 font-family:Cursive; 
}
</style>
    
<div class="row" style="margin:auto;min-height:400px" >
    <asp:Repeater ID="Repeater1" runat="server">

        <ItemTemplate>
            
                <div class="col-md-3" style="padding:50px;min-height:500px">
                    <div class="polaroid">
                          <img src="../Images/<%# Eval("Image") %>" alt="Not Found" style="width:70%;height:180px;padding-top :10px">
                          <div class="container">
                            <p><b><%# Eval("CountryName") %></b></p>
                            <p id="d"><%# getdate( Eval("Date").ToString()) %></p>
                             <h6 style="text-align:center"><%#  Eval("Description") %></h6>
                          </div>
                    </div>
                </div>
          
        </ItemTemplate>
    </asp:Repeater>
    <asp:Label ID="lblError" class="err" runat="server" Text=""></asp:Label>
</div>
</asp:Content>


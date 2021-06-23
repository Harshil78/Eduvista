<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="NewsFeed.aspx.cs" Inherits="UserSide_NewsFeed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script>
    $(document).ready(function () {
        $("#News").addClass("active");
    });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
div.polaroid {
  width: auto;
  <%--box-shadow: 4px 8px 8px 4px rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);--%>
  text-align: center;
  height:auto;
 border:1.5px solid #974478;
}
div.polaroid:hover
{
    box-shadow: 4px 8px 8px 4px #974478, 0 6px 20px 0 #974478;
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
    padding-right:6px;
}  

div.container {
  padding: 4px;
}

</style>
    
<div class="row" style="margin:auto;min-height:400px;" >
    <asp:Repeater ID="Repeater1" runat="server">

        <ItemTemplate>
            
                <div class="col-md-3" style="padding:40px;min-height:500px">
                    <div class="polaroid">
                    <a href="Image.aspx?Newsid=<%# Eval("Newsid") %>" class="li-modal"style="text-decoration:none;color:Black">
                     <p id="d"><%# Eval("NewsDate") %></p>
                          <img src="../Images/<%# Eval("Image") %>" alt="Not Found" style="width:90%;height:190px;padding:4px">
                          <div class="container">
                            <p><b><%# Eval("CountryName") %></b></p>
                           
                            
                          </div>
                           </a>
                    </div>
                   
                </div>
             
          
        </ItemTemplate>
    </asp:Repeater>
        <div id="theModal" class="modal fade   " role="dialog" >
                        <div class="modal-dialog modal-lg" style="background-color:transparent;">
                          <div class="modal-content" style="background-color:transparent;width:105%;text-align:left">
                          </div>
                        </div>
                     
                       <script>
                           $('.li-modal').on('click', function (e) {
                               e.preventDefault();
                               $('#theModal').modal('show').find('.modal-content').load($(this).attr('href'));
                           });

                      </script>
         </div> 
</div>
</asp:Content>


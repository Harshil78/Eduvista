<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="UResult.aspx.cs" Inherits="UserSide_UResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script>
     $(document).ready(function () {
         $("#Result").addClass("active");
     });
        </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
 div.polaroid {
      width: 450px;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    
      height:210px;
      }

.Ielts {
  list-style-type: disc;
  font-family:Cursive;
}

</style>
<div class="row" style="margin:auto;min-height:auto" >
  
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
            
                    <div class="col-md-4" style="padding:30px;">
                        <div class="polaroid"> 
                                <div class="col" > 
                                <span><%# getdate( Eval("ExamDate").ToString()) %></span>
                                <div><img src="../Images/<%# Eval("Image") %>" alt="Not Found"  style="width:auto;height:150px;margin-top:10px;padding:5px;float:left"></div>                         
                                     
                                     <div style=" padding-left :40% " class="col" >
                                            <p style="text-align:justify;font-size:18px;font-family:Cursive" ><%# Eval("Name") %></p>
                                            <hr />
                                            <ul class="Ielts" >
                                                    <li style="color:Red ">Overall:- <%#Eval("Overall") %></li>
                                                    <li>Listening:- <%#Eval("Listening") %></li>
                                                    <li>Reading:-  <%#Eval("Reading") %></li>
                                                    <li>Writing:-  <%#Eval("Writing") %></li>
                                                    <li>Speaking:- <%#Eval("Speaking") %></li>     
                                                </ul>

                                     </div>
                                      
                                </div>
                                
                        </div>
                        
                              
                        
                    </div>          
            </ItemTemplate>
        </asp:Repeater>
    
</div>
</asp:Content>


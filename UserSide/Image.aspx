<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Image.aspx.cs" Inherits="UserSide_Image" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>

<body>
      <form id="form1" runat="server">
<asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>


<asp:updatepanel ID="Updatepanel1" runat="server">
<ContentTemplate>
<div>
    
     <div class="modal-header">
            <h4 class="modal-tittle"></h4>
            <a href="#"  class="close" data-dismiss="modal" style="color:red">&times;</a>
        </div>
        <div class="modal-body" style="text-align:left">
            <div class="container" >
      
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <img src="../Images/<%# Eval("Image") %>" height="560px" width="800px" />
                    </ItemTemplate>
                </asp:Repeater>
                
                
                  
              
                
         </div>
        <div class="modal-footer">
             <button type="button" class="btn btn-danger " data-dismiss="modal">Close</button>
     </div>
    
     
    </div>
    </div>
    </ContentTemplate>
</asp:updatepanel>

    </form>
</body>
</html>

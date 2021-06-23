<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditResult.aspx.cs" Inherits="AdminSide_EditResult" %>

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
            <h4 class="modal-tittle">Edit Country</h4>
            <a href="#"  class="close" data-dismiss="modal">&times;</a>
        </div>
        <div class="modal-body" style="text-align:left">
            <div class="container" >
      
                
                    <div >
                            <asp:label ID="lblName" class="" runat="server" text="Name">Name:-</asp:label><br />
                             <asp:TextBox ID="TxtName"  placeholder="Enter Name" class="form-control" runat="server" Required></asp:TextBox><br />
                              
                               <asp:label ID="lblDate" class="" runat="server" text="Exam Date">Exam Date:-</asp:label><br />
                             <asp:TextBox ID="TxtDate"  type="Date" class="form-control" runat="server" Required></asp:TextBox><br />

                              <asp:label ID="lblOverall" class="" runat="server" text="Overall">Overall:-</asp:label><br />
                             <asp:TextBox ID="TxtOverall"  placeholder="Enter Overall Bands" class="form-control" runat="server" Required></asp:TextBox><br />

                              <asp:label ID="lblListening" class="" runat="server" text="Listening">Listening:-</asp:label><br />
                             <asp:TextBox ID="TxtListening"  placeholder="Enter Listening Bands" class="form-control" runat="server" Required></asp:TextBox><br />

                              <asp:label ID="lblReading" class="" runat="server" text="Reading">Reading:-</asp:label><br />
                             <asp:TextBox ID="TxtReading"  placeholder="Enter Reading Bands" class="form-control" runat="server" Required></asp:TextBox><br />

                              <asp:label ID="lblWriting" class="" runat="server" text="Writing">Writing:-</asp:label><br />
                             <asp:TextBox ID="TxtWriting"  placeholder="Enter Writing Bands" class="form-control" runat="server" Required></asp:TextBox><br />

                             <asp:label ID="lblSpeaking" class="" runat="server" text="Speaking">Speaking:-</asp:label><br />
                             <asp:TextBox ID="TxtSpeaking"  placeholder="Enter Speaking Bands" class="form-control" runat="server" Required></asp:TextBox><br />
                            
                               <asp:Image ID="Image1" runat="server" Width="150" Height="150" /><br /><br />

                             <asp:label ID="LblImage" class="" runat="server" text="Image">Image:-</asp:label><br />
                             <asp:FileUpload ID="ImageUpload"  runat="server" />
                            
                     </div>
                
                           <br />   
               <asp:Button ID="BtnEdit" class="form-control btn btn-success  "   runat="server" 
                        Text="Edit" onclick="BtnEdit_Click" />
              
                
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

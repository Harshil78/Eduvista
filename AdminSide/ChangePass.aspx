<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="AdminSide_ChangePass" %>

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
            <h4 class="modal-tittle">Change Password</h4>
            
            <a href="#"  class="close" data-dismiss="modal">&times;</a>
        </div>
        <div class="modal-body" style="text-align:left">
               <div class="Container">
                      
                      <asp:label ID="LblOldPassword"  runat="server" text="Old Password">Old Password:-</asp:label>
                         <asp:TextBox ID="TxtOldPass" TextMode="Password"  placeholder="Enter Old Password" class="form-control" runat="server" Required></asp:TextBox><br />
               
                
                          <asp:label ID="LblNewPassword"  runat="server" text="New Password">New Password:-</asp:label>
                             <asp:TextBox ID="TxtNewPass" TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" ToolTip="at least one number, one lowercase and one uppercase letter and one special character,at least six characters"  placeholder="Enter New Password" class="form-control" runat="server" Required></asp:TextBox><br />

                          <asp:label ID="LblConfirmPassword"  runat="server" text="Confirm Password">Confirm Password:-</asp:label>
                             <asp:TextBox ID="TxtCPass" TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  placeholder="Enter Confirm Password" class="form-control" ToolTip="at least one number, one lowercase and one uppercase letter and one special character,at least six characters" runat="server" Required></asp:TextBox><br />
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red" ErrorMessage="Not Match"  ControlToCompare="TxtNewPass" ControlToValidate="TxtCPass"></asp:CompareValidator>
                                   <asp:Button ID="BtnChangePass" 
                          class="form-control btn btn-success"  runat="server" 
                          Text="Change Password" onclick="BtnChangePass_Click" 
                           />
             

                 </div>
                 </div>
                 <div>
                            <br />
                         
              </div>
                
        
        <div class="modal-footer">
             <button type="button" class="btn btn-danger " data-dismiss="modal">Close</button>
     </div>
    
     
    </div>
    </ContentTemplate>
</asp:updatepanel>

    </form>
</body>
</html>

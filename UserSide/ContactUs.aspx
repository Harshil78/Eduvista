<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="UserSide_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script>
    $(document).ready(function () {
        $("#contactmenu").addClass("active");
    });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
<div class="container-fluid" style="margin-top:30px">
    <div class="row">
        <div class="col-md-6" >
             <iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
                                src='https://maps.google.com/maps?q=<%= Session["Location"] %>&hl=es;z=14&amp;output=embed'>
                        </iframe><br /><small>
                        <a href='https://maps.google.com/maps?q=<%= Session["Location"]%>&hl=es;z=14&amp;output=embed'    
                            style="color:#0000FF;text-align:left" target="_blank">See map bigger</a></small>
        </div> 
              <div class="col-md-4" style="text-align:center">
                    <h3 >Contact Us</h3>
                                <div class="form-group">
                                   
                                    <asp:TextBox ID="TxtName" class="form-control" placeholder="Enter your name" runat="server" required></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     <asp:TextBox ID="TxtEmail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required title="Please Enter Email In Proper Manner" class="form-control" placeholder="Enter your Email" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                   <asp:TextBox ID="TxtSub" class="form-control" placeholder="Enter your Subject" required runat="server"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <asp:TextBox ID="TxtMess" class="form-control" Rows="3"  TextMode="MultiLine" placeholder="Enter your Message" required runat="server"></asp:TextBox>
                                </div>
                                   <div class="form-group" style="text-align:right">
                                        <asp:Button ID="BtnSubmit" class="btn btn-danger" runat="server" 
                                            Text="Send Message" onclick="BtnSubmit_Click" ></asp:Button>
                                 </div>
                            </div>
    </div>
    
</div>
</asp:Content>


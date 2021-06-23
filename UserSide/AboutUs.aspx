<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="UserSide_AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script>
    $(document).ready(function () {
        $("#About").addClass("active");
    });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
h4
{
   font-size:22px;   
}
</style>
 <div class="container-fluid    mycontent">
        
       
        <center>
            <div style="margin-top:0%;padding-top:20px; "> 
            <p style="  font-size:17px;">Eduvista Institute is established in the year 2015, Our Coaching built its reputation with professional ethics to its students. 
                The coaching class is a best center of learing and provides knowledge and skills to students.<br /><b style="font-size:20px;font-family:Cursive">We Are The Beginning Of Your Global Career. </b>   </p>
            </div>
        </center>
         
            <div class="container-fluid row" style="margin-top:20px;font-size:6px">
            
                <div class="col-md-1" style="margin-top:20px;text-align:center">
                </div>

                <div class="col-md-2" style="margin-top:20px;text-align:center" >
                         <img src="../Images/student.jpg" style="border-radius:25px" height="96" width="96"/>
                        <h4>Limited Student Batch</h4>
                </div>
                <div class="col-md-2" style="margin-top:20px;text-align:center">
                         <img src="../Images/faculty.jpg" style="border-radius:25px" height="96" width="96"/>
                          <h4>Experienced Faculty</h4>
                </div>
                <div class="col-md-2" style="margin-top:20px;text-align:center">
                         <img src="../Images/learning2.jpg" style="border-radius:25px" height="96" width="96"/>
                         <h4>Regular Mock Test Exams</h4>
                </div>
                <div class="col-md-2" style="margin-top:20px;text-align:center">
                         <img src="../Images/Speak.jpg" style="border-radius:25px" height="96" width="96"/>
                         <h4>Regular Speaking Interview</h4>
                </div>
              
                <div class="col-md-2" style="margin-top:20px;text-align:center">
                         <img src="../Images/library1.jpg" style="border-radius:25px" height="96" width="96"/>
                          <h4>Latest Materials</h4>
                </div>
                <div class="col-md-1" style="margin-top:20px;text-align:center">
                </div>
               
            </div>

        </div>
    
</asp:Content>


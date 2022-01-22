<%-- 
    Document   : sign-up
    Created on : Apr 7, 2020, 11:03:14 AM
    Author     : ORUSOSO WAITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <script src="scripts/jquery-3.4.1.js" type="text/javascript"></script>
        <link href="styles/fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="styles/signUp-styling.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        <script type = "text/javascript">
         <!--
            // Form validation code will come here.
         //-->
      </script>   
    </head>
    <body>
        <header id="header1">
            <a href="index.jsp" id="none"> <h1 id="logo"><i class="fas fa-hospital" id="hospital"></i>
                    DOA<br><span class="size">Health System </span></h1></a><br/><br/><br/>
            <hr class="bridgeheader">
            <h1 class="header2">Create Your Account</h1>
            <p class="note">
                <b>Please note:</b> You'll need your <span class="doa"><b>DOA Clinic</b></span> 
                number to create your new account.
            </p>
            <p class="note">
                You must be 18 or older to create a Patient Online Services account. If you’re between 13 and 17, go to a DOA Clinic or DOA Clinic
                <BR/>Health System location with a parent or guardian to create your account.
                Parents must create caregiver accounts for patients under 12.
            </p><hr class="line">
            <h2 class="note1">Enter patient information</h2>
        </header>
        <form action="patient-signup" method="post" name = "myForm" class="form" onsubmit = "return validate();">
           
            <div>
                <label for="new-name"><b>First Name:</b></label>
                <input type="text" id="new-name" name="new-name" />
            </div><br><br>
           
            <div>
                <label for="new-names"><b>Last Name:</b></label>
                <input type="text" id="new-names" name="new-names" />
            </div><br><br>

            <div>
                <label for="new-email"><b>Email:</b></label>
                <input type="email" id="new-email" name="new-email" />
            </div><br><br>

            <div>
                <label for="new-Gender"><b>Gender:<b/></label>
                <label id="genders">
                    <input type="radio" value="male" name="gender-name" id="gender1"/>
                    Male
                </label><br/><br/>
                <label id="genderr">
                    <input type="radio" value="female" name="gender-name" id="gender2"/>
                    Female
                </label><br/>
            </div><br><br>

            <div>
                <label for="new-phone"><b>Phone:<b/></label>
                <input type="tel" id="new-phone" name="new-phone" />
            </div><br><br>
           
            <div>
                <label for="new-address"><b>Address:</b></label>
                <input type="textarea" id="new-address" name="new-address"/>
            </div><br><br>
            
            <div>
                <label><b>Birth Date:</b></label>
<!--                <input type="date" id="birthday" name="birthday">-->
<!--                    <input type="text" id="birthday" name="SelectedDate" readonly="readonly" />
                    <br />
                    <span id="lblError" style = "color:Red"></span>-->
<input type="date" id="birthday" name="dob">

            </div><br><br>

            
            <div>
                <label for="new-password"><b>Password:</b></label>
                <input type="password" id="new-password" name="new-password" />
            </div><br><br>

            <input type="submit" class="sign-up" value="Submit" id="button" />
        </form><br/>
        <section id="end"><br/>
            <hr class="bridges4">
            <footer>
                <p>&copy; 1998-2019  DOA Foundation for Medical Education and     Research(MFMER).All right reserved.</p>
            </footer>
        </section>
        <script type = "text/javascript">
 
       <!--Form validation code will come here.-->
      function validate() {
      
      var password = document.myform.password.value;
      
         if( document.myForm.new-name.value == "" ) {
            alert( "Please provide your name!" );
            document.myForm.new-name.focus() ;
            return false;
         }
         if( document.myForm.new-names.value == "" ) {
            alert( "Please provide your name!" );
            document.myForm.new-names.focus() ;
            return false;
         }
         if( document.myForm.new-email.value == "" ) {
            alert( "Please provide your Email!" );
            document.myForm.new-email.focus() ;
            return false;
         }
         if( document.myForm.new-phone.value == "" ) {
            alert( "Please provide your name!" );
            document.myForm.new-phone.focus() ;
            return false;
         }
         if( document.myForm.new-address.value == "" ) {
            alert( "Please provide your name!" );
            document.myForm.new-address.focus() ;
            return false;
         }
         
         if( password.length<6) {
            alert( "Password must be at least 6 characters long." );
           
            return false;
         }
         return true;
      }
      </script>
         <script>
                 var today = new Date();
var dob = new Date($("#birthdate").val());
var age = Math.floor((today-dob) / (365.25 * 24 * 60 * 60 * 1000));
if(age < 18)
{
alert("Age should be minimum 18");
}
</script>
         
<!--<script type="text/javascript">
    $(function () {
        $("#birthdate").datepicker({
            changeMonth: true,
            changeYear: true,
            showOn: 'button',
            buttonImageOnly: true,
            buttonImage: 'images/calendar.gif',
            dateFormat: 'dd/mm/yy',
            yearRange: '1900:+0',
            onSelect: function (dateString, txtDate) {
                ValidateDOB(dateString);
            }
        });
    });
    function ValidateDOB(dateString) {
        var lblError = $("#lblError");
        var parts = dateString.split("/");
        var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
        var dtCurrent = new Date();
        lblError.html("Eligibility 18 years ONLY.")
        if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 18) {
            return false;
        }
 
        if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 18) {
 
            //CD: 11/06/2018 and DB: 15/07/2000. Will turned 18 on 15/07/2018.
            if (dtCurrent.getMonth() < dtDOB.getMonth()) {
                return false;
            }
            if (dtCurrent.getMonth() == dtDOB.getMonth()) {
                //CD: 11/06/2018 and DB: 15/06/2000. Will turned 18 on 15/06/2018.
                if (dtCurrent.getDate() < dtDOB.getDate()) {
                    return false;
                }
            }
        }
        lblError.html("");
        return true;
    }
</script>-->
    </body>
</html>

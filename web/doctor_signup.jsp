<%-- 
    Document   : doc_signup
    Created on : Sep 28, 2020, 4:17:19 PM
    Author     : ORUSOSO WAITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="styles/doc_signup.css" rel="stylesheet" type="text/css"/>
        <link href="styles/fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header id="header1">
            <a href="index.jsp" id="none"> <h1 id="logo"><i class="fas fa-hospital" id="hospital"></i>
                    DOA<br><span class="size">Health System </span></h1></a><br/><br/><br/>
            <hr class="bridgeheader">
            <h1 class="header2">Create Your Account</h1>
<!--            <p class="note">
                <b>Please note:</b> You'll need your <span class="doa"><b>DOA Clinic</b></span> 
                number to create your new account.
            </p>
            <p class="note">
                You must be 18 or older to create a Patient Online Services account. If you’re between 13 and 17, go to a DOA Clinic or DOA Clinic
                <BR/>Health System location with a parent or guardian to create your account.
                Parents must create caregiver accounts for patients under 12.
            </p><hr class="line">-->
            <h2 class="note1">Enter Your information</h2>
        </header>
        <form action="doctor_signup" method="post" class="form" enctype="multipart/form-data">
            <c:if test="${loginNameError eq true}">
                <p class="error">Name is required</p>
                <c:remove var="loginNameError" />
            </c:if>

            <div>
                <label for="new-name"><b>First Name:</b></label>
                <input type="text" id="new-name" name="new-name" />
            </div><br><br>
            <c:if test="${loginNameError eq true}">
                <p class="error">Name is required</p>
                <c:remove var="loginNameError" />
            </c:if>
            <div>
                <label for="new-names"><b>Last Name:</b></label>
                <input type="text" id="new-names" name="new-names" />
            </div><br><br>

            <c:if test="${emailTaken eq true}">
                <p class="error">An account with this email already exists</p>
            </c:if>
            <c:if test="${loginEmailError eq true}">
                <p class="error">Email is required</p>
                <c:remove var="loginEmailError" />
            </c:if>
            <div>
                <label for="new-email"><b>Email:</b></label>
                <input type="email" id="new-email" name="new-email" />
            </div><br><br>

            <c:if test="${loginGenderError eq true}">
                <p class="error">Gender is required</p>
                <c:remove var="loginGenderError" />
            </c:if>
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
            
            <c:if test="${loginPhoneError eq true}">
                <p class="error">Phone is required</p>
                <c:remove var="loginPhoneError" />
            </c:if>
            <div>
                <label for="new-phone"><b>Phone:<b/></label>
                <input type="tel" id="new-phone" name="new-phone" />
            </div><br><br>
            <c:if test="${loginAddressError eq true}">
                <p class="error">Address is required</p>
                <c:remove var="loginAddressError" />
            </c:if>
            <div>
                <label for="new-address"><b>Address:</b></label>
                <input type="textarea" id="new-address" name="new-address"/>
            </div><br><br>
            
      <label>Specialized:<label/>
  <select class="box" name="speciality">
      
      <option>Anesthesiologists</option>
      <option>Cardiologists</option>
      <option>Oncologists</option>
      <option>Dermatologists</option>
      <option>Endocrinologists</option>
      <option>Family Physicians</option>
      <option>Gastroenterologists</option>
      <option>Hematologists</option>
      <option>Internists</option>
      <option>Neurologists</option>
   
    </select>
      <div/><br/><br/>
             <div>
                 <label for="quantity">Experience:</label>
  <input type="number" id="quantity" name="quantity" min="5" max="30">
  <div/><br/><br/>
 
            <c:if test="${loginBirthdateError eq true}">
                <p class="error">Birth Date is required</p>
                <c:remove var="loginBirthdateError" />
            </c:if>
            <div>
                <label><b>Birth Date:</b></label>
               <input type="date" id="birthday" name="birthday">
            </div><br><br>
           
            <c:if test="${loginPasswordError eq true}">
                <p class="error">Password is required</p>
                <c:remove var="loginPasswordError" />
            </c:if>
            <div>
                <label for="new-password"><b>Password:</b></label>
                <input type="password" id="new-password" name="new-password" />
            </div><br><br>

            
            <c:if test="${imageError eq true}">
                <p class="error">Image is required</p>
                <c:remove var="loginAddressError" />
            </c:if>
            <div>
                <label for="new-address"><b>Image upload:</b></label>
                <input type="file" name="image" valud="upload" id="new-image">
            </div><br><br>
             <div>
            <input type="submit" class="sign-up" value="Sign Up" id="button"/>
        </form><br/>
        <section id="end"><br/>
            <hr class="bridges4">
            <footer>
                <p>&copy; 1998-2019  DOA Foundation for Medical Education and     Research(MFMER).All right reserved.</p>
            </footer>
        </section>
    </body>
</html>


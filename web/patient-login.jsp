<%-- 
    Document   : login
    Created on : Apr 2, 2020, 11:51:37 AM
    Author     : ORUSOSO WAITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ page isThreadSafe="false"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="styles/login-styling.css" rel="stylesheet" type="text/css"/>
        <link href="styles/fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>

        <title>JSP Page</title>
    </head>
    <body>
        <main id="login">
            <a href="index.jsp" id="none"> <h1 id="logo"><i class="fas fa-hospital" id="hospital"></i>
                    DOA<br><span class="size">Health System </span></h1></a> <br/>
            <p class="logo1"><b>One account for all DOA Clinic services</b><br/>
                <span class="logo2">Sign in to Patient Online Services</span> </p>
            <section class="border">
                <form action="patient-login" method="post">
                   
                    <c:if test="${loginEmailError eq true}">
                        <p class="error" style="color:red">Email is required</p>
                        <c:remove var="loginEmailError" />
                    </c:if>
                    <div>
                        <label for="patient-email" class="email">Email</label><br/>
                        <input type="email" id="patient-email" name="patient-email" placeholder="Email Required" />
                    </div><br/>

                    <c:if test="${loginPasswordError eq true}">
                        <p class="error" style="color:red">Password is required</p>
                        <c:remove var="loginPasswordError" />
                    </c:if>
                    <div>
                        <label for="patient-password" class="email">Password</label><br/>
                        <input type="password" id="patient-password" 
                               name="patient-password" placeholder="Password Required" />
                    </div><br/>
                    <!--                    <form action="view_appointment.jsp" method="get">
                                   <input type="submit" value="Login" id="button" /><br/><br/><br/>
                                </form>-->

                    <form action="view_appointment.jsp" method="get">
                        <button id="button">Login </button><br/><br/><br/>
                    </form>


                    <a href="patient-signup.jsp" class="creating">Create your Account</a><br/>
                    <a href="" class="creating">Get help Logging in</a><br/>

                </form>
            </section>
        </main><br/>
        <section id="end">
            <p>
                Any use of this site constitutes your agreement to the Terms and  Conditions and Privacy Policy linked below<br/><br/>
                <a href="#">Terms and Conditions</a>
                <a href="#">Privacy Policy</a>
            </p>
            <p>DOA Clinic is a nonprofit organization and proceeds from Web advertising help support our mission. DOA Clinic does not endorse any of the third party products and<br/> services advertised.
            </p>
            <p>A single copy of these materials may be reprinted for noncommercial personal use only. "DOA Clinic," "DOA Clinic.org," "DOA Clinic Healthy Living," and the triple-shield <br/> DOA Clinic logo are trademarks of DOA Foundation for Medical Education and Research.
            </p><hr class="bridges4">
            <footer>
                <p>&copy; 1998-2019  DOA Foundation for Medical Education and     Research(MFMER).All right reserved.</p>
            </footer>
        </section>
    </body>
</html>

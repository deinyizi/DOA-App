<%-- 
    Document   : appointment
    Created on : Mar 26, 2020, 10:28:49 AM
    Author     : ORUSOSO WAITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
         <link href="styles/fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="styles/headerstyles.css" rel="stylesheet" type="text/css"/>
        <link href="styles/appointment-styling.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
         <c:import url="header.jsp" />
        <div id="resize">

            <!-- ABOUT THE Appointment THE PATIENT IS ABOUT TO BOOK -->
            <h1 id="appointment">Appointments at DOA </h1>
            <p>
                DOA(Doctor online appointment) works with hundreds of insurance companies and is an in-network provider for millions of people.In most cases, DOA doesnt require a physician referral.Some insurers require referrals, or may have additional requirements for certain medical care.All appoinmtnets are prioritized on the basis of medical need, and the team members who will care for you or your family have the expertise and skills to provide the best care possible.
            <hr class="bridges">
            </p>

            <h2>Telephone requests</h2>
            <p><b><span id="country">DOA Clinic in Arizona</span></b><br/>
                <span id="numbers">800-446-2279</span>(toll-free)<br/>
                8 a.m to 5 p.m. Moutain Standard Time,<br/>Monday through Friday
            </p>

            <p><b><span id="country">DOA Clinic in Florida</span></b><br/>
                <span id="numbers"> 230-478-2279</span>
                8 a.m to 5 p.m. Eastern Time,<br/>Monday through Friday
            </p>

            <p><b><span id="country">DOA Clinic in Florida</span></b><br/>
                <span id="numbers">40846-8979</span>
                8 a.m to 5 p.m. Central Time,<br/>Monday through Friday
            </p>

            <p><b><span id="country">DOA Clinic in Florida</span></b><br/>
                <span id="numbers">800-446-KID</span>
                8 a.m to 5 p.m.Central Time,<br/>Monday through Friday
            <hr class="bridges">
            </p>
            <h3>Online requests</h3>

            <p>
                Request an appointment using our secured online form. Our goal is to contact you by phone within three bussiness days to review your medical and finacial information.DOA(Doctor online appointment) works with hundreds of insurance companies and is an in-network provider for millions of people.In most cases, DOA doesnt require a physician referral.Some insurers require referrals, or may have additional requirements for certain medical care.All appoinmtnets are prioritized on the basis of medical need, and the team members who will care for you or your family have the expertise and skills to provide the best care possible.
            </p>

            <!-- FORM FOR LINKING THE BUTTON YOU CLICKED -->
            <form action="login.jsp" method="get">
                <button>Request appointment</button><hr class="bridges">
            </form>

            <h2>Referring a patient</h2>

            <p>Physicians may refer a patient or arrange a consultation by pgone or use DOA Clinic's online services for referring physician.DOA(Doctor online appointment) works with hundreds of insurance companies and is an in-network provider for millions of people.In most cases, DOA doesnt require a physician referral.Some insurers require referrals, or may have additional requirements for certain medical care.All appoinmtnets are prioritized on the basis of medical need, and the team members who will care for you or your family have the expertise and skills to provide the best care possible.
            </p><hr class="bridges">

            <h2>Federal Civil Rights Postings</h2>

            <p>DOA Clinic is an equal opportunity employer and services provider.Review our Civil Rights postings in any of these languages.</p><hr class="bridges">

            <!-- FINDING MORE ABOUT AN Appointment -->
            <section id="banner">
                <a href="#">REQUEST APPOINTMENT</a>
                <a href="contact.html">CONTACT US</a>
                <a href="#">ABOUT DOA CLINIC</a>
                <a href="#">ABOUT THIS SITE</a><hr/>
            </section>

            <!-- FOOTER -->
            <section id="end">
                <p>
                    Any use of this site constitutes your agreement to the Terms and  Conditions and Privacy Policy linked below<br/><br/>
                    <a href="#">Terms and Conditions</a>
                    <a href="#">Privacy Policy</a>
                </p>
                <p>DOA Clinic is a nonprofit organization and proceeds from Web advertising help support our mission. DOA Clinic does not endorse any of the third party products and services advertised.
                </p>
                <p>A single copy of these materials may be reprinted for noncommercial personal use only. "DOA Clinic," "DOA Clinic.org," "DOA Clinic Healthy Living," and the triple-shield Mayo Clinic logo are trademarks of DOA Foundation for Medical Education and Research.
                </p><hr class="bridges2">
                <footer>
                    <p>&copy; 1998-2019  DOA Foundation for Medical Education and     Research(MFMER).All right reserved.</p>
                </footer>
            </section>
        </div>
    </body>
</html>

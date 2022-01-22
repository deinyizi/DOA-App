<%-- 
    Document   : international-services
    Created on : Mar 30, 2020, 11:26:47 AM
    Author     : ORUSOSO WAITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="styles/headerstyles.css" rel="stylesheet" type="text/css"/>
        <link href="styles/fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="styles/international-styling.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="header.jsp" />
        <section id="international">
            <p class="header1">Departments and Centers<br/><span class="header2"><b>International Services at Mayo Clinic Print</b></span></p>
            <h2 class="header3">Requesting an Appointment</h2>
            <p class="bold">
                International patients can request an appointment at any Mayo Clinic location with the online form (below).
                <br/>A representative from one of Mayo's international appointment offices will respond to your request
                <br/>within three business days.
            </p>
            <p class="bold">
                In most cases, a physician referral is not necessary to set up an appointment.
                <br/>Many patients schedule their own appointments at Mayo Clinic.
            </p>
            <p class="bold">
                Patients or their physicians also may request an appointment by email, phone or fax.Patients in the <span class="country1">United Kingdom</span> may contact<br/> the London clinic. For patients in <span class="country">Canada</span>,
              <span class="country1">Colombia</span>,<span class="country1">0Ecuador</span>, <span class="country1">El Salvador</span>,<span class="country1">Guatemala</span> ,   
                <span class="country1">Honduras</span> , <span class="country1">Mexico</span> , <span class="country1">Panama</span>  <br/>and <span class="country1">Peru</span>,
               Mayo Clinic offers additional appointment assistance through an experienced local contact.
            </p>
            <p class="bold">
                Arabic-speaking representatives are available 9 a.m. to 6 p.m. UTC + 4,<br/> Sunday through Thursday.
            </p>
            <P class="bold">
                +971 800 0320877 (toll-free)
            </P>
            <p class="bold">
                Mandarin-speaking representatives are available 8 a.m. to 5 p.m. GMT + 8, Monday through Friday.
            </p>
            <p class="bold">
                Phone: +86 (10) 53875768<br/>
                Phone: +86 4008427533 (toll-free)
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
            </p>
            <h2 class="header4">Required information</h2>
            <p>When arranging an appointment, please provide:</p>
            <ul class="list">
                <li>the patient's name as it appears on the passport (last, first, middle)</li>
                <li>patient's gender</li>
                <li>patient's address</li>
                <li>patient's date of birth</li>
                <li>direct patient telephone number</li>
                <li>patient's email address (if available)</li>
                <li>a brief explanation of the current medical problem (in English)</li>
                <li>the preferred date of appointment</li>
                <li>whether the patient will need an interpreter, and if so, what language</li>
            </ul>
            <h2 class="header4">Efficient scheduling</h2>
            <p class="bold">
                In most cases, Mayo Clinic doctors provide both diagnosis and treatment within the same patient visit.
                <br/>Doctors usually can report diagnostic test results to patients one or two days after testing is completed. 
                <br/>The schedule of appointments for tests, physician consultation and treatment can often be compressed into<br/> a short period for international patients. 
                This means less time away from home, <br/>less expense and more efficient use of patients' and family members' time.
            </p>
        </section>
        <h2 class="headerr">Other Topics in Departments & Centers</h1>
        <div id="borders">
            <div class="medical"><b>Doctors & Medical Staff</b></div>
            <div class="services"><b>Medical Department & Ceneter</b></div>
            <div class="services"><b>International Services</b></div>
            <div class="services"><b>About DOA Clinic</b></div>
            <!-- <div class="services"><b>Contact Us</b></div> -->
        </div><hr class="bridges3">
        <section id="banner">
            <a href="#">REQUEST APPOINTMENT</a>
            <a href="contact.html">CONTACT US</a>
            <a href="#">ABOUT DOA CLINIC</a>
            <a href="#">ABOUT THIS SITE</a>
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
                <p>&copy; 1998-2019  DOA Foundation for Medical Education and Research(MFMER).All right reserved.</p>
            </footer>
        </section>
    </body>
</html>

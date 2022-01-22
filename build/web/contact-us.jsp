<%-- 
    Document   : contactUs
    Created on : Mar 26, 2020, 10:29:56 AM
    Author     : ORUSOSO WAITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="styles/contact-styling.css" rel="stylesheet" type="text/css"/>
       <link href="styles/fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="styles/headerstyles.css" rel="stylesheet" type="text/css"/>
          <title>JSP Page</title>
    </head>
    <body>
 <c:import url="header.jsp" />
        <!-- DOA CONTACT -->
        <h3>About DOA Clinic</h3>
        <h1 class="header1">Addresses and phone numbers</h1>
        <h2>Contact DOA Clinic</h2>
        <p id="city">
            <a href="#">Arizona - Scottsdale/Phoenix</a><br/>
            <a href="#">Florida - Jacksonville</a><br/>
            <a href="#">Minnesota - Rochester</a><br/>
            <a href="#">Staff phone and email directories</a><br/>
            <a href="#">Electronic contact form</a><br/> 
        </p>

        <!-- CONATCT INFO -->
        <h2>Arizona - Scottsdale/Phoenix</h2>
        <span class="header">DOA Clinic</span>
        <p>13400 E.Shea Blvd.<br/>Scottsdale.AZ 85259</p>
        <table id="table">
            <caption></caption>
            <tr>
                <th scope="col">Contact</th>
                <th scope="col">Number</th>
            </tr>
            <tr>
                <td>General number</td>
                <td>090-9487-291</td>
            </tr>
            <tr class="insuapp">
                <td><a href="hospital-appointment.html">Appointment Office</a></td>
                <td >040-9487-261<br/>
                    <span class="insuphone">(toll-free outside Phoenix)</span>
                </td>
            </tr>
            <tr class="insurance">
                <td>Insurance and billing</td>
                <td>0200-9487-261<br/>
                    0800-2187-261
                    <span class="insuphone">(toll-free outside Phoenix)</span>
                </td>
            </tr>
            <tr class="patient">
                <td>International Patient Center</th>
                <td>450-8920-1290</th>
            </tr>
            <tr>
                <td>Medical records requests<br/>(Arizona patients only)</td>
                <td class= "record">190-3920-1920</td>
            </tr>
            <tr>
                <td>Medical records request fax<br/> for Arizona</td>
                <td>890-2738-1828</td>
            </tr>
        </table><br>
        <span class="header"><b>DOA Clinic</b></span>
        <p>13400 E.Shea Blvd.<br/>Scottsdale.AZ 85259</p>

        <table id="table">
            <caption></caption>
            <tr>
                <th scope="col">Contact</th>
                <th scope="col">Number</th>
            </tr>
            <tr>
                <td>General number</td>
                <td class="record">090-9487-291<br/>
                    090-9487-291
                    <span class="insuphone">(toll-free outside Phoenix)</span>
                </td>
            </tr>
            <tr>
                <td>Scottsdale/Phoenix<br/>Scottsdale Office of Patient<br/>
                    Experience</td>
                <td class="record">237-74638-378</td>
            </tr>
            <tr>
                <td>Phoenix Office of Patient<br/>
                    Experience</td>
                <td  class="record">672-374-9273</td>
            </tr>
        </table>

        <h2>Florida - Jacksonville</h2>
        <span class="header">DOA Clinic</span>
        <p>San Pablo Road<br/>Jacksonville.AZ 85259</p>
        <table id="table">
            <caption></caption>
            <tr>
                <th scope="col">Contact</th>
                <th scope="col">Number</th>
            </tr>
            <tr>
                <td>General number</td>
                <td class="record">090-9487-291<br/>
                    090-9487-291
                </td>
            </tr>
            <tr class="insuapp">
                <td><a href="hospital-appointment.html">Appointment Office</a></td>
                <td >040-9487-261
                    <span class="insuphone">(toll-free outside Phoenix) </span>
                </td>
            </tr>
            <tr>
                <td>Appointment Office fax</td>
                <td>456-5768-200</td>
            </tr>
            <tr>
                <td>Billing</td>
                <td>230-458-2990</td>
            </tr>
            <tr>
                <td>Hospital-to-hospitals patient<br/>
                    transfers(Admission<br/> Transfer Center- 24 hours a day)
                </td>
                <td>475-39289-290</td>
            </tr>
            <tr class="insurance">
                <td>Insurance and billing</td>
                <td>0200-9487-261<br/>
                    0800-2187-261<br/>
                    <span class="insuphone">(toll-free outside Jacksonville) </span>
                </td>
            </tr>
            <tr class="patient">
                <td>International Patient Center</th>
                <td>450-8920-1290</th>
            </tr>
            <tr>
                <td>Medical records requests<br/>(Jacksonville patients only)</td>
                <td class= "record">190-3920-1920</td>
            </tr>
            <tr>
                <td>Medical records request fax<br/> for Jacksonville</td>
                <td>890-2738-1828
                </td>
            </tr>
        </table>

        <span class="header">DOA Clinic</span>
        <p>13400 E.Shea Blvd.<br/>Jacksonville.AZ 85259</p>
        <table id="table">
            <caption></caption>
            <tr>
                <th scope="col">Contact</th>
                <th scope="col">Number</th>
            </tr>
            <tr>
                <td>General number</td>
                <td class="record">090-9487-2000
                </td>
            </tr>
            <tr>
                <td>Jacksonville Office of Patient<br/> Experience</td>
                <td class="record">900-455-1000
                    <span class="insuphone">(toll-free outside Phoenix)</span>
                </td>
            </tr>
        </table>

        <h2>Minnesota - Rochester</h2>
        <span class="header">DOA Clinic</span>
        <p>890 San Pablo Road<br/>Jacksonville.AZ 85259</p>
        <table id="table">
            <caption></caption>
            <tr>
                <th scope="col">Contact</th>
                <th scope="col">Number</th>
            </tr>
            <tr>
                <td>General number</td>
                <td class="record">090-9487-2000
                </td>
            </tr>
            <tr class="insuapp">
                <td><a href="hospital-appointment.html">Appointment Office</a></td>
                <td >040-9487-261
                    <span class="insuphone">(toll-free outside Phoenix) </span>
                </td>
            </tr>
            <tr class="patient">
                <td>International Patient Center</th>
                <td>450-8920-1290</th>
            </tr>
            <tr>
                <td>Medical records requests<br/>(Arizona patients only)</td>
                <td class= "record">190-3920-1920</td>
            </tr>
            <tr>
                <td>Medical records request fax<br/> for Arizona</td>
                <td>890-2738-1828</td>
            </tr>
        </table><br/>

        <span class="header"><b>DOA Clinic Hospital,Saint Mary's</b></span>
        <p>including DOA Eugrnio litta Children's Hospital</p>
        <p>13400 E.Shea Blvd.<br/>Rochester.AZ 85259</p>
        <table id="table">
            <caption></caption>
            <tr>
                <th scope="col">Contact</th>
                <th scope="col">Number</th>
            </tr>
            <tr>
                <td>General number</td>
                <td>090-9487-291</td>
            </tr>
            <tr>
                <td>Rochester, MN Office of Patient Experience	</td>
                <td>507-284-4988 <span class="insuphone">(toll-free outside Phoenix)</span>
                </td>
            </tr>
        </table>

        <h2>Staff phone and email directories</h2>
        <p>Mayo Clinic doesn't have a public directory of staff phone numbers or email addresses.<br/> To contact someone, call the general telephone number at a Mayo Clinic location, and the operator will connect you.</p>
        <p>
            You may find biographical information about Mayo Clinic staff doctors in the <span class="staff">Doctors and Medical Staff pages.</span>
        </p>
        <p>
            You may view research profiles of Mayo Clinic faculty in the <span class="research">research staff directory.</span>
        </p>
        <h2>Electronic contact form</h2>
        <p><span class="contact">Contact Mayo Clinic about problems,</span>questions or comments.</p>
        <hr class="bridges">

        <!-- TOPIC YOU COULD FIND -->
        <h2>Other Topics in Departments & Centers</h1>
        <div id="borders">
            <div class="medical"><b>Doctors & Medical Staff</b></div>
            <div class="services"><b>Medical Department & Ceneter</b></div>
            <div class="services"><b>International Services</b></div>
            <div class="services"><b>About DOA Clinic</b></div>
            <!-- <div class="services"><b>Contact Us</b></div> -->
        </div><hr class="bridges2">
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

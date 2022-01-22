<%-- 
    Document   : education-doa
    Created on : Apr 1, 2020, 2:46:54 PM
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
        <link href="styles/medicine-education.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
         <c:import url="header.jsp" />
        <div id="resize">
            <!-- MAKING THE WHOLE PAGE LEFT ALIGN -->
            <h1> Patient & Visitor Guide</h1> 
            <div id="guide">
                <div>
                    <br>
                    <i class="far fa-calendar-alt" id="appointment"></i>
                    <h3>All about appointments</h3>
                    <p>
                        From referrals to insurance.Here's everything you need to know to request your first appointment.
                    </p>
                    <a href="hospital-appointment.html">Learn more about booking an appointments.</a>
                </div>
                <div>
                    <br/>
                    <i class="fas fa-suitcase" id="appointment"></i>
                    <h3>Plan for your trip</h3>
                    <p>
                        Traveling for medical care isn't easy.<br/>Know what to expect and get pratical tips to make your trip as easy and comfortable as possible
                    </p>
                    <p>For more info call <em>800-446-2279.</em></p>
                </div>

                <div>
                    <br>
                    <i class="fas fa-location-arrow" id="appointment"></i>
                    <h3>While you're here</h3>
                    <p>
                        Hotels? Restaurants? Maps? We've compiled the travel resources you needfor all three DOA Clinic campuses</p>
                    </p>
                    <ul>
                        <li>Arizona</li>
                        <li>Florida</li>
                        <li>Minnesota</li>
                    </ul>
                </div>
            </div>
            <br>	<br>
            <div id="guide">
                <div>
                    <i class="fas fa-dollar-sign" id="appointment"></i>
                    <h3>Insurance, billing & financial support</h3>
                    <p>
                        Use these resources for insurance and billing questions.Or contact Patient Account Services for help.
                    </p>
                    <p>For more info call <em>800-446-2279.</em></p>
                </div>

                <div>
                    <i class="far fa-calendar-alt" id="appointment"></i>
                    <h3>International Services</h3>
                    <p>
                        Every year, patients from more than 140 countries travel to DOA Clinic for care.<br/>International patients receive timely diagnosis and specialty care in a place designed to feel a little more like home.
                    </p>
                </div>

                <div>
                    <i class="fas fa-users" id="appointment"></i>
                    <h3>Patient Online Services</h3>
                    <p>
                        Access your medical records and communicate with your care team from favorite digital device.with your care team from favorite digital device.with your care team from favorite digital device.records and communicate with your care team from 
                    </p>
                </div>
            </div>
        </div>
        <!-- FOOTER LINK -->
        <section id="links"> 
            <div class="link1">
                <h2 class="follow">For Medical Professionals</h2>
                <a href="#">Find a doctor</a><br/>
                <a href="#">Refer a doctor</a><br/>
                <a href="#">View clincal trial</a><br/>

                <h2 class="follows">For Students</h2>
                <a href="#">View degree Program</a><br/>
                <a href="#">View admission requirement</a><br/>

                <h2>For DOA Clinic Faculty and Staff</h2>
                <a href="#">Find a doctor</a><br/>
                <a href="#">Find career opportunity</a><br/>

                <h2>For Media</h2>
                <a href="#">Media Request</a><br/>
            </div>
            <div class="link2">
                <h2 class="follow">For Researcher</h2>
                <a href="#">Find an expert in reserch area</a><br/>
                <a href="#">View DOA Clinic lab services</a><br/>

                <h2 class="follows">For International Patient</h2>
                <a href="#">View Open Positions</a><br/>
                <a href="#">Working at DOA Clinic</a><br/>

                <h2 class="follows">For International Patient</h2>
                <a href="#">Request an appointment</a><br/>
                <a href="#">Finaicial services</a><br/>
                <a href="#">International Offices</a><br/>

                <h2>Charitable Care & Finacial Assistances</h2>
                <a href="#">Arizona finacial assistances docoment</a><br/>
                <a href="#">Florida finacial assistances docoment</a><br/>
                <a href="#">Minnestoa finacial assistances docoment</a><br/>
            </div>
            <div id="link3">
                <div class="follow"><b>Follow DOA Clinic:</b></div>
                <div class="socialIcon">
                    <a href="https://www.facebook.com" target="blank" class="socialLink"><i class="fab fa-facebook"></i></a>
                </div>
                <div class="socialIcon">
                    <a href="https://www.instagram.com" target="blank" class="socialLink"><i class="fab fa-instagram"></i></a>
                </div >
                <div class="socialIcon">
                    <a href="https://www.twitter.com" target="blank" class="socialLink"><i class="fab fa-twitter"></i></a>
                </div>

                <h2>For International Patient</h2>
                <a href="#">Request an appointment</a><br/>
                <a href="#">Finaicial services</a><br/>
                <a href="#">International Offices</a><br/>

                <h2>Free E-News Letter</h2>
                <p>Get our free e-newsletter to stay <br/>up to date on the latest health <br/>information from experts at Mayo Clinic.</p>

                <h2 class="links1">Your Gift Holds Great Power</h2>
                <p>Make your tax-deductible gift today, <br/>and be a part of cutting-edge research <br/>and care that's changing medicine as it's known today.
                </p>
            </div>
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
            <p>A single copy of these materials may be reprinted for non commercial personal use only. "DOA Clinic," "DOA Clinic.org," "DOA Clinic Healthy Living," and the triple-shield Mayo Clinic logo are trademarks of DOA Foundation for Medical Education and Research.
            </p><hr class="bridges2">
            <footer>
                <p>&copy; 1998-2019  DOA Foundation for Medical Education and Research(MFMER).All right reserved.</p>
            </footer>
        </section>
    </body>
</html>

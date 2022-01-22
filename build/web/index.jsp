<%-- 
    Document   : index
    Created on : Mar 21, 2020, 5:19:37 PM
    Author     : ORUSOSO WAITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="styles/headerstyles.css" rel="stylesheet" type="text/css"/>
        <link href="styles/index-styling.css" rel="stylesheet" type="text/css"/>
        <link href="styles/fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <c:import url="header.jsp" />

        <!-- SLIDE-SHOW -->
        <div class="slideshow-container">
            <div class="mySlides fade">
                <div class="numbertext">1 / 7</div>
                <img src="doc1.jpg" style="width:100%">
                <div class="text">Caption Text</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">2 / 7</div>
                <img src="doc2.jpg" style="width:100%">
                <div class="text">Caption Two</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">3 / 7</div>
                <img src="doc3.jpg" style="width:100%">
                <div class="text">Caption Three</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">4 / 7</div>
                <img src="doc4.jpg" style="width:100%">
                <div class="text">Caption Four</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">5 / 7</div>
                <img src="doc5.jpg" style="width:100%">
                <div class="text">Caption Five</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">6 / 7</div>
                <img src="doc6.jpg" style="width:100%">
                <div class="text">Caption Six</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">7 / 7</div>
                <img src="doc7.jpg" style="width:100%">
                <div class="text">Caption Seven</div>
            </div>
        </div>
        <br>

        <!-- DOT -->
        <div style="text-align:center">
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
        </div>
        <section id="subjects">
            <h2>Why Choose DOA Clinic<hr class="bridges"></h2>
            <div>
                <div class="subject">
                    <div class="subject-icon fa-stack fa-2x">
                        <i class="fas fa-circle fa-stack-2x"
                           style="color: black;"></i>
                        <i class="fas fa-stethoscope fa-stack-1x fa-inverse"></i>					
                    </div>
                    <h1>More experience</h1>
                    <p class="subject-name">
                        Every year, more than a million people come to Mayo Clinic for care. Our highly specialized experts are deeply experienced in treating rare and complex conditions.
                    </p>
                </div>
                <div class="subject">
                    <div class="subject-icon fa-stack fa-2x">
                        <i class="fas fa-circle fa-stack-2x"
                           style="color: black;"></i>
                        <i class="fas fa-male fa-stack-1x fa-inverse"></i>					
                    </div>
                    <h1>The right answers</h1>
                    <p class="subject-name">
                        Getting effective treatment depends on identifying the right problem. In a recent study, 88 percent of patients who came to Mayo Clinic for a second opinion received a new or refined diagnosis.
                    </p>
                </div>
                <div class="subject">
                    <div class="subject-icon fa-stack fa-2x">
                        <i class="fas fa-circle fa-stack-2x"
                           style="color: black;"></i>
                        <i class="fas fa-search-plus fa-stack-1x fa-inverse"></i>					
                    </div>
                    <h1>Seamless care</h1>
                    <p class="subject-name">
                        At Mayo Clinic, every aspect of your care is coordinated and teams of experts work together to provide exactly the care you need. What might take months elsewhere can often be done in days here.
                    </p>
                </div>
                <div class="subject">
                    <div class="subject-icon fa-stack fa-2x">
                        <i class="fas fa-circle fa-stack-2x"
                           style="color: black;"></i>
                        <i class="fas fa-stethoscope fa-stack-1x fa-inverse"></i>					
                    </div>
                    <h1>Unparalleled expertise</h1>
                    <p class="subject-name">
                        Mayo Clinic experts are some of the best in the world. In the U.S. News & World Report rankings of top hospitals, Mayo Clinic is consistently ranked among the top hospitals in the nation.
                    </p>
                </div>
            </div>
        </section>

		   <!-- DOA DOCTORS -->
			 <h2 id="docs">DOA Doctors <hr class="bridges"></h2>
				<section id="outside">
							<div class="container">
								<img src="single2.jpg" alt="A Doctor" class="image">
								<div class="overlay">My Name is Queen Grace<br/> I am a Dermatologists</div>
							</div>
							
							<div class="container">
								<img src="single3.jpg" alt="A Doctor" class="image">
								<div class="overlay">My Name is John Angle<br/> I am an Endocrinologists</div>
							</div>
							<div class="container">
								<img src="single1.jpg" alt="A Doctor" class="image">
								<div class="overlay">My Name is Brace Sdtun <br/> I am a Gastroenterologists</div>
							</div>
							<div class="container">
								<img src="single4.jpg" alt="A Doctor" class="image">
								<div class="overlay">My Name is Treasure Grille<br/> I am an Otolaryngologists</div>
							</div>
							<div class="container">
								<img src="single5.jpg" alt="A Doctor" class="image">
								<div class="overlay">My Name is Johnson Jogn<br/> I am a Pathologists</div>
							</div>
							<div class="container">
								<img src="single7.jpg" alt="A Doctor" class="image">
								<div class="overlay">My Name is Tressy Brooken<br/> I am a Pediatricians</div>
							</div>
					</section>
        <!-- DOA HOSPITAL LOACTIONS -->
        <div id="disease">
            <h1>DOA Clinic Locations</h1><hr>
        </div>
        <section id="location">
           <div class="pic">
                <img src="hosp1.jpg" alt="Location" /> 
                <p class="picloc"><b>DOA Clinic Healthcare, located in London
</b></p>
            </div>
            <div class="pic">
                <img src="hosp5.jpg" alt="Location" /> 
                <p class="picloc"><b>Mayo Clinic's campus in Arizona
</b></p>
            </div>
            <div class="pic">
                <img src="hosp6.jpg" alt="Location" /> 
                <p class="picloc"><b>Mayo Clinic's campus in Florida</b></p>
            </div>
            <div class="pic">
                <img src="hosp7.jpg" alt="Location" /> 
                <p class="picloc"><b>Mayo Clinic's campus in Minnesota</b></p>
            </div>
        </section>
        <!-- DOA FOOTER -->
        <section id="links"> 
            <div class="link1">
                <h2 class="follow">For Medical Professionals</h2>
                <a href="#">Find a doctor</a><br/>
                <a href="#">Refer a doctor</a><br/>
                <a href="#">View clinical trial</a><br/>

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

        <!-- DOA FOOTER -->
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
        <!-- JAVA-SCRIPT FOR SLIDE-SHOW -->
        <script>
            var slideIndex = 0;
            showSlides();

            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) {
                    slideIndex = 1
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                setTimeout(showSlides, 2000); // Change image every 2 seconds
            }
        </script>

    </body>
</html>

<%-- 
    Document   : patient_details styling
    Created on : Sep 28, 2020, 7:44:08 PM
    Author     : ORUSOSO WAITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/headerstyles.css" rel="stylesheet" type="text/css"/>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="styles/details-styling.css" rel="stylesheet" type="text/css"/>
        <link href="styles/fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>
        <title>Patient Details</title>
    </head>
    <body>
        <c:import url="header.jsp" />
        <h1 class="welcome">Welcome to your DOA profile </h1>
         <a class="logout" href="index.jsp"><b>Logout</b></a
     <section id="border">
        <h2 class="detailsname">${loggedInPatient.name} login</h2>
        <section id="details">
            <table border="1" id="table">
                <tr>
                    <th class="column">First Name:</th>
                    <td>${loggedInPatient.name}</td>
                </tr>
                <tr>
                    <th class="column">Last Name:</th>
                    <td>${loggedInPatient.lastName}</td>
                </tr>
                <tr>
                    <th class="column">Email:</th>
                    <td>${loggedInPatient.email}</td>
                </tr><tr>
                    <th class="column">Address:</th>
                    <td>${loggedInPatient.address}</td>
                </tr>
                <tr>
                    <th class="column">Phone:</th>
                    <td>${loggedInPatient.phone}</td>
                </tr>
                <tr>
                    <th class="column">Date Of Birth:</th>
                    <td>${loggedInPatient.dateOfBirth}</td>
                </tr>
            </table>
        </section>
        
          <div class="detaiils2">
              <h3 class="view"><b>View Your Appointment</b></h3>              
              <ul class="list">
              <c:forEach items="${patientAppointments}" var="appointments">
                  <li> <span class="info2">You Have An Appointment With Dr. ${appointments.doctorName} (${appointments.doctorSpeciality}) at <span class=dates> <b>${appointments.appointmentDateTime}</b></span></span>
               
              </c:forEach>
              <ul/>
             
             
          </div>
       <div class="histo">
           <h3 class="view"><b>History</b></h3>
           <ul class="list">
                  <li> <span class="info2">You Have An Appointment With  DR (name)</span>
              <ul/>
       </div> <hr class="bridges2">
 
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

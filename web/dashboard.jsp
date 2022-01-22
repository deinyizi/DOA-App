<%-- 
    Document   : doctor_dashboard
    Created on : Sep 28, 2020, 5:40:25 PM
    Author     : ORUSOSO WAITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/headerstyles.css" rel="stylesheet" type="text/css"/>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="styles/doc_dashboard_styling.css" rel="stylesheet" type="text/css"/>
        <link href="styles/fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
         <c:import url="header.jsp" />
         <a class="logout" href="index.jsp"><b>Logout</b></a>
         <section id="border">
       <h2 class="detailsname">${loggedInDoctor.name} login</h2>
      <section id="details">
         
            <table border="1" id="table">
                <tr>
                    <th class="column">Name:</th>
                    <td>${loggedInDoctor.name}</td>
                </tr>
                <tr>
                    <th class="column">Last Name:</th>
                    <td>${loggedInDoctor.lastName}</td>
                </tr>
                <tr>
                    <th class="column">Email:</th>
                    <td>${loggedInDoctor.email}</td></td>
                </tr><tr>
                    <th class="column">Address:</th>
                    <td>${loggedInDoctor.address}</td>
                </tr>
                <tr>
                    <th class="column">Phone:</th>
                    <td>${loggedInDoctor.phone}</td>
                </tr>
                <tr>
                    <th class="column">Date Of Birth:</th>
                    <td>${loggedInDoctor.dateOfBirth}</td>
                </tr>
                
            </table>
        
        </section>
        
          <div class="detaiils2">
              <h3 class="view"><b>View Your Appointment</b></h3>
              <ul class="list">
                  
                  <c:forEach items="${appointments}" var="appointment"> 
                      
                  <li> <span class="info2">
                          ${appointment.patientName} Has An Appointment With You At <span class="dates"> <b>${appointment.appointmentDateTime}</b></span></span>
                       
                  </li> 
                  
                  </c:forEach>
                     
              <ul/>
             
             
          </div>
       <div class="histo">
           <h3 class="view"><b>History</b></h3>
           <ul class="list">
                  <li> <span class="info2">(patient name) Has An Appointment With You</span>
              <ul/>
       </div><hr class="bridges2">
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

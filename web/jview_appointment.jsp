<%-- 
    Document   : view_appointment
    Created on : Sep 15, 2020, 8:42:25 PM
    Author     : ORUSOSO WAITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="styles/view_appointment.css" rel="stylesheet" type="text/css"/>
        <link href="styles/headerstyles.css" rel="stylesheet" type="text/css"/>
         <link href="styles/fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
      <c:import url="header.jsp" />
      <h2 class="detailsname">Book Appointment</h2>
      <section id="appoint">
          
            <c:if test="${invalidAppointment eq true}">
                <script>
                    alert("Invalid Appointment Time");
                </script>
                <c:remove var="invalidAppointment" />
            </c:if>  
            <c:if test="${alreadyBooked eq true}">
                <script>
                    alert("Appointment Time Booked already");
                </script>
                <c:remove var="alreadyBooked" />
            </c:if> 
            <c:if test="${bookingSucess eq true}">
                <script>
                    alert("Appointment Booked Successfully");
                </script>
                <c:remove var="bookingSucess" />
            </c:if>
                <div class="row">
          <c:forEach items="${doctorsList}" var="doctor">
            

  <div class="column">
    <div class="card">
      <img src="images/${doctor.getImageURL()}" style="width:100%;height:360px">
      <div class="container">
        <h2>
        ${doctor.getName()} ${doctor.getLastName()}</h2>
        <p class="title">${doctor.getSpeciality()}</p>
        <p>${doctor.getExperience()} years experience</p>
        <p>${doctor.getEmail()}</p>
        <form action="insert_appointment">
  <label for="birthdaytime">Appointment Date&Time</label><br/><br/>
  <input type="datetime-local" id="birthdaytime" name="birthdaytime">
  <input type="hidden" name="id" value="${doctor.getId()}">
  <p><input type="submit" class="button" value="Book Appointment"></p>
</form>
      </div>
    </div>
  </div>
  </c:forEach>
</div>
          
<!--
  <div class="column">
    <div class="card">
      <img src="ps4.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Mike Ross</h2>
        <p class="title">Hematologists</p>
        <p>15 Years Experiences</p>
        <p>mikeross@gmail.com</p>
        <form action="/action_page.php">
  <label for="birthdaytime">Appointment Date&Time</label><BR/><br/>
  <input type="datetime-local" id="birthdaytime" name="birthdaytime">

</form>
        <p><button class="button">Book Appointment</button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="ps6.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>John Doe</h2>
        <p class="title">Family Physicians</p>
        <p>12 Years Experiences</p>
        <p>johndoe@yahoo.com</p>
        <form action="/action_page.php">
  <label for="birthdaytime">Appointment Date&Time</label><BR/><br/>
  <input type="datetime-local" id="birthdaytime" name="birthdaytime">

</form>
        <p><button class="button">Book Appointment</button></p>
      </div>
    </div>
  </div>
    <div class="column">
    <div class="card">
      <img src="ps10.jpg" alt="Mike" style="width:90%">
      <div class="container">
        <h2>Paul Christian</h2>
        <p class="title">Dermatologists</p>
        <p>5 Years Experiences</p>
        <p>paulchristian@yahoo.com</p>
        <form action="/action_page.php">
  <label for="birthdaytime">Appointment Date&Time</label><BR/><br/>
  <input type="datetime-local" id="birthdaytime" name="birthdaytime">

</form>
        <p><button class="button">Book Appointment</button></p>
      </div>
    </div>
  </div>
    <div class="column">
    <div class="card">
      <img src="ps9.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Gabby Jen</h2>
        <p class="title">Cardiologists</p>
        <p>10 Years Experiences</p>
        <p>gabbyjen@gmail.com</p>
        <form action="/action_page.php">
  <label for="birthdaytime">Appointment Date&Time</label><BR/><br/>
  <input type="datetime-local" id="birthdaytime" name="birthdaytime">

</form>
        <p><button class="button">Book Appointment</button></p>
      </div>
    </div>
  </div>
    <div class="column">
    <div class="card">
      <img src="ps.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Simeon James</h2>
        <p class="title">Anesthesiologists</p>
        <p>5 Years  Experiences</p>
        <p>simeonjames@yahoo.com</p>
        <form action="/action_page.php">
  <label for="birthdaytime">Appointment Date&Time</label><BR/><br/>
  <input type="datetime-local" id="birthdaytime" name="birthdaytime">-->

<!--</form>-->
        <!--<p><button class="button">Book Appointment</button></p>-->
      <!--</div>-->
    <!--</div>-->
  </div>
</div>

      </section>
    </body>
</html>

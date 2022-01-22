package doa.servlet;

import doa.bean.Patients;
import doa.db.AppointmentDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.jdbc.pool.DataSource;

@WebServlet(name = "AppointmentServlet", urlPatterns
        = {
            "/insert_appointment"
        })
public class AppointmentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        boolean isLoggedIn = (session != null && session.getAttribute("loggedInPatient") != null);
        if (isLoggedIn) {
            Patients patient = (Patients) session.getAttribute("loggedInPatient");
            if ("".equals(request.getParameter("birthdaytime"))) {
                session.setAttribute("invalidAppointment", true);
            } else {
                LocalDateTime dateTime = LocalDateTime.parse(request.getParameter("birthdaytime"));
                int doctorID = Integer.parseInt(request.getParameter("id"));
                int patientID = patient.getId();
                try {
                    LocalDateTime tempDateTime = LocalDateTime.from(LocalDateTime.now());
                    long seconds = tempDateTime.until(dateTime, ChronoUnit.SECONDS);
                    if (seconds < 0) {
                        session.setAttribute("invalidAppointment", true);
                    } else {
                        if (!AppointmentDB.addAppointment(getConnection(), patientID, doctorID, dateTime)) {
                            session.setAttribute("alreadyBooked", true);
                        } else {
                            session.setAttribute("bookingSucess", true);
                        }
                    }
                } catch (SQLException ex) {
                    System.err.println(ex.getMessage());
                }
            }
            response.sendRedirect("view_appointment.jsp");
        }
    }

    private Connection getConnection() throws SQLException {
        DataSource ds
                = (DataSource) getServletContext().getAttribute("DATA_SOURCE");
        Connection connection = ds.getConnection();
        return connection;
    }
}

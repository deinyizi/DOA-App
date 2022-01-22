package doa.servlet;

import doa.bean.Appointment;
import doa.bean.Doctor;
import doa.bean.Patients;
import doa.db.AppointmentDB;
import doa.db.DoctorDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.jdbc.pool.DataSource;

@WebServlet("/patient_details.jsp")
public class PatientDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        boolean isLoggedIn = (session != null) && (session.getAttribute("loggedInPatient") != null);
        if (isLoggedIn) {
            try {
                Patients patient = (Patients) session.getAttribute("loggedInPatient");
                int patientID = patient.getId();
                List<Appointment> appointmentList = AppointmentDB.getPatientAppointments(getConnection(), patientID);
                request.setAttribute("patientAppointments", appointmentList);
                RequestDispatcher rd = request.getRequestDispatcher("jpatient_details.jsp");
                rd.forward(request, response);
            } catch (SQLException ex) {
                System.err.println(ex.getMessage());
            }
        } else {
            response.sendRedirect("patient-login.jsp");
        }
    }

    private Connection getConnection() throws SQLException {
        DataSource ds = (DataSource) getServletContext().getAttribute("DATA_SOURCE");
        Connection connection = ds.getConnection();
        return connection;
    }
}

package doa.servlet;

import doa.bean.Appointment;
import doa.bean.Doctor;
import doa.db.AppointmentDB;
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

@WebServlet(name = "DoctorDashboardServlet", urlPatterns = {"/doctor_dashboard.jsp"})
public class DoctorDashboardServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        boolean isLoggedIn = (session != null) && (session.getAttribute("loggedInDoctor") != null);
        if (isLoggedIn) {
            try {
                Doctor doctor = (Doctor) session.getAttribute("loggedInDoctor");
                int doctorID = doctor.getId();
                List<Appointment> appointments = AppointmentDB.getAppointments(getConnection(), doctorID);
                request.setAttribute("appointments", appointments);
                RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
                rd.forward(request, response);
            } catch (SQLException ex) {
                System.err.println(ex.getMessage());
            }
        } else {
            response.sendRedirect("doctor_login.jsp");
        }
    }

    private Connection getConnection() throws SQLException {
        DataSource ds
                = (DataSource) getServletContext().getAttribute("DATA_SOURCE");
        Connection connection = ds.getConnection();
        return connection;
    }
}

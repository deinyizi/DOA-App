package doa.servlet;

import doa.bean.Doctor;
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

@WebServlet("/view_appointment.jsp")
public class ViewAppointmentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // updates should come from the other servlet when a new doctor is addedd
        HttpSession session = request.getSession();
        boolean listExists = (session != null) && (session.getAttribute("doctorsList") != null);
        if (!listExists) {
            try {
                List<Doctor> doctorsList = DoctorDB.getDoctorsList(getConnection());
                request.setAttribute("doctorsList", doctorsList);
                RequestDispatcher rd = request.getRequestDispatcher("jview_appointment.jsp");
                rd.forward(request, response);
            } catch (SQLException ex) {
                System.err.println(ex.getMessage());
            }
        }
    }

    private Connection getConnection() throws SQLException {
        DataSource ds = (DataSource) getServletContext().getAttribute("DATA_SOURCE");
        Connection connection = ds.getConnection();
        return connection;
    }
}

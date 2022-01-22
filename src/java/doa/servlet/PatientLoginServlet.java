package doa.servlet;

import doa.bean.Patients;
import doa.db.PatientDB;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Connection;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.jdbc.pool.DataSource;

@WebServlet(name = "PatientLoginServlet", urlPatterns
        = {
            "/patient-login", "/patient-signup"
        })
public class PatientLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //determine which url-pattern was used to request for
        //this servlet
        String servletPath = request.getServletPath();

        if (servletPath.equals("/patient-login")) {
            String email = request.getParameter("patient-email");
            String password = request.getParameter("patient-password");

            Patients patients = new Patients(email, password);

            HttpSession session = request.getSession();

            //1. validate form parameters		
            if (validateLogin(session, patients)) {
                //2. verify the customer login details				
                try {
                    PatientDB.verifyPatient(getConnection(), patients);
                    if (patients.isVerified()) {
                        //3.if verified redirect to the patient catalogue page
                        //and display a personalized greeting
                        //System.out.println("verified");
                        log("okay");
                        session.setAttribute("loggedInPatient", patients);
                        response.sendRedirect("patient_details.jsp");
                    } else {
                        //4.if not verified redirect to the form with an appropriate
                        //error message
                        session.setAttribute("loginError", true);
                        response.sendRedirect("patient-login.jsp");
                    }
                } catch (SQLException e) {
                    log("here" + e.getMessage());
                    //user feedback
                    session.setAttribute("dbError", true);
                    response.sendRedirect("patient-login.jsp");
                }

            } //redirect to login if form not valid
            else {
                response.sendRedirect("patient-login.jsp");
            }

        } else { //sign up
            Patients patients = new Patients();
            patients.setName(request.getParameter("new-name"));
            patients.setLastName(request.getParameter("new-names"));
            patients.setEmail(request.getParameter(
                    "new-email"));
            patients.setGender(request.getParameter("gender-name"));
            patients.setPhone(request.getParameter("new-phone"));
            patients.setAddress(request.getParameter("new-address"));
//            LocalDate birthDate = LocalDate.parse(request.getParameter("birthday"));
//            patients.setDateOfBirth(birthDate);
            patients.setPassword(request.getParameter("new-password"));

            HttpSession session = request.getSession();

            //1. validate sign up form parameters
            if (validateSignUp(session, patients)) {
                //2. check if email is already registered
                try {
                    if (!PatientDB.isEmailAvailable(getConnection(),
                            patients.getEmail())) {
                        //3. if registered redirect to sign up form
                        //with an appriopriate message
                        session.setAttribute("emailTaken", true);
                    } //4. else add customer
                    else {
                        PatientDB.addPatient(getConnection(), patients);
                        session.setAttribute("signUpError", false);
                        response.sendRedirect("patient-login.jsp");
                    }
                } catch (SQLException e) {
                    log(e.getMessage());
//                    System.err.println("exception occurred: " + e);
                    //user feedback
                    session.setAttribute("dbError", true);
                }
            } else {
                //5. redirect to login form and display an appriopriate message
                response.sendRedirect("patient-signup.jsp");
            }
        }
    }

    private boolean validateLogin(HttpSession session, Patients patient) {
        boolean valid = true;
        if (patient.getEmail().equals("")) {
            session.setAttribute("loginEmailError", true);
            valid = false;
        }
        if (patient.getPassword().isEmpty()) {
            session.setAttribute("loginPasswordError", true);
            valid = false;
        }
        return valid;
    }

    private boolean validateSignUp(HttpSession session, Patients pati) {
        if (pati.getName().isEmpty() || pati.getLastName().isEmpty() || pati.getEmail().isEmpty()
                || pati.getPhone().isEmpty() || pati.getAddress().isEmpty()
                || pati.getPassword().isEmpty()) {
            session.setAttribute("signUpError", true);
            return false;
        } else {
            return true;
        }
    }

    private Connection getConnection() throws SQLException {
        DataSource ds
                = (DataSource) getServletContext().getAttribute("DATA_SOURCE");
        Connection connection = ds.getConnection();
        return connection;

    }
}

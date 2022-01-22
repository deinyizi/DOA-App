package doa.servlet;

import doa.bean.Doctor;
import doa.db.DoctorDB;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Connection;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.tomcat.jdbc.pool.DataSource;

@WebServlet(name = "DoctorLoginServlet", urlPatterns
        = {
            "/doctor_login", "/doctor_signup"
        })
@MultipartConfig
public class DoctorLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //determine which url-pattern was used to request for
        //this servlet
        String servletPath = request.getServletPath();

        if (servletPath.equals("/doctor_login")) {
            String email = request.getParameter("doctor-email");
            String password = request.getParameter("doctor-password");

            Doctor doctors = new Doctor(email, password);

            HttpSession session = request.getSession();

            //1. validate form parameters		
            if (validateLogin(session, doctors)) {
                //2. verify the customer login details				
                try {
                    DoctorDB.verifyDoctor(getConnection(), doctors);
                    if (doctors.isVerified()) {
                        //3.if verified redirect to the doctor catalogue page
                        //and display a personalized greeting
                        //System.out.println("verified");
                        log("okay");
                        session.setAttribute("loggedInDoctor", doctors);
                        response.sendRedirect("doctor_dashboard.jsp");
                    } else {
                        //4.if not verified redirect to the form with an appropriate
                        //error message
                        log("not okay");
                        session.setAttribute("loginError", true);
                        session.setAttribute("dbError", true);
                        response.sendRedirect("doctor_login.jsp");
                    }
                } catch (SQLException e) {
                    log("here" + e.getMessage());
                    //user feedback
                    session.setAttribute("dbError", true);
                    response.sendRedirect("doctor_login.jsp");
                }

            } //redirect to login if form not valid
            else {
                response.sendRedirect("doctor_login.jsp");
            }

        } else { //sign up
            Doctor doctors = new Doctor();
            doctors.setName(request.getParameter("new-name"));
            doctors.setLastName(request.getParameter("new-names"));
            doctors.setEmail(request.getParameter(
                    "new-email"));
            doctors.setGender(request.getParameter("gender-name"));
            doctors.setPhone(request.getParameter("new-phone"));
            doctors.setAddress(request.getParameter("new-address"));
            doctors.setExperience(Integer.parseInt(request.getParameter("quantity")));
            LocalDate birthDate = LocalDate.parse(request.getParameter("birthday"));
            doctors.setDateOfBirth(birthDate);
            doctors.setPassword(request.getParameter("new-password"));
            doctors.setSpeciality(request.getParameter("speciality"));

            // Image processing
            Part filePart = request.getPart("image");
            String photo = null;
            String path = "C:/Users/Dell/Pictures/DOA";
            File file = new File(path);
            file.mkdir();
            String fileName = getFileName(filePart);

            OutputStream out = null;
            InputStream filecontent = null;
            PrintWriter writer = response.getWriter();
            try {
                out = new FileOutputStream(new File(path + File.separator
                        + fileName));
                filecontent = filePart.getInputStream();
                int read = 0;
                final byte[] bytes = new byte[1024];
                while ((read = filecontent.read(bytes)) != -1) {
                    out.write(bytes, 0, read);
                    photo = fileName;

                }
            } catch (IOException ex) {
                log(ex.getMessage());
            }
            
            doctors.setImageURL(photo);
            
            HttpSession session = request.getSession();

            //1. validate sign up form parameters
            if (validateSignUp(session, doctors)) {
                //2. check if email is already registered
                try {
                    if (!DoctorDB.isEmailAvailable(getConnection(),
                            doctors.getEmail())) {
                        //3. if registered redirect to sign up form
                        //with an appriopriate message
                        session.setAttribute("emailTaken", true);
                    } //4. else add customer
                    else {
                        DoctorDB.addDoctor(getConnection(), doctors);
                        session.setAttribute("signUpError", false);
                    }
                } catch (SQLException e) {
                    log(e.getMessage());
//                    System.err.println("exception occurred: " + e);
                    //user feedback
                    session.setAttribute("dbError", true);
                }
            }
            //5. redirect to login form and display an appriopriate message
            response.sendRedirect("doctor_login.jsp");
        }
    }

    private boolean validateLogin(HttpSession session, Doctor doctor) {
        boolean valid = true;
        if (doctor.getEmail().equals("")) {
            session.setAttribute("loginEmailError", true);
            valid = false;
        }
        if (doctor.getPassword().isEmpty()) {
            session.setAttribute("loginPasswordError", true);
            valid = false;
        }
        return valid;
    }

    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");

        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(
                        content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }

    private boolean validateSignUp(HttpSession session, Doctor doctor) {
        if (doctor.getName().isEmpty() || doctor.getLastName().isEmpty() || doctor.getEmail().isEmpty()
                || doctor.getPhone().isEmpty() || doctor.getAddress().isEmpty()
                || doctor.getPassword().isEmpty()) {
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

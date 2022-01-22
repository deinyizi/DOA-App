package doa.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter(urlPatterns
        = {
            "/*"
        })
public class SiteFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession session = httpRequest.getSession(false);

        if (httpRequest.getRequestURI().endsWith("patient-signup.jsp")) {
            boolean isLoggedIn = (session != null && session.getAttribute("loggedInPatient") != null);
            if (isLoggedIn) {
                RequestDispatcher dispatcher = httpRequest.getRequestDispatcher("/patient_details.jsp");
                dispatcher.forward(request, response);
            } else {
                chain.doFilter(request, response);
            }
        } else if (httpRequest.getRequestURI().endsWith("patient-login.jsp")) {
            boolean isLoggedIn = (session != null && session.getAttribute("loggedInPatient") != null);
            if (isLoggedIn) {
                RequestDispatcher dispatcher = httpRequest.getRequestDispatcher("/patient_details.jsp");
                dispatcher.forward(request, response);
            } else {
                chain.doFilter(request, response);
            }
        } else if (httpRequest.getRequestURI().endsWith("patient_details.jsp")) {
            boolean isLoggedIn = (session != null && session.getAttribute("loggedInPatient") != null);
            if (isLoggedIn) {
                chain.doFilter(request, response);
            } else {
                RequestDispatcher dispatcher = httpRequest.getRequestDispatcher("/patient-login.jsp");
                dispatcher.forward(request, response);
            }
        } else if (httpRequest.getRequestURI().endsWith("jview_appointment.jsp")) {
            boolean isLoggedIn = (session != null && session.getAttribute("loggedInPatient") != null);
            if (isLoggedIn) {
                chain.doFilter(request, response);
            } else {
                RequestDispatcher dispatcher = httpRequest.getRequestDispatcher("/patient-login.jsp");
                dispatcher.forward(request, response);
            }
        } else if (httpRequest.getRequestURI().endsWith("view_appointment.jsp")) {
            boolean isLoggedIn = (session != null && session.getAttribute("loggedInPatient") != null);
            if (isLoggedIn) {
                chain.doFilter(request, response);
            } else {
                RequestDispatcher dispatcher = httpRequest.getRequestDispatcher("/patient-login.jsp");
                dispatcher.forward(request, response);
            }
        } else if (httpRequest.getRequestURI().endsWith("doctor-signup.jsp")) {
            boolean isLoggedIn = (session != null && session.getAttribute("loggedInDoctor") != null);
            if (isLoggedIn) {
                RequestDispatcher dispatcher = httpRequest.getRequestDispatcher("/doctor_dashboard.jsp");
                dispatcher.forward(request, response);
            } else {
                chain.doFilter(request, response);
            }
        } else if (httpRequest.getRequestURI().endsWith("doctor-login.jsp")) {
            boolean isLoggedIn = (session != null && session.getAttribute("loggedInDoctor") != null);
            if (isLoggedIn) {
                RequestDispatcher dispatcher = httpRequest.getRequestDispatcher("/doctor_dashboard.jsp");
                dispatcher.forward(request, response);
            } else {
                chain.doFilter(request, response);
            }
        } else if (httpRequest.getRequestURI().endsWith("doctor_dashboard.jsp")) {
            boolean isLoggedIn = (session != null && session.getAttribute("loggedInDoctor") != null);
            if (isLoggedIn) {
                chain.doFilter(request, response);
            } else {
                RequestDispatcher dispatcher = httpRequest.getRequestDispatcher("/doctor_login.jsp");
                dispatcher.forward(request, response);
            }
        } else {
            chain.doFilter(request, response);
        }

    }

    public void destroy() {
    }

    public void init(FilterConfig filterConfig) {

    }

}

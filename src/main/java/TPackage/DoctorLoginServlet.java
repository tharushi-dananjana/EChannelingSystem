package TPackage;

import TPackage.Doctormodel;
import TPackage.DoctorService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/doctor/DoctorLogin")
public class DoctorLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private DoctorService doctorService = new DoctorService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession(false);  // Check if session already exists
        if (session != null && session.getAttribute("doctor") != null) {
            response.sendRedirect(request.getContextPath() + "/doctor");
            return;
        }
        
        String identifier = request.getParameter("email"); // Can be email
        String password = request.getParameter("password");
        
     // Basic validation
        if (identifier == null || identifier.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            request.setAttribute("error", "Email and Password are required");
            request.getRequestDispatcher("/doctor/DoctorLogin.jsp").forward(request, response);
            return;
        }
        
    	

        // Authenticate doctor
        Doctormodel doctor = doctorService.getDoctorByEmail(identifier);

        if (doctor != null && doctor.getPassword().equals(password)) {
            // Create a new session for the authenticated doctor
            session = request.getSession(true);
            session.setAttribute("doctor", doctor);
            session.setAttribute("name", doctor.getName());
            session.setAttribute("email", doctor.getEmail());
            
            session.setAttribute("filename", doctor.getFilename());
            session.setMaxInactiveInterval(30 * 60); // Session expires after 30 minutes

            // Redirect to the dashboard
            response.sendRedirect(request.getContextPath() + "/doctor");
        } else {
            // Authentication failed, redirect back to login page with error
            request.setAttribute("error", "Invalid email/username or password");
            request.getRequestDispatcher("/doctor/DoctorLogin.jsp").forward(request, response);
        }
    }

    private Doctormodel authenticateDoctor(String identifier, String password) {
        for (Doctormodel doctor : doctorService.getAllDoctors()) {
            if ((doctor.getEmail().equalsIgnoreCase(identifier) || doctor.getName().equalsIgnoreCase(identifier)) 
                    && doctor.getPassword().equals(password)) {
                return doctor;
            }
        }
        return null;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Check for existing error message (e.g., from invalid login attempt)
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("doctor") != null) {
            // Redirect authenticated user to the dashboard
            response.sendRedirect(request.getContextPath() + "/doctor");
        } else {
            // Redirect to login page
            request.getRequestDispatcher("/doctor/DoctorLogin.jsp").forward(request, response);
        }
    }
}

















  
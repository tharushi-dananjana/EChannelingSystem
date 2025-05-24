package TPackage;

import TPackage.Doctormodel;
import TPackage.DoctorService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet("/doctor")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB

public class DoctorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DoctorService doctorService;

    @Override
    public void init() throws ServletException {
        super.init();
        doctorService = new DoctorService();
    }

    private String handlePhotoUpload(Part filePart, String uploadDirectory) throws IOException {
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            String uploadPath = getServletContext().getRealPath("") + File.separator + uploadDirectory;

            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            String filePath = uploadPath + File.separator + fileName;
            filePart.write(filePath);

            return fileName;
        }
        return null;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("doctor") == null) {
            response.sendRedirect(request.getContextPath() + "/doctor/DoctorLogin");
            return;
        }

        request.setAttribute("name", session.getAttribute("name"));
        request.setAttribute("email", session.getAttribute("email"));
        request.setAttribute("filename", session.getAttribute("filename"));

        if (action == null) {
            request.setAttribute("doctors", doctorService.getAllDoctors());
            request.getRequestDispatcher("doctor/ManageDoctorindex.jsp").forward(request, response);
        } else if (action.equals("create")) {
            request.getRequestDispatcher("doctor/ManageDoctorCreate.jsp").forward(request, response);
        } else if (action.equals("view")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Doctormodel doctor = doctorService.getDoctor(id);
            request.setAttribute("doctor", doctor);
            request.getRequestDispatcher("doctor/ManageDoctorindex.jsp").forward(request, response);
        } else if (action.equals("edit")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Doctormodel doctor = doctorService.getDoctor(id);
            request.setAttribute("doctor", doctor);
            request.getRequestDispatcher("doctor/ManageDoctorEdit.jsp").forward(request, response);
        } else if (action.equals("verify")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String password = request.getParameter("password");

            Doctormodel doctor = doctorService.getDoctor(id);
            if (doctor != null && doctor.getPassword().equals(password)) {
                response.setStatus(HttpServletResponse.SC_OK);
            } else {
                response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            }
        } else if (action.equals("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            doctorService.delete(id);
            response.sendRedirect("doctor");
        } else if ("verifyAndDelete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String password = request.getParameter("password");

            Doctormodel doctor = doctorService.getDoctor(id);
            if (doctor != null && doctor.getPassword().equals(password)) {
                doctorService.delete(id);
                response.setStatus(HttpServletResponse.SC_OK);
            } else {
                response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            }
        } else if (action.equals("logout")) {
            session.invalidate();
            response.sendRedirect(request.getContextPath() + "/doctor/DoctorLogin");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action.equals("create")) {
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            Part filePart = request.getPart("filename");
            String fileName = handlePhotoUpload(filePart, "doctor/assets/picture");

            Doctormodel doctor = new Doctormodel();
            doctor.setName(name);
            doctor.setPassword(password);
            doctor.setEmail(email);
            doctor.setFilename(fileName);

            if (doctorService.createUser(doctor)) {
                response.sendRedirect("doctor");
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        } else if (action.equals("update")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            Part filePart = request.getPart("filename");
            String fileName = handlePhotoUpload(filePart, "assets/picture");

            Doctormodel doctor = new Doctormodel();
            doctor.setId(id);
            doctor.setName(name);
            doctor.setPassword(password);
            doctor.setEmail(email);

            if (fileName != null) {
                doctor.setFilename(fileName);
            }

            if (doctorService.updateUser(doctor)) {
                response.sendRedirect("doctor");
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        } else if (action.equals("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            if (doctorService.delete(id)) {
                response.sendRedirect("doctor");
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        }
    }
}

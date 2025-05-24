package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserDeleteServlet")
public class UserDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String id = request.getParameter("id");

	    if (id == null || id.trim().isEmpty()) {
	        response.getWriter().println("<script>alert('Invalid User ID.'); window.location.href='UserDashboardServlet';</script>");
	        return;
	    }

	    boolean isTrue = UserController.deleteAccount(id);

	    if (isTrue) {
	        String alertMessage = "Account delete Successful";
	        response.sendRedirect("UserDashboardServlet");
	        
	        
	    } else {
	        List<UserModel> userDetails = UserController.getById(id);
	        request.setAttribute("userDetails", userDetails);

	        RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
	        dispatcher.forward(request, response);
	    }
	}



}

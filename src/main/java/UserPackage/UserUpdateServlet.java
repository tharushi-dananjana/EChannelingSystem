package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserUpdateServlet")
public class UserUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phoneNo = request.getParameter("phoneNo");
		String role = request.getParameter("role");
		
		boolean isTrue;
		isTrue = UserController.updateprofile(id, name, email, phoneNo, role);
		
		if(isTrue == true) {
			List<UserModel> userdetails = UserController.getById(id);
			request.setAttribute("userdetails",userdetails);
			
			String alertMessage = "Data Update Successsful";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='UserDashboardServlet'</script>");
			
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
		
		
		
		
	}

}

package echannellingPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("id");
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = ChannellingController.updatedata(id, name, email, password);
		
		if(isTrue ==true) {
			List<ChannellingModel> channellingDetails = ChannellingController.getById(id);
			request.setAttribute("channellingDetails", channellingDetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href= 'GetAllServlet'</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}

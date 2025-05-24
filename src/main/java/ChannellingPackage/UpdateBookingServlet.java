package ChannellingPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("id");
		String patientName= request.getParameter("patientName");
		String doctorName= request.getParameter("doctorName");
		String specialization= request.getParameter("specialization");
		String dayOfTheWeek= request.getParameter("dayOfTheWeek");
		
		boolean isTrue;
		isTrue = ChannellingController.updatedata(id, patientName, doctorName, specialization, dayOfTheWeek);
		
		if(isTrue ==true) {
			List<ChannellingModel> appointmentDetails = ChannellingController.getById(id);
			request.setAttribute("appointmentDetails", appointmentDetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='GetAllAppointmentsServlet'</script>");

		}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("create.jsp");
			dis2.forward(request, response);

		}
	}

}

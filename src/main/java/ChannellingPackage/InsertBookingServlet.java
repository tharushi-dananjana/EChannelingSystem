package ChannellingPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertBookingServlet")
public class InsertBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String patientName= request.getParameter("patientName");
		String doctorName= request.getParameter("doctorName");
		String specialization= request.getParameter("specialization");
		String dayOfTheWeek= request.getParameter("dayOfTheWeek");
		
		boolean isTrue;
		
		isTrue = ChannellingController.insertdata(patientName, doctorName, specialization, dayOfTheWeek);
		
		if(isTrue ==true) {
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='GetAllAppointmentsServlet'</script>");

		}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("create.jsp");
			dis2.forward(request, response);
		}

		
	}

}

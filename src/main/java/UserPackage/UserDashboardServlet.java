package UserPackage;

import java.io.IOException;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserDashboardServlet")
public class UserDashboardServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserController userController = new UserController();
        List<UserModel> userList = userController.getAllUser();  
        
        request.setAttribute("allUser", userList);
        request.getRequestDispatcher("Userdisplay.jsp").forward(request, response);
        
        System.out.println("User list size: " + userList.size());

    }
}


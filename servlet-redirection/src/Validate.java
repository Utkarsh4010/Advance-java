

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 @WebServlet("/validate")
public class Validate extends HttpServlet {
	 	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String un = request.getParameter("uname");
		 String pass = request.getParameter("pass");
		 
		 
		 if("admin".equals(un) && "admin@123".equals(pass)) {
			 RequestDispatcher dis = request.getRequestDispatcher("user-home");
			 dis.forward(request, response);
		 }
		 else {
			 response.sendRedirect("error");
			 //response.sendRedirect("https://www.google.com");
		 }
	}

}

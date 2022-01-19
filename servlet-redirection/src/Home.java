

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 @WebServlet("/user-home")
public class Home extends HttpServlet {
	 protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		 String un = request.getParameter("uname");
		 out.print("<h1>Welcome user,"+un+"</h1>");
         out.close();
	 }
}

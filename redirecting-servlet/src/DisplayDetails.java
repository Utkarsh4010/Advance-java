import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/show-details")
public class DisplayDetails extends HttpServlet {
protected void service (HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
	String fn = request.getParameter("fname");
	String mn = request.getParameter("mname");
	String ln = request.getParameter("lname");
	String prefix = (String) request.getAttribute("p");
	String fullName = prefix + " " + fn + " " + mn + " " + ln;
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	out.print("<h1>Hello, "+ fullName+ "</h1>");
	out.close();
}
	
}

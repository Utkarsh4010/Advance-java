import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/display-message")
public class Display extends HttpServlet {
@Override
protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	
	String value = request.getParameter("msg");
	
	out.print("<h1> Your Message is : "+ value + "</h1>");
	out.close();
}
}
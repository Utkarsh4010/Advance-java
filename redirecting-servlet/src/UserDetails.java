import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user-details")
public class UserDetails extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print("<form action='process-details'>");
		out.print("Enter First Name : <input type='text' name='fname'><br><br>");
		out.print("Enter middle name : <input type='text' name='mname'><br><br>");
		out.print("Enter last name : <input type='text' name='lname'><br><br>");
		out.print("Select gender : <input type='radio' name='gender' value='M'>Male<input type='radio' name='gender' value='F'>Female<br><br>");
		out.print("<input type = 'submit' value='send'>");
		out.print("</form>");
		out.close();
	}

}

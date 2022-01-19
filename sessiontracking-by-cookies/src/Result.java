

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/search-result")
public class Result extends HttpServlet {
	 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchDetails=request.getParameter("q");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print("<h1>Your Search Query is : "+searchDetails+"</h1>");
		
		Cookie ck=new Cookie("presearch",searchDetails);//To Create Cookie
		ck.setMaxAge(48*60*60);//To expire time for cookies
		response.addCookie(ck);//can send the cookie to the client side
		
		
	}

}

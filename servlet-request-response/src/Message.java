import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/get-message")
public class Message extends HttpServlet{
@Override
protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
	response.setContentType("text/html");//you can set the response return to user, also known as MIME type
	PrintWriter writer = response.getWriter();
	
	writer.print("<h1 style='color:red; background-color:yellow'>Hello, user please provide your message</h1>");
	writer.print("<form action = 'display-message'>");
	writer.print("Message : <input type='text' name='msg'");
	writer.print("</br>");
	writer.print("<input type='submit' value='Send Message'>");
	writer.print("</form>");
	
	writer.close();
}

}

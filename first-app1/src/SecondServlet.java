import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/my-second-servlet")
public class SecondServlet extends HttpServlet{
@Override
protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
	System.out.println("Hello This is my second Servlet");
}
}

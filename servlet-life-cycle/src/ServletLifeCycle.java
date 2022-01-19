

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/servletlifecycle")
public class ServletLifeCycle extends HttpServlet {
	 	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("I am from init method"); 
	}

	 	public void destroy() {
		 System.out.println("I am from Destroy method");
	}

	 	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 System.out.println("I am from service method");
	}

	 	 
}



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/authuser")
public class AuthUser extends HttpServlet {
	 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// response.setContentType("text/html");
		// PrintWriter out = response.getWriter();
		 String email=request.getParameter("email");
		 String password=request.getParameter("pass");
		 String statusCode="2";
		 
		 try {
      		 Class.forName("com.mysql.cj.jdbc.Driver");
      		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fsd27sept", "root", "Root");
      		 PreparedStatement stmt=con.prepareStatement("select * from registrationdata where email=? and password=?");
      		 stmt.setString(1, "email");
      		 stmt.setString(2, "password");
      		 int count=stmt.executeUpdate();
      		 con.close();
      		 if(count>0) {
      			// response.sendRedirect("saveuser.java");
      			 statusCode="1";
      		 } 
      		 
      	 }catch(Exception e) {
      		 e.printStackTrace();
      		 statusCode="3";
      		//response.sendRedirect("sign-in.jsp");	 
	     }
		 
		 response.sendRedirect("sign-in.jsp?code="+statusCode);	 
			 
		 }
		 
	}



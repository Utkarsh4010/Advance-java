

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



 
@WebServlet("/register-user")
public class SaveUser extends HttpServlet {
	 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name=request.getParameter("name");
         String email=request.getParameter("email");
     	 String contact=request.getParameter("contact");
     	 String city=request.getParameter("city");
      	 String pin=request.getParameter("pin");
      	 String statusCode="2";
      	 
      	 try {
      		 Class.forName("com.mysql.cj.jdbc.Driver");
      		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fsd27sept", "root", "Root");
      		 PreparedStatement stmt=con.prepareStatement("insert into userinfo values(?,?,?,?,?)");
      		
      		 stmt.setString(1, name);
      		 stmt.setString(2, email);
      		 stmt.setString(3, contact);
      		 stmt.setString(4, city);
      		 stmt.setString(5, pin);
      		 
      		 int count=stmt.executeUpdate();
      		 con.close();
      		 
      		 if(count>0) {
      			 statusCode="1";
      		 }
      		 
      	 }catch(Exception e) {
      		 statusCode="3";
      		 e.printStackTrace();
      	 }
      	 response.sendRedirect("user-personal-info.jsp?code="+statusCode);
      
	}

}

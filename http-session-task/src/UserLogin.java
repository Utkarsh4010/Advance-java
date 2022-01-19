

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
@WebServlet("/user-auth")
public class UserLogin extends HttpServlet {
	 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String umail=request.getParameter("umail");
		String upass=request.getParameter("upass");
		 try {
			    Class.forName("com.mysql.cj.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fsd27sept", "root", "Root");
			    PreparedStatement stmt= con.prepareStatement("select * from userdetails where email=? and password=?");
			    stmt.setString(1, umail);
			    stmt.setString(2, upass);
			    ResultSet rs= stmt.executeQuery();
			    
			    if(rs.next()) {
	            	 HttpSession session= request.getSession();//Session created
	            	 session.setAttribute("uid", rs.getInt("id"));
	            	 session.setAttribute("uname", rs.getString("name"));
	            	 session.setAttribute("uemail",rs.getString("email"));
	            	 session.setAttribute("ucontact", rs.getString("contact"));
	            	 session.setAttribute("ucity", rs.getString("city"));
	            	 response.sendRedirect("home.jsp");
	            	 
	             }else {
	            	 response.sendRedirect("login.jsp?code=403");
	             }
	             
	             con.close();
			 
		 }catch(Exception e) {
			 e.printStackTrace();
			 response.sendRedirect("login.jsp?code=500");
		 }
	}

}

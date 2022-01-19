

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

 

 
@WebServlet("/validate-me")
public class UserAuth extends HttpServlet {
	 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName=request.getParameter("uname");
		String userPass=request.getParameter("upass");
		 try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/fsd27sept","root","Root");
			 PreparedStatement pstmt=con.prepareStatement("select * from employee where email=? and password=?");
			 pstmt.setString(1, userName);
             pstmt.setString(2, userPass);
             ResultSet rs=pstmt.executeQuery();
             if(rs.next()) {
            	 HttpSession session= request.getSession();//Session created
            	 session.setAttribute("uid", rs.getInt("id"));
            	 session.setAttribute("uname", rs.getString("name"));
            	 session.setAttribute("uemail",rs.getString("email"));
            	 response.sendRedirect("home.jsp");
            	 
             }else {
            	 response.sendRedirect("login.jsp?code=403");
             }
             
             con.close();
             
		 }catch(Exception e){
			 e.printStackTrace();
			 response.sendRedirect("login.jsp?code=500");
		 }
		 
	}

}

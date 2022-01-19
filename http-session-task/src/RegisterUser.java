

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

 
@WebServlet("/registeruser")
public class RegisterUser extends HttpServlet {
	 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uname");
		String email=request.getParameter("uemail");
		String password=request.getParameter("upass");
		String contact=request.getParameter("ucontact");
		String city=request.getParameter("ucity");
		String higherdegree=request.getParameter("hdegree");
		String passingyear=request.getParameter("pyear");
		String collegename=request.getParameter("cname");
		String percentage=request.getParameter("percentage");
		
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fsd27sept", "root", "Root");
			PreparedStatement stmt = con.prepareStatement("insert into userdetails values(0,?, ?, ?, ?, ?, ?, ?, ?, ?)");
			stmt.setString(1, name);
			stmt.setString(2, email);
			stmt.setString(3, contact);
			stmt.setString(4, password);
			
			stmt.setString(5, city);
			stmt.setString(6, higherdegree);
			stmt.setString(7, passingyear);
			
			stmt.setString(8, percentage);
			stmt.setString(9, collegename);
			
			//ResultSet rs = stmt.executeQuery();
			int count=stmt.executeUpdate();
			 if(count>0) {
//            	HttpSession session= request.getSession();//Session created
//            	 session.setAttribute("id", rs.getInt("id"));
//            	 session.setAttribute("name", rs.getString("name"));
//            	 session.setAttribute("email",rs.getString("email"));
//            	 session.setAttribute("ucontact", rs.getString("contact"));
//            	 session.setAttribute("password", rs.getString("password"));
//            	
//            	 session.setAttribute("city", rs.getString("city"));
//            	 session.setAttribute("higherdegree", rs.getString("higherdegree"));
//            	 session.setAttribute("passingyear", rs.getString("passingyear"));
//            	 session.setAttribute("percent", rs.getString("percentage"));
//            	 session.setAttribute("clgname", rs.getString("collegename"));
//            	 
            	 response.sendRedirect("home.jsp");
				  
            	 
             }else {
            	 response.sendRedirect("register.jsp?code=403");
             }
             
			
			con.close();
			
			
		} catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("register.jsp?code=500");
             
			
		}
	}

}

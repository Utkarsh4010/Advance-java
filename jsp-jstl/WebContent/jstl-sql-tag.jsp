 <%@ page import ="java.sql.ResultSet" %>
 <%@ page import ="java.sql.PreparedStatement" %>
 <%@ page import ="java.sql.DriverManager" %>
 <%@ page import ="java.sql.Connection" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
 
 
 
 <table border="1">
 
    <tr>
       <th>Id</th>
       <th>Name</th>
       <th>Email</th>
    </tr>
    
    <%
        try{
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fsd27sept","root","Root");
        	PreparedStatement pstmt= con.prepareStatement("select * from employee");
        	ResultSet rs= pstmt.executeQuery();
        	while(rs.next()){
        		out.print("<tr>");
        		   out.print("<td>"+rs.getInt("id")+"</td>");
        		   out.print("<td>"+rs.getString("name")+"</td>");
        		   out.print("<td>"+rs.getString("email")+"</td>");
        		out.print("</tr>");
        	}
        	
        	
        	con.close();
        	
        }catch(Exception e){
        	e.printStackTrace();
        }
    
    
    %>
 
 
 </table>
 
  <h2>=============JSTL==================</h2>
  
  <div style="border:solid 1px;">
      <h4>User Details</h4>
      
      <form action="saveuserdetails.jsp" method="post">
          Enter Name:<input type="text" name="name" placeholder="Enter Your Name"><br><br>
          Enter Email:<input type="text" name="email" placeholder="Enter Your Email"><br><br>
          Enter Password:<input type="text" name="pass" placeholder="Enter Your Password"><br><br>
          <button type="submit">Save</button>
      
      </form> 
  </div>
  
  <h4>User List</h4>
  <s:setDataSource var="conn"
     driver="com.mysql.cj.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/fsd27sept"
     user="root"
     password="Root"/>
     
     <s:query dataSource="${conn}" var="rsData" sql="select * from employee"></s:query>
     
     <table border="1">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>email</th>
                   
        </tr>
        <c:forEach var="data" items="${rsData.rows}">
          <tr>
            <td>${data.id }</td>
            <td>${data.name}</td>
            <td>${data.email}</td>
          
          </tr>
        
        </c:forEach>
     </table>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
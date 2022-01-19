<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Address Details</title>
</head>
<body>
  <div align="center">
  <h3>Page 2 of 3</h3>
  <hr>
  <h3>User Address Details</h3>
   
   <%
      String name=request.getParameter("name");
      String email=request.getParameter("email");
      String contact=request.getParameter("contact"); 
   %>
   
   <h4>Name:  <%=name %></h4>
   <h4>Email: <%=email %> </h4>
   <h4>contact:  <%=contact %></h4>
   
   <form action="preview.jsp">
   
       
       <input type="hidden" name="name" value="<%=name %>">
       <input type="hidden" name="email" value="<%=email %>">
       <input type="hidden" name="contact" value="<%=contact %>">
       
       
       Enter City:<input type="text" name="city"><br><br>
       Enter Pin code:<input type="text" name="pin"><br><br>
       <button type="submit">Next</button>
   
   </form>
   </div>
</body>
</html>
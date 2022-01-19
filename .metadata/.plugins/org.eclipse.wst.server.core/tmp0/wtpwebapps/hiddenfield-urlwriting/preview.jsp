<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Details Preveiw</title>
</head>
<body>
  <div align="center">
         <h3>Page 3 of 3</h3>
         
         <%
            String name=request.getParameter("name");
            String email=request.getParameter("email");
        	String contact=request.getParameter("contact");
        	String city=request.getParameter("city");
         	String pin=request.getParameter("pin");
         
         %>
         <hr>
         <h3>User Personal Details</h3>
         Name:<%=name %>
         <br>
         Email:<%=email %>
         <br>
         Contact:<%=contact %>
         
         
         <h3>User Address Details</h3>
         City:<%=city %>
         <br>
         Pin Code:<%=pin %>
         <br>
      
        <h2><a href="register-user?name=<%=name %>&email=<%=email %>&contact=<%=contact %>&city=<%=city %>&pin=<%=pin %>">Submit & Save</a></h2>  
  
  </div>

</body>
</html>
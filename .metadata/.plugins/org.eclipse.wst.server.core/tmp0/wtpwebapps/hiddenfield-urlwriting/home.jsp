<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<%
  String name=request.getParameter("name"); 
  String email=request.getParameter("email");
  
%>

<h3>Welcome User, <%=name %>  </h3>
<h3>You Logged in by email, <%=email %></h3>

</body>
</html>
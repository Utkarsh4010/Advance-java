<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>

<%
  if(session.getAttribute("uname")==null){
	  response.sendRedirect("login.jsp?code=401");
  }

%>


<div align="right">
     <h4>Welcome, user <%= session.getAttribute("uname") %></h4>
     <h4><a href="logout.jsp">Logout</a></h4>
</div>

<div align="center">
     <h1>Hello User, To Home Page...</h1>

</div>

</body>
</html>
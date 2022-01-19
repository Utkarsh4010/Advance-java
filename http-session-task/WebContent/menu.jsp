<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu page</title>
</head>
<body>
     <div align="center" style= "font-size:25px">
     |<a href ="home.jsp">Home</a>|
     <a href ="profile.jsp">Profile</a>|
     <a href = "logout.jsp">Logout</a>|
    
     <div align="right">
       <h3>Welcome,<%= session.getAttribute("uname") %> </h3>
       <h4><a href="logout.jsp"> Logout</a></h4>
     </div>
    </div>
     <hr>
</body>
</html>
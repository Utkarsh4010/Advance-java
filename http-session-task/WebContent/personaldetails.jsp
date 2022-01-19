<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personal Details</title>
</head>
<body>
<%@include file="menu.jsp" %>
</body>
</html>
<div align="center">
 <div align ="left">
            <a href="educationdetails.jsp">Educational Details</a>
            
 </div>
    <h2>Personal Information</h2>
<h3>User Name: <%= session.getAttribute("uname") %></h3>
<br><br>
<h3>Email: <%= session.getAttribute("uemail") %></h3>
<br><br>
<h3>Contact: <%= session.getAttribute("ucontact") %></h3>
<br><br>
<h3>City: <%= session.getAttribute("ucity") %></h3>


</div>
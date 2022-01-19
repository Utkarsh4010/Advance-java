<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Educational Details</title>
</head>
<body>
<%@include file="menu.jsp" %>
</body>
</html>


<div align ="center">

 <div align="left">
    <a href ="personaldetails.jsp">Personal Details</a>
 </div>

  <h2>Educational Details</h2>
  <h3>Higher Degree:<%= session.getAttribute("hdegree") %></h3>
  <br><br>
  <h3>Passing Year:<%= session.getAttribute("pyear") %></h3>
   <br><br>
  <h3>College Name: <%= session.getAttribute("cname") %></h3>
   <br><br>
  <h3>Percentage: <%= session.getAttribute("percentage") %></h3>


</div>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up Page</title>
</head>
<body>
<div align="center">
  <h3>User Register Page</h3>
 
  
  <form action="registeruser.java">
       Enter Name:<input name="name" placeholder="Enter name"><br><br>
       Enter Email:<input name="email" placeholder="Enter email"><br><br>
       Enter Contact:<input name="contact" placeholder="Enter contact"><br><br>
       Enter Password:<input name="pass" placeholder="Enter password"><br><br>
       <button type="submit">Register</button>
  </form>
  <br><br>
  <a href="sign-in.jsp">Already Registerd?</a>
</div>

</body>
</html>
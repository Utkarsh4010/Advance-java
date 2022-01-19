<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/login-styling.css">
<title>User Login Page</title>
</head>
<body>
<div align="center">

<h3>Login Page</h3>
<%
    String code=request.getParameter("code");
    if(code!=null){
    	switch(code){
    	
    	case"201":
    		out.print("<h4 style='color:green'>You have been logged out successfully...</h4>");
    		break;
    		
    	case"403":
    		out.print("<h4 style='color:red'>Invalid user name or password</h4>");
    		break;
    		
    	case"401":
    		out.print("<h4 style='color:red'>Your session is expired... please login again</h4>");
    		break;
    		
    	case"500":
    		out.print("<h4 style='color:yellow; background-color:black'>Something Wrong going on please try again<h4>");
    		break;
    	}
    }
%>
  <div id="login-user-div">
    <h3>User Login</h3>
    <form action="validate-me" method="post">
    Enter User Name:<input type="text" name="uname" placeholder="Your Mail Id">
    <br><br>
    Enter Password:<input type="password" name="upass" placeholder="Your Password">
    <br><br>
    <button type="submit">Sign-in</button>
    </form>

</div>
</div>

</body>
</html>
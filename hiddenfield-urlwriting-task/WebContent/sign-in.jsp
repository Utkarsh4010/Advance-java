<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign In Page</title>
</head>
<body>
<div align="center">
<h3>User Login Page</h3>
  
    <%
       String code=request.getParameter("code");
       if(code!=null){
    	   switch(code){
    	   case"1":
    		   out.print("<h4 style='color:green'> Data Save Successfully</h4>");
    		   break;
    		   
    	   case"2":
    		   out.print("<h4 style='color:red'> Fail to save data</h4>");
    		   break;
    		   
    	   case"3":
    		   out.print("<h4 style='color:red'>Something went wrong, try after some time</h4>");
    		   break;
    	   }
       }
    %> 


<form action="authuser.java">
Enter Email:<input name="email" placeholder="Enter email"><br><br>
Enter Password:<input name="pass" placeholder="Enter password"><br><br>
<button input type="submit">Login</button>
    
</form>
<br><br>
<a href="sign-up.jsp">Not Yet Register?</a>
</div>

</body>
</html>
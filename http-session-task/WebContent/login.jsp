<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
</head>
<body>

<div align="center">
   
    <h2>Login Page</h2>

     <%
         String code = request.getParameter("code");
         if(code != null){
        	 switch(code){
        	 case "403":
        		 out.print("<h4 style='color:red'>Invalid user name or password</h4>");
         		 break;
         		 
        	 case "500":
        		 out.print("<h4 style='color:red'>Something Wrong going on please try again</h4>");
        		 break;
        				 
        	 case "201":
        		 out.print("<h4 style='color:green'>You logged out successfully</h4>");
        		 break;
        	 }
         }
     
    
     %>






   <form action="user-auth" method="post" >
       Enter Email:<input type="text" name="umail" placeholder="Enter Your Email ID">
       <br><br>
       Enter Password:<input type="text" name="upass" placeholder="Enter Your Password">
       <br><br>
       <button type="submit">Sign-in</button>
   
   </form>
   <br><br>
  <a href="register.jsp">Not Yet Registered?</a>

</div>

</body>
</html>
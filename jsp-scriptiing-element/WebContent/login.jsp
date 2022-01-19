<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>

<div align="center">
    <h3>User Login Page</h3>
    
    <%
       String msg=request.getParameter("msg");
        if(msg!=null){
        	out.print("<h4 style='color:red;'>"+msg+"</h4>");
        }
    %>
    
 <form action="validate.jsp" method="post">
     Enter User Name<input type="text" name="uname">
     <br><br>
     Enter Password<input type="password" name="pass">
     <br><br>
     <input type="submit" value="login">
 
 
 </form>


</div>

</body>
</html>
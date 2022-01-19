<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<body>

<div align="center">
<h3>Registration Form</h3>
 <%
         String code = request.getParameter("code");
         if(code != null){
        	 switch(code){
        	 case "403":
        		 out.print("<h4 style='color:red'>try again</h4>");
         		 break;
         		 
        	 case "500":
        		 out.print("<h4 style='color:red'>Something Wrong going on please try again</h4>");
        		 break;
        	 }
         }
     
     %>
   <form action="registeruser" method="post">
   
   
   
        Enter Name:<input type="text" name="uname" placeholder="Enter Your Name">
        <br><br>
        Enter Email:<input type="text" name="uemail" placeholder="Enter Your Email">
        <br><br>
        Enter Password:<input type="text" name="upass" placeholder="Enter Your Password">
        <br><br>
        Enter Contact:<input type="text" name="ucontact" placeholder="Enter Your Contact">
        <br><br>
        Enter City:<input type="text" name="ucity" placeholder="Enter Your City">
        <br><br>
        Enter Higher Degree:<input type="text" name="hdegree" placeholder="Enter your higher degree">
        <br><br>
        Passing Year:<input type="text" name="pyear" placeholder="Enter Your Passing Year">
        <br><br>
        Enter College Name:<input type="text" name="cname" placeholder="Enter Your College Name">
        <br><br>
        Enter Percentage:<input type="text" name="percentage" placeholder="Enter Your Percentage">
        <br><br>
        <button type="submit">Sign-up</button>
        <br><br>
   
   
   </form>
   <a href="login.jsp">Already Registered?</a>

</div>

</body>
</html>